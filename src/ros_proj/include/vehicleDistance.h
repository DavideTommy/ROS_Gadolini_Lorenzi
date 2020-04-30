#ifndef ROS_PROJ_DISTANCE_H
#define ROS_PROJ_DISTANCE_H

#include "ros/ros.h"
#include "ros_proj/distanceCalculator.h"
#include <cmath>



/**
 * Declaration of the method used to compute the distance
 * between the car and the obstacle
 */
class vehicleDistance{
    public:

    /**
     * This is the declaration of the method used to compute the distance between car and obs
     * @param inputRequest is the incoming requet
     * @param outputResponse is the distance computate
     * @return true if all goes great
     */
    static bool distancer(ros_proj::vehicleDistance::Request &inputRequest, ros_proj::vehicleDistance::Response &outputResponse);

};

#endif //ROS_PROJ_DISTANCE_H
