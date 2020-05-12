#include "vehicleDistance.h"
#include "ros/ros.h"
#include "ros_proj/customMsg.h"

/**
 * Euclidean distance for each axis
 * @param inputRequest is the request coming from the manager
 * @param outputResponse is the response containing the computed distance
 * @return true if the computation worked
 */
bool distancer(ros_proj::distanceCalculator::Request &inputRequest, ros_proj::distanceCalculator::Response &outputResponse) {
    outputResponse.dist = sqrt(pow((inputRequest.ec-inputRequest.eo),2)+pow((inputRequest.nc-inputRequest.no),2)+pow((inputRequest.uc-inputRequest.uo),2));
    return true;

}


int main(int argc, char **argv) {

    ros::init(argc, argv, "my_name");
    ros::NodeHandle serverNode;
    ros::ServiceServer calculator = serverNode.advertiseService("distanceCalculator", distancer);
    ros::spin();
}