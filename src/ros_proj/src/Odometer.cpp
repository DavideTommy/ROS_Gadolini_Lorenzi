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

class Odometer {

public:

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


static void lla2enu(const sensor_msgs::NavSatFix::ConstPtr &msg) {

    ROS_INFO("Letto la latitudine/longitudine/altitudine dalla bag: %f %f %f", msg->latitude, msg->longitude, msg->altitude);

};


int main(int argc, char **argv) {

    ros::init(argc, argv, "Odometer");
    ros::NodeHandle node;
    ros::Subscriber carBag = node.subscribe("/swiftnav/front/gps_pose", FREQUENCY, lla2enu);
    ros::spin();

    return 0;
}

