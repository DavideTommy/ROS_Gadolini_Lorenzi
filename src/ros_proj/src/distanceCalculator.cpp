#include "ros/ros.h"
#include "ros_proj/distanceCalculator.h"
#include <cmath>

/**
 * Euclidean distance for each axis
 * @param inputRequest is the request coming from the manager
 * @param outputResponse is the response coming from the manager
 * @return is our distance
 */
bool distancer(ros_proj::distanceCalculator::Request &inputRequest, ros_proj::distanceCalculator::Response &outputResponse) {

    outputResponse.dist = sqrt(pow((inputRequest.ec-inputRequest.eo),2)+pow((inputRequest.nc-inputRequest.no),2)+pow((inputRequest.uc-inputRequest.uo),2));
    return true;
}


int main(int argc, char** argv) {
    ros::init(argc,argv, "distanceCalculator");
    ros::NodeHandle nh;
    ros::ServiceServer autoPilot = nh.advertiseService("distCalc", distancer);
}




