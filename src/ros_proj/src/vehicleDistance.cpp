#include "vehicleDistance.h"

/**
 * Euclidean distance for each axis
 * @param inputRequest is the request coming from the manager
 * @param outputResponse is the response containing the computed distance
 * @return true if the computation worked
 */
bool vehicleDistance::distancer(ros_proj::vehicleDistance::Request &inputRequest, ros_proj::vehicleDistance::Response &outputResponse) {

    outputResponse.dist = sqrt(pow((inputRequest.ec-inputRequest.eo),2)+pow((inputRequest.nc-inputRequest.no),2)+pow((inputRequest.uc-inputRequest.uo),2));
    return true;

}



