#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include<opencv2/opencv.hpp>


cv::Scalar blue_lower=cv::Scalar(100,43,46);
cv::Scalar blue_upper=cv::Scalar(124,255,255);
cv::Scalar red_lower1=cv::Scalar(0,43,46);
cv::Scalar red_upper1=cv::Scalar(10,255,255);
cv::Scalar red_lower2=cv::Scalar(156,43,46);
cv::Scalar red_upper2=cv::Scalar(180,255,255);

// 计算内部所有白色部分占全部的比率
double Rate(cv::Mat &count)
{
	int number = 0;
	int allpixel = 0;
	for (int row = 0; row < count.rows; row++)
	{
		for (int col = 0; col < count.cols; col++)
		{
			if (count.at<uchar>(row, col) == 255)
			{
				number++;
			}
			allpixel++;
		}
	}
	//cout << (double)number / allpixel << endl;
	return (double)number / allpixel;
}

cv::Mat transformCorner(cv::Mat src, cv::RotatedRect rect)
{
	// 获得旋转中心
	cv::Point center = rect.center;
	// 获得左上角和右下角的角点，而且要保证不超出图片范围，用于抠图
	cv::Point TopLeft = cv::Point(cvRound(center.x), cvRound(center.y)) - cv::Point(rect.size.height / 2, rect.size.width / 2);  //旋转后的目标位置
	TopLeft.x = TopLeft.x > src.cols ? src.cols : TopLeft.x;
	TopLeft.x = TopLeft.x < 0 ? 0 : TopLeft.x;
	TopLeft.y = TopLeft.y > src.rows ? src.rows : TopLeft.y;
	TopLeft.y = TopLeft.y < 0 ? 0 : TopLeft.y;

	int after_width, after_height;
	if (TopLeft.x + rect.size.width > src.cols) {
		after_width = src.cols - TopLeft.x - 1;
	}
	else {
		after_width = rect.size.width - 1;
	}
	if (TopLeft.y + rect.size.height > src.rows) {
		after_height = src.rows - TopLeft.y - 1;
	}
	else {
		after_height = rect.size.height - 1;
	}
	// 获得二维码的位置
	cv::Rect RoiRect = cv::Rect(TopLeft.x, TopLeft.y, after_width, after_height);

	//	dst是被旋转的图片 roi为输出图片 mask为掩模
	double angle = rect.angle;
	cv::Mat mask, roi, dst;
	cv::Mat image;
	// 建立中介图像辅助处理图像

	std::vector<cv::Point> contour;
	// 获得矩形的四个点
	cv::Point2f points[4];
	rect.points(points);
	for (int i = 0; i < 4; i++)
		contour.push_back(points[i]);

	std::vector<std::vector<cv::Point>> contours;
	contours.push_back(contour);
	// 再中介图像中画出轮廓
	cv::drawContours(mask, contours, 0, cv::Scalar(255, 255, 255), -1);
	// 通过mask掩膜将src中特定位置的像素拷贝到dst中。
	src.copyTo(dst, mask);
	// 旋转
	cv::Mat M = cv::getRotationMatrix2D(center, angle, 1);
	cv::warpAffine(dst, image, M, src.size());
	// 截图
	roi = image(RoiRect);
    // imshow("",roi);

	return roi;
}

// 用于判断是否属于角上的正方形
bool isCorner(cv::Mat &image)
{
	// 定义mask
	cv::Mat imgCopy, dstCopy;
	cv::Mat dstGray;
	imgCopy = image.clone();
	// 转化为灰度图像
	cv::cvtColor(image, dstGray, cv::COLOR_BGR2GRAY);
	// 进行二值化

	cv::threshold(dstGray, dstGray, 0, 255, cv::THRESH_BINARY | cv::THRESH_OTSU);
	dstCopy = dstGray.clone();  //备份

	// 找到轮廓与传递关系
	std::vector<std::vector<cv::Point>> contours;
	std::vector<cv::Vec4i> hierarchy;
	cv::findContours(dstCopy, contours, hierarchy, cv::RETR_TREE, cv::CHAIN_APPROX_SIMPLE);


	for (int i = 0; i < contours.size(); i++)
	{
		//cout << i << endl;
		if (hierarchy[i][2] == -1 && hierarchy[i][3])
		{
			cv::Rect rect = cv::boundingRect(cv::Mat(contours[i]));
			cv::rectangle(image, rect, cv::Scalar(0, 0, 255), 2);
			// 最里面的矩形与最外面的矩形的对比
			if (rect.width < imgCopy.cols * 2 / 7)      //2/7是为了防止一些微小的仿射
				continue;
			if (rect.height < imgCopy.rows * 2 / 7)      //2/7是为了防止一些微小的仿射
				continue;
			// 判断其中黑色与白色的部分的比例
			if (Rate(dstGray) > 0.40)
			{
				return true;
			}
		}
	}
	return  false;
}

// 该部分用于检测是否是角点，
bool IsQrPoint(std::vector<cv::Point>& contour, cv::Mat& img) {
	double area = cv::contourArea(contour);
	// 角点不可以太小
	if (area < 300 || area>10000)
		return 0;
	cv::RotatedRect rect = cv::minAreaRect(cv::Mat(contour));
	double w = rect.size.width;
	double h = rect.size.height;
	double rate = std::min(w, h) / std::max(w, h);
	if (rate > 0.7)
	{
		// 返回旋转后的图片，用于把“回”摆正，便于处理
		cv::Mat image = transformCorner(img, rect); 
		if (isCorner(image))
		{
			return 1;
		}
	}
	return 0;
}


void search_treasure(cv::Mat & frame)
{
    cv::Mat src,gray,thred;
    src=frame.clone();
    cv::cvtColor(src,gray,cv::COLOR_BGR2GRAY);
    cv::blur(gray, gray, cv::Size(3, 3));
    // cv::imshow("blur",gray);
    // cv::Mat candy;
    // cv::Canny(gray,candy,150,100,3);
    // cv::imshow("candy",candy);
    //大津大法好
    cv::threshold(gray,thred,0,255,cv::THRESH_BINARY | cv::THRESH_OTSU);
    // cv::imshow("thred",thred);
    //轮廓检测

    std::vector<std::vector<cv::Point>> contours;
    std::vector<cv::Vec4i> hierarchy;
    std::vector<cv::Point2f> centers;
    cv::findContours(thred,contours,hierarchy,cv::RETR_LIST,cv::CHAIN_APPROX_NONE);
    
    // 对每个轮廓进行多边形拟合
    for (size_t i = 0; i < contours.size(); i++)
    {
        double area=cv::contourArea(contours[i]);
        if(200<area && area<400){
            cv::RotatedRect rect=cv::minAreaRect(contours[i]);
            double w = rect.size.width;
            double h = rect.size.height;
            double rate = cv::min(w, h) / cv::max(w, h);
            if(rate>0.85){
                // 设置近似精度为轮廓周长的1%
                double epsilon = 0.0001 * arcLength(contours[i], true);
                // 进行多边形拟合
                std::vector<cv::Point> approx;
                cv::approxPolyDP(contours[i], approx, epsilon, true);
            
                // 如果拟合结果的顶点数大于6，表示是一个圆形
                if (approx.size() > 20)
                {
                    
                    // 在原图上绘制圆形
                    cv::Point2f center;
                    float radius;
                    cv::minEnclosingCircle(contours[i], center, radius);

                    centers.push_back(cv::Point2f(center.x/500,(500-center.y)/500));
                    cv::circle(frame, center, radius, cv::Scalar(0, 0, 255), 2);
                    cv::putText(frame,std::to_string(approx.size()),center,1,1,cv::Scalar(0,255,0));
                    cv::putText(frame,std::to_string(cvRound(area)),cv::Point(center.x,center.y+10),1,1,cv::Scalar(255,255,0));
                    cv::drawContours(frame,contours,i,cv::Scalar(0,255,0));
                }


            }
            
        }
        
    }

    cv::imshow("绘出宝藏点",frame);
    if(centers.size()==8){
        std::cout<<"找到v宝藏点：\n";
        for(int i=0;i<centers.size();i++){
            std::cout<<centers[i].x<<","<<centers[i].y<<";\n";
        }
    }

}

//检测红蓝色块
void red_and_blue(cv::Mat& frame)
{
    cv::Mat img_src=frame.clone();

    // cv::imshow("src",img_src);
    cv::Mat hsv,mask_red,mask_blue,mask_red1,mask_red2;
    cv::Mat kernel_close=cv::getStructuringElement(cv::MORPH_RECT,cv::Size(5,5));
    cv::Mat blue_open,red_close,blue_and_red;
    cv::cvtColor(img_src,hsv,cv::COLOR_BGR2HSV);
    //蓝色
    cv::inRange(hsv,blue_lower,blue_upper,mask_blue);
    //闭运算
    cv::morphologyEx(mask_blue,blue_open,cv::MORPH_CLOSE,kernel_close);
    //红色
    cv::inRange(hsv,red_lower1,red_upper1,mask_red1);
    cv::inRange(hsv,red_lower2,red_upper2,mask_red2);
    cv::bitwise_or(mask_red1,mask_red2,mask_red);
    cv::morphologyEx(mask_blue,blue_open,cv::MORPH_OPEN,kernel_close,cv::Point(-1,-1),2);
    //闭运算
    cv::morphologyEx(mask_red,red_close,cv::MORPH_RECT,kernel_close);

    //红蓝图合并
    cv::bitwise_or(blue_open,red_close,blue_and_red);

    // cv::imshow("blue_open",blue_open);
    // cv::imshow("red_close",red_close);

    //寻找两个色块
    bool flag_blue=false,flag_red=false,flag=false;
    cv::Rect blue_rect,red_rect;
    int rotate_angle;
    cv::Rect roirect;
    
    std::vector<std::vector<cv::Point>> contours_red;
    std::vector<cv::Vec4i> hierarchy_red;

    std::vector<std::vector<cv::Point>> contours_blue;
    std::vector<cv::Vec4i> hierarchy_blue;

    cv::findContours(blue_open,contours_blue,hierarchy_blue,cv::RETR_EXTERNAL, cv::CHAIN_APPROX_SIMPLE);
    for(int i=0;i<contours_blue.size();i++){
        double area=cv::contourArea(contours_blue[i]);
        // std::cout<<"蓝色面积："<<area<<"\n";
        if(area>800){
            cv::RotatedRect rect=cv::minAreaRect(contours_blue[i]);
            double w = rect.size.width;
            double h = rect.size.height;
            double rate = cv::min(w, h) / cv::max(w, h);
            if(rate>0.8){
                flag_blue=true;
                blue_rect=cv::boundingRect(cv::Mat(contours_blue[i]));
                break;

            }
        }
    }
    cv::findContours(red_close,contours_red,hierarchy_red,cv::RETR_EXTERNAL, cv::CHAIN_APPROX_SIMPLE);
    for(int i=0;i<contours_red.size();i++){
        double area=cv::contourArea(contours_red[i]);
        // std::cout<<"红色面积："<<area<<"\n";
        if(area>100){
            cv::RotatedRect rect=cv::minAreaRect(contours_red[i]);
            double w = rect.size.width;
            double h = rect.size.height;
            double rate = std::min(w, h) / std::max(w, h);
            if(rate>0.8){
                flag_red=true;
                red_rect=cv::boundingRect(cv::Mat(contours_red[i]));
                break;

            }
        }
    }
    if(flag_blue && flag_red){
        flag=true;
    }
    
    
    if(!flag){
        return;
    }
    //判断红蓝色方块的相对位置
    //若红色在上方
    if(red_rect.y <blue_rect.y){
        //红色在右上角
        if(red_rect.x > blue_rect.x){
            
            rotate_angle=-360;//cv::rotate()中表示旋转360度
            int width=red_rect.tl().x - blue_rect.br().x;
            int hight=blue_rect.br().y - red_rect.tl().y;
            roirect=cv::Rect(blue_rect.br().x-5,red_rect.tl().y-5,width+5,hight+5);
        }else{
            //红色在左上角，顺时针旋转90度
            rotate_angle=-90;
            int width=blue_rect.br().x - red_rect.tl().x;
            int hight=blue_rect.tl().y - red_rect.br().y;
            roirect=cv::Rect(red_rect.tl().x-5, red_rect.tl().y+red_rect.height-5, width+5,hight+5);
        }
    /*若蓝色在上方*/
    }else if(red_rect.y > blue_rect.y){
        //蓝色在右上角
        if(blue_rect.x > red_rect.x){
            rotate_angle=-180;//可以不旋转
            int width=blue_rect.tl().x - red_rect.br().x;
            int hight=red_rect.br().y - blue_rect.tl().y;
            roirect=cv::Rect(red_rect.br().x-5,blue_rect.tl().y-5, width+5,hight+5);
        }else{
            //蓝色在左上角
            rotate_angle=-270;
            int width=red_rect.br().x -blue_rect.tl().x;
            int hight=red_rect.tl().y - blue_rect.br().y;
            roirect=cv::Rect(blue_rect.tl().x-5, blue_rect.tl().y+blue_rect.height-5,width+5,hight+5);
        }
    }
    //截取图片，resize大小，旋转
    cv::Mat roiimg;
    roiimg=img_src(roirect);
    // cv::imshow("roiimg",roiimg);
    cv::resize(roiimg,roiimg,cv::Size(500,500));

    //旋转
    cv::Mat M = cv::getRotationMatrix2D(cv::Point2f(250,250), rotate_angle, 1);
    cv::warpAffine(roiimg, roiimg, M, cv::Size(500,500)); // 应用仿射变换

    cv::imshow("roi并旋转",roiimg);
    search_treasure(roiimg);
    

}

bool compareX(const cv::Point& p1, const cv::Point& p2) {

    return p1.x < p2.x;  
}
bool compareY(const cv::Point& p1,const cv::Point&p2)
{
    return p1.y<p2.y;
}


void process(cv::Mat& frame)
{
    cv::Mat src;
    src=frame;
    // cv::imshow("原图",src);

	cv::Mat srcCopy = src.clone();

	//canvas为画布 将找到的定位特征画出来
	cv::Mat canvas;
	canvas = cv::Mat::zeros(src.size(), CV_8UC3);

	cv::Mat srcGray;

	//center_all获取特性中心个
	std::vector<cv::Point> center_all;

	// 转化为灰度图
	cv::cvtColor(src, srcGray, cv::COLOR_BGR2GRAY);
    // cv::imshow("srcGray",srcGray);
        
	// 3X3模糊
	cv::blur(srcGray, srcGray, cv::Size(3, 3));

	// 计算直方图
	cv::convertScaleAbs(src, src);
    // imshow("convertScaleAbs src",src);
    cv::equalizeHist(srcGray, srcGray);
	// imshow("equalizeHist srcGray", srcGray);
		
	
	// 设置阈值根据实际情况 如视图中已找不到特征 可适量调整
	cv::threshold(srcGray, srcGray, 0, 255, cv::THRESH_BINARY | cv::THRESH_OTSU);
    cv::morphologyEx(srcGray,srcGray,cv::MORPH_ERODE,cv::getStructuringElement(cv::MORPH_RECT,cv::Size(3,3)),cv::Point(-1,-1),1);
    // cv::imshow("thread", srcGray);
		
	/*contours是第一次寻找轮廓*/
	
	std::vector<std::vector<cv::Point>> contours;

	//	用于轮廓检测
	std::vector<cv::Vec4i> hierarchy;
	cv::findContours(srcGray, contours, hierarchy, cv::RETR_TREE, cv::CHAIN_APPROX_SIMPLE);

	// 小方块的数量
	int numOfRec = 0;

	// 检测方块
	int ic = 0;
	int parentIdx = -1;
	for (int i = 0; i < contours.size(); i++)
	{
        // drawContours(src,contours,-1,Scalar(0,255,0),2,8);
		if (hierarchy[i][2] != -1 && ic == 0)
		{
			parentIdx = i;
			ic++;
		}
		else if (hierarchy[i][2] != -1)
		{
			ic++;
		}
		else if (hierarchy[i][2] == -1)
		{
			parentIdx = -1;
			ic = 0;
		}
		if (ic >= 2 && ic <= 3)
		{
               
            // printf("面积：%f\n",contourArea(contours[parentIdx]));
			if (IsQrPoint(contours[parentIdx], src)) {
				cv::RotatedRect rect = cv::minAreaRect(cv::Mat(contours[parentIdx]));

				// 画图部分
				cv::Point2f points[4];
				rect.points(points);
				for (int j = 0; j < 4; j++) {
					cv::line(src, points[j], points[(j + 1) % 4], cv::Scalar(0, 255, 0), 2);
				}
                cv::drawContours(src,contours,parentIdx,cv::Scalar(0,255,0),1,8);
				cv::drawContours(canvas, contours, parentIdx, cv::Scalar(0, 0, 255), -1);

				// 如果满足条件则存入
				center_all.push_back(rect.center);
				numOfRec++;
			}
			ic = 0;
			parentIdx = -1;
		}
	}
		// 连接四个正方形的部分
        // cout<<center_all.size()<<endl;
	for (int i = 0; i < center_all.size(); i++)
	{
		cv::line(canvas, center_all[i], center_all[(i + 1) % center_all.size()], cv::Scalar(255, 0, 0), 3);
	}
    cv::Mat dst(600, 600, CV_8UC3, cv::Scalar(255, 255, 255));
    cv::putText(dst,"NO TARGET!",cv::Point(10,350),cv::FONT_HERSHEY_SIMPLEX,3,cv::Scalar(0,0,255),5);
	if(center_all.size()==4){
        //按照x大小排序
        std::sort(center_all.begin(),center_all.end(),compareX);
        //前两个和后两个点分别按照y排序
        std::sort(center_all.begin(),center_all.begin()+2,compareY);
        std::sort(center_all.end()-2,center_all.end(),compareY);

        //透视变换
            
        std::vector<cv::Point> dst_corners(4);
        dst_corners[0] = cv::Point(0, 0);  //左上
        dst_corners[1] = cv::Point(0, 600); //左下
        dst_corners[2] = cv::Point(600, 0); //右上
        dst_corners[3] = cv::Point(600, 600); //右下


        cv::Mat warpmatrx=cv::findHomography(center_all,dst_corners);
        cv::warpPerspective(srcCopy, dst, warpmatrx, cv::Size(600, 600));
        //将变换的图识别红蓝色块
        // red_and_blue(dst);
        cv::imshow("透视变换后",dst);
        //识别红蓝色块，矫正方向，识别，宝藏点
        red_and_blue(dst);
            
    }else{
        cv::imshow("透视变换后",dst);
    }
    // cv::imshow("src_draw",src);
    cv::Mat mat1,mat2,mat3;
    cv::resize(src,src,cv::Size(0,0),0.3,0.3);
    cv::resize(srcGray,srcGray,cv::Size(0,0),0.3,0.3);
    cv::resize(canvas,canvas,cv::Size(0,0),0.3,0.3);
    cv::hconcat(src,srcGray,mat1);
    cv::hconcat(mat1,canvas,mat2);
    
	cv::imshow("拼接图", mat2);
	
}


void imageCallback(const sensor_msgs::ImageConstPtr &msg)
{
    try
    {
        cv::Mat frame=cv_bridge::toCvShare(msg,"bgr8")->image;
        process(frame);
        // cv::imshow("view",cv_bridge::toCvShare(msg,"bgr8")->image);
        
        
            
    }
    catch(const std::exception& e)
    {
        ROS_ERROR("Could not convert from '%s' to 'bgr8'.", msg->encoding.c_str());
    }
    
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "img_sub");
  ros::NodeHandle nh;
  cv::namedWindow("view");
  cv::startWindowThread();
  image_transport::ImageTransport it(nh);
  image_transport::Subscriber sub = it.subscribe("camera/image", 1, imageCallback);
  ros::spin();
  cv::destroyAllWindows();
  return 0;
}
