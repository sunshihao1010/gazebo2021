#include <ros/ros.h>  
#include "std_msgs/String.h"
#include "std_msgs/Float64.h"  
#include "std_msgs/Float64MultiArray.h"
#include <boost/thread.hpp>
#include <sstream>

class SubscribeAndPublish  
{  
public:  
  SubscribeAndPublish()  
  {  
    count = 0;
    //Topic you want to publish  
    pub_ = n_.advertise<std_msgs::Float64MultiArray>("/swivel/cmd_gimbal_angle", 1000);  

    //Topic1 you want to subscribe  
    sub_ = n_.subscribe("/swivel/swiveljoint1_position_controller/command", 10, &SubscribeAndPublish::callback1, this); 
    //Topic2 you want to subscribe  
    sub2_ = n_.subscribe("/swivel/swiveljoint2_position_controller/command", 10, &SubscribeAndPublish::callback2, this);  
  }  

  void callback1(const std_msgs::String::ConstPtr& msg1)  
  {  
    ROS_INFO("I heard: [%s]", msg1->data.c_str()); 
    
  }  
  void callback2(const std_msgs::String::ConstPtr& msg2)
{
  ROS_INFO("I heard: [%s]", msg2->data.c_str());
  ros::Rate loop_rate(0.5);//block chatterCallback2() 0.5Hz
  loop_rate.sleep();
}

private:  
  ros::NodeHandle n_;   
  ros::Publisher pub_;  
  ros::Subscriber sub_;
  ros::Subscriber sub2_; 
  std_msgs::String output;
  int count; 

};//End of class SubscribeAndPublish  

int main(int argc, char **argv)  
{  
  //Initiate ROS  
  ros::init(argc, argv, "subscribe_and_publish");  

  //Create an object of class SubscribeAndPublish that will take care of everything  
  SubscribeAndPublish test;  
  //ros::spin();
  ros::MultiThreadedSpinner s(2);  
  ros::spin(s);  

  return 0;  
}  


