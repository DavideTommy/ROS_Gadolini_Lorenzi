#ifndef ROS_PROJ_DISTANCE_H
#define ROS_PROJ_DISTANCE_H

#include "ros/ros.h"
#include "ros_proj/distanceCalculator.h"
#include <cmath>



class distanceCalculator{
   // distanceCalculator();

    bool distancer(ros_proj::vehicleDistance::Request &inputRequest, ros_proj::vehicleDistance::Response &outputResponse);

};

#endif //ROS_PROJ_DISTANCE_H
