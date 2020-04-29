#include "ros/ros.h"
#include "ros_proj/distanceCalculator.h"
#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>

ros_proj::vehicleDistance server;


void keepAlive() {


    ros::NodeHandle nh;
    ros::ServiceClient distanceClient = nh.serviceClient<ros_proj::vehicleDistance>("distanceClient");


};


class master {

public:


    //Variabili di classe/oggetto qui


    master() {


        keepAlive();


    }


};



