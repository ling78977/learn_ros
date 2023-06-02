#include<ros/ros.h>
#include<image_transport/image_transport.h>
#include<opencv2/highgui.hpp>
#include<opencv2/calib3d.hpp>
#include<cv_bridge/cv_bridge.h>
#include<iostream>




int main(int argc,char** argv)
{
    ros::init(argc,argv,"img_pub");
    ros::NodeHandle nh;
    image_transport::ImageTransport it(nh);
    image_transport::Publisher pub=it.advertise("camera/image",1);
    cv::VideoCapture cap;
    cv::Mat frame;
    
    cap.set(cv::CAP_PROP_FRAME_WIDTH, 640);
    cap.set(cv::CAP_PROP_FRAME_HEIGHT, 480);

    int deviceID=1;
    if(argc>1){
        deviceID=argv[1][0]-'0';
    }
    int apiID=cv::CAP_ANY;
    cap.open(0);
    if(!cap.isOpened()){
        ROS_ERROR("ERROR! Unable to camera!");
        return -1;

    }
    double fps=cap.get(cv::CAP_PROP_FPS);

    ros::Rate loop_rate(100);
    while (nh.ok())
    {
        cap.read(frame);
        if(!frame.empty()){
            cv::putText(frame,std::to_string(fps),cv::Point(0,50),5,4,cv::Scalar(255,0,255),5,8);
           
            sensor_msgs::ImagePtr msg=cv_bridge::CvImage(std_msgs::Header(),"bgr8",frame).toImageMsg();
            pub.publish(msg);
            
            
        }
        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0; 
}


