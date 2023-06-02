#include <stdio.h>
#include <string.h>
#include <ros/ros.h>

#include <ros/package.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/Twist.h>
#include <serial/serial.h>		//ros串口
#include <std_msgs/String.h>
#include <std_msgs/Empty.h>
#include <fstream>
#include <iostream>


serial::Serial ser;			//定义一个串口对象
ros::Subscriber serial_sub;	

typedef union{				//定义一个联合体，用于float数据与16进制的转换
unsigned char cvalue[4];
float fvalue;
}float_union;

static uint8_t s_buffer[10];

void serial_sub_callback(const geometry_msgs::Twist::ConstPtr& msg)
{
  ROS_INFO(" velocity command[%0.2f m/s, %0.2f rad/s]", msg->linear.x, msg->angular.z);
	float_union linear_x,angular_z;
	memset(s_buffer,0,sizeof(s_buffer));		//内存空间初始化为0
  linear_x.fvalue = msg->linear.x;
  angular_z.fvalue = msg->angular.z;
	//数据打包
	s_buffer[0] = 0xff;		//数据的帧头
	s_buffer[1] = linear_x.cvalue[0];
	s_buffer[2] = linear_x.cvalue[1];
	s_buffer[3] = linear_x.cvalue[2];
	s_buffer[4] = linear_x.cvalue[3];

  s_buffer[5] = angular_z.cvalue[0];
	s_buffer[6] = angular_z.cvalue[1];
	s_buffer[7] = angular_z.cvalue[2];
	s_buffer[8] = angular_z.cvalue[3];

	//CRC		校验和从有效数据开始取异或即可
	s_buffer[9] =0xfe;

  for(int i=0;i<10;i++)
  {
    printf("s_buffer[%d]:%x\n",i,s_buffer[i]);
  }
	ser.write(s_buffer,10);
	ROS_INFO("data send successful");
}




int main(int argc, char **argv)
{
  // 初始化ros节点，命名为twist_subscriber
  ros::init(argc, argv, "serial");
  // 设置串口参数，包括串口名，波特率，超时时间等
  std::string port = "/dev/ttyUSB0";
  unsigned long baud = 115200;
  serial::Timeout timeout = serial::Timeout::simpleTimeout(1000);
    // 打开串口
  try
  {
    ser.setPort(port);
    ser.setBaudrate(baud);
    ser.setTimeout(timeout);
    ser.open();
    ROS_INFO("Serial port opened successfully.");
  }
  catch (serial::IOException& e)
  {
    ROS_ERROR("Unable to open serial port.");
    return -1;
  }

  // 创建节点句柄
  ros::NodeHandle nh;

  // 创建一个订阅者对象，订阅/twist话题，接收geometry_msgs::Twist消息，回调函数为twistCallback，队列长度为10
  serial_sub = nh.subscribe("/cmd_vel", 1000, serial_sub_callback);

  // 进入循环，直到节点被关闭
  while (ros::ok())
  {
    // 处理回调函数
    ros::spinOnce();
  }

  return 0;
}