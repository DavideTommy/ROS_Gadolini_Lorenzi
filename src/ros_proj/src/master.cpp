#include "master.h"
#include "ros/ros.h"
#include "ros_proj/customMsg.h"
#include <message_filters/sync_policies/approximate_time.h>
#include <message_filters/subscriber.h>
#include <message_filters/synchronizer.h>



ros_proj::vehicleDistance server;

/**
 * KeepAlive implementation
 * @bug queue_size in message_filters has value 1, replace if needed
 * @bug queue size in sync(filterPolicy) has value 10, replace if needed
 * @attention topic field is hardcoded, check odometry.launch
 * This method is used to keep alive the node on which are done request to service
 * and listen to the topic
 */
void master::keepAlive() {
    ROS_INFO("Keep Alive master");
    ros::NodeHandle nh;
    ros::ServiceClient distanceClient = nh.serviceClient<ros_proj::vehicleDistance>("distanceClient");
    message_filters::Subscriber<ros_proj::customMsg> carSub(nh,"car",1);
    message_filters::Subscriber<ros_proj::customMsg> obsSub(nh,"obs",1);

    typedef message_filters::sync_policies::ApproximateTime<ros_proj::customMsg, ros_proj::customMsg> filterPolicy;
    message_filters::Synchronizer<filterPolicy> sync(filterPolicy(10), carSub, obsSub);

    sync.registerCallback(boost::bind(master::callBack,_1,_2));

    ros::spin();

};

/**
 * Manages the interaction between Car and Obs nodes and the vehicleDistance service
 */
master::master() {
    ROS_INFO("costruttore master");
    keepAlive();
}

/**
 * Verifies message validity
 * @param msg is the message to evaluate
 * @return true if condition are satisfied
 */
bool verifier(const ros_proj::customMsg::ConstPtr &msg) {
    return msg != NULL || (msg->E != 0 && msg->N != 0 && msg->Up != 0);
}

/**
 * CallBack function
 * Used to filter messages
 * @bug if not working, rename to callback
 * @param msg1 Message coming from car
 * @param msg2 Message coming from obs
 */
void master::callBack(const ros_proj::customMsg::ConstPtr &msg1, const ros_proj::customMsg::ConstPtr &msg2) {
    float msg1e = msg1->E;
    float msg1n = msg1->N;
    float msg1u = msg1->Up;
    float msg2e = msg2->E;
    float msg2n = msg2->N;
    float msg2u = msg2->Up;

    /**
     * @bug to improve beauty
     * try to avoid collision between messages
     */
    bool validMsg1 = false;
    bool validMsg2 = false;

    validMsg1 = verifier(msg1);
    validMsg2 = verifier(msg2);

    if (validMsg1 && validMsg2) {
        //chiamare service
    }



}




