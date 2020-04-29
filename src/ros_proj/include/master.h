
#ifndef ROS_PROJ_MASTER_H
#define ROS_PROJ_MASTER_H


#include "ros/ros.h"
#include "ros_proj/distanceCalculator.h"
#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>
#include "ros_proj/customMsg.h"
#include <message_filters/sync_policies/approximate_time.h>
#include <message_filters/subscriber.h>
#include <message_filters/synchronizer.h>

/**
 * Master Class
 * Used to manage the interactions between topics containing ENU
 * coordinates and the service used to compute the distance
 */
class master {

public:


    //Variabili di classe/oggetto qui


    master();

    /**
     * KeepAlive Method
     * Used to keep calls to service alive until all data have been processed
     */
    void keepAlive();
    static void callBack(const ros_proj::customMsg::ConstPtr &msg1, const ros_proj::customMsg::ConstPtr &msg2);
};


#endif //ROS_PROJ_MASTER_H
