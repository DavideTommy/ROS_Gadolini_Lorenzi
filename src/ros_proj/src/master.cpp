#include "ros/ros.h"
#include "ros_proj/customMsg.h"
#include <message_filters/sync_policies/approximate_time.h>
#include <message_filters/subscriber.h>
#include <message_filters/synchronizer.h>
#include "vehicleDistance.h"
#include <nav_msgs/Odometry.h>


using namespace message_filters;


ros::ServiceClient distanceClient;


/**
 * Verifies message validity
 * @param msg is the message to evaluate
 * @return true if condition are satisfied
 */
bool verifier(const nav_msgs::Odometry::ConstPtr &msg) {

    ROS_INFO("Debug ENU pose: %f %f %f ", msg->pose.pose.position.x, msg->pose.pose.position.y,
             msg->pose.pose.position.z);

    return msg != NULL &&
           (msg->pose.pose.position.x != 0 && msg->pose.pose.position.y != 0 && msg->pose.pose.position.z != 0);
}

/**
 * CallBack function
 * Used to filter messages
 * @bug if not working, rename to callback
 * @param msg1 Message coming from car
 * @param msg2 Message coming from obs
 */
void callBack(const nav_msgs::Odometry::ConstPtr &msg1, const nav_msgs::Odometry::ConstPtr &msg2) {

    ros_proj::vehicleDistance server;

    float msg1e = msg1->pose.pose.position.x;
    float msg1n = msg1->pose.pose.position.y;
    float msg1u = msg1->pose.pose.position.z;
    float msg2e = msg2->pose.pose.position.x;
    float msg2n = msg2->pose.pose.position.y;
    float msg2u = msg2->pose.pose.position.z;

    /**
     * @bug to improve beauty
     * try to avoid collision between messages
     */
    bool validMsg1 = false;
    bool validMsg2 = false;

    validMsg1 = verifier(msg1);
    validMsg2 = verifier(msg2);

    if (validMsg1 && validMsg2) {
        server.request.ec = msg1e;
        server.request.nc = msg1n;
        server.request.uc = msg1u;
        server.request.eo = msg2e;
        server.request.no = msg2n;
        server.request.uo = msg2u;

        if (distanceClient.call(server)) {
            float localResponse = server.response.dist;
            //ROS_INFO("msg1e: %f \t msg2e: %f \t", msg1e, msg2e);
            ROS_INFO("Distance: %f", localResponse);

            if (localResponse > 5) {
                ROS_INFO("SAFE");
            } else if (localResponse < 1) {
                ROS_ERROR("CRASH");
            } else
                ROS_WARN("UNSAFE");

        } else
            ROS_ERROR("call error, unable to contact server");
    }else ROS_ERROR("NaN");
}
//TODO spostare distance calc nel cmakelists da executable/ros_porj a filter/ros_proj

int main(int argc, char **argv) {

    ros::init(argc, argv, "my_name");

    //ROS_INFO("Keep Alive master");

    ros::NodeHandle filterNode;
    distanceClient = filterNode.serviceClient<ros_proj::vehicleDistance>("distanceCalculator");

    message_filters::Subscriber<nav_msgs::Odometry> carSub(filterNode, "carENU", 1);
    message_filters::Subscriber<nav_msgs::Odometry> obsSub(filterNode, "obsENU", 1);

    typedef message_filters::sync_policies::ApproximateTime<nav_msgs::Odometry, nav_msgs::Odometry> filterPolicy;
    message_filters::Synchronizer<filterPolicy> sync(filterPolicy(1), carSub, obsSub);

    sync.registerCallback(boost::bind(&callBack, _1, _2));

    ros::spin();

};


