
#ifndef ROS_PROJ_MASTER_H
#define ROS_PROJ_MASTER_H


#include "ros/ros.h"
#include "ros_proj/distanceCalculator.h"
#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>


class master {

public:


    //Variabili di classe/oggetto qui


    master();

    void keepAlive();
};


#endif //ROS_PROJ_MASTER_H
