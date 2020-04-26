#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <dynamic_reconfigure/server.h>
#include <iostream>
#include <nav_msgs/Odometry.h>
#include <sensor_msgs/NavSatFix.h>
#include <tf/transform_broadcaster.h>


#define FREQUENCY 50

using namespace std;
using namespace message_filters;


static inline void lla2enu(const sensor_msgs::NavSatFix::ConstPtr &msg) {
    ROS_INFO("Input position: [%f,%f, %f]", msg->latitude, msg->longitude,msg->altitude);
    // fixed values

    double a = 6378137;
    double b = 6356752.3142;
    double f = (a - b) / a;
    double e_sq = f * (2-f);
    float deg_to_rad = 0.0174533;

    // input data from msg
    float latitude = msg->latitude;
    float longitude = msg->longitude;
    float h = msg->altitude;

    // fixed position
    float latitude_init = 45.6311926152;
    float longitude_init = 9.2947495255;
    float h0 = 231.506675163;


    //lla to ecef
    float lamb = deg_to_rad*(latitude);
    float phi = deg_to_rad*(longitude);
    float s = sin(lamb);
    float N = a / sqrt(1 - e_sq * s * s);

    float sin_lambda = sin(lamb);
    float  cos_lambda = cos(lamb);
    float  sin_phi = sin(phi);
    float  cos_phi = cos(phi);

    float  x = (h + N) * cos_lambda * cos_phi;
    float  y = (h + N) * cos_lambda * sin_phi;
    float  z = float(h + (1 - e_sq) * N) * sin_lambda;

    ROS_INFO("ECEF position: [%f,%f, %f]", x, y,z);


    // ecef to enu

    lamb = deg_to_rad*(latitude_init);
    phi = deg_to_rad*(longitude_init);
    s = sin(lamb);
    N =  a / sqrt(1 - e_sq * s * s);

    sin_lambda = sin(lamb);
    cos_lambda = cos(lamb);
    sin_phi = sin(phi);
    cos_phi = cos(phi);

    float  x0 = (h0 + N) * cos_lambda * cos_phi;
    float  y0 = (h0 + N) * cos_lambda * sin_phi;
    float  z0 = float(h0 + (1 - e_sq) * N) * sin_lambda;

    float xd = x - x0;
    float  yd = y - y0;
    float  zd = z - z0;

    float  xEast = -sin_phi * xd + cos_phi * yd;
    float  yNorth = -cos_phi * sin_lambda * xd - sin_lambda * sin_phi * yd + cos_lambda * zd;
    float  zUp = cos_lambda * cos_phi * xd + cos_lambda * sin_phi * yd + sin_lambda * zd;

    ROS_INFO("ENU position: [%f,%f, %f]", xEast, yNorth,zUp);

};

class Odometer {

public:
    ros::NodeHandle nh;
    ros::Subscriber carBag = nh.subscribe("/swiftnav/front/gps_pose", FREQUENCY, lla2enu);
    ros::Subscriber obsBag = nh.subscribe("/swiftnav/obs/gps_pose",FREQUENCY, lla2enu);


    /**
 * Costruttore Classe odometro
 */

    Odometer() {


        //TODO

    };
};


/**
     * Conversion to ENU
     * @param msg gps message
     */

int main(int argc, char **argv) {

    ros::init(argc, argv, "odometer");
    Odometer odometer;

    ros::spin();

    return 0;
}
