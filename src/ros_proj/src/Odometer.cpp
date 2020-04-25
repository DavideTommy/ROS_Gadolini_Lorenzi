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
     * Variabili globali
     */


    //Publisher e subscriber dei messaggi gia codificati in ENU

    ros::Subscriber obsBag;


    /**
     * Costruttore Classe odometro
     */

    Odometer() {



    };



    //-------------Funzioni------------------


    /**
         * Conversion to ENU
         * @param msg gps message
         */


};
static void lla2enu(const sensor_msgs::NavSatFix::ConstPtr &msg)  {

    ROS_INFO("Letto la latitudine/longitudine dalla bag: %f %f", msg->latitude, msg->longitude);

    return;
};

    int main(int argc, char** argv){

        ros::init(argc, argv, "Odometer");

        ros::NodeHandle node;

        ros::Subscriber carBag = node.subscribe("/swiftnav/front/gps_pose", 50, lla2enu);

        ros::spin();

        return 0;



}



































