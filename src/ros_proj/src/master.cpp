#include "master.h"


ros_proj::vehicleDistance server;


void master::keepAlive() {
    ROS_INFO("Keep Alive master");
    ros::NodeHandle nh;
    ros::ServiceClient distanceClient = nh.serviceClient<ros_proj::vehicleDistance>("distanceClient");
    ros::spin();

};

master::master() {
    ROS_INFO("costruttore master");
    keepAlive();
}






