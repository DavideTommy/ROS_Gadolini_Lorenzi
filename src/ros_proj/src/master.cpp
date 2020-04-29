#include "master.h"


ros_proj::vehicleDistance server;


void master::keepAlive() {

    ros::NodeHandle nh;
    ros::ServiceClient distanceClient = nh.serviceClient<ros_proj::vehicleDistance>("distanceClient");
    ros::spin();

};

master::master() {
    keepAlive();
}






