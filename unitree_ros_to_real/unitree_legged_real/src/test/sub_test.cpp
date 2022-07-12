#include <ros/ros.h>
#include <geometry_msgs/Twist.h>


void cmd_callback(const geometry_msgs::Twist& msg_cmd)
{
    std::cout << msg_cmd.linear.x << std::endl;
    std::cout << "unko" << std::endl;
}

int main(int argc, char** argv)
{
    std::cout << "e" << std::endl;
    ros::init(argc, argv, "subscriber_test_cpp");
    ros::NodeHandle nh;
    ros::Rate loop_rate(10);
    ros::Subscriber cmd_sub = nh.subscribe("cmd_vel", 10, cmd_callback);

    //ros::spin();
   while (ros::ok()){

    std::cout << "a" << std::endl;
    std::cout << "c" << std::endl;
    ros::spinOnce();
    std::cout << "d" << std::endl;
     loop_rate.sleep();
    }
  
    std::cout << "f" << std::endl;
    return 0;
}