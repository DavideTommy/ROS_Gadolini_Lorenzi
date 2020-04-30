#include "ros/ros.h"
#include "ros_proj/customMsg.h"
#include <message_filters/sync_policies/approximate_time.h>
#include <message_filters/subscriber.h>
#include <message_filters/synchronizer.h>
#include "vehicleDistance.h"


using namespace message_filters;

ros_proj::vehicleDistance server;
ros::ServiceClient distanceClient;



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
void callBack(const ros_proj::customMsg::ConstPtr &msg1, const ros_proj::customMsg::ConstPtr &msg2) {

    ROS_INFO("Inside Callback");

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
        server.request.ec = msg1e;
        server.request.nc = msg1n;
        server.request.uc = msg1u;
        server.request.eo = msg2e;
        server.request.no = msg2n;
        server.request.uo = msg2u;

        if (distanceClient.call(server)) {
            ROS_INFO("msg1e: %f \t msg2e: %f \t\n", msg1e, msg2e);

            ROS_INFO("Distance: %f\n", server.response.dist);
        } else
            ROS_ERROR("non va una mazza");


    }
}
//TODO spostare distance calc nel cmakelists da executable/ros_porj a filter/ros_proj

    int main(int argc, char **argv) {

        ros::init(argc, argv, "my_name");

        ROS_INFO("Keep Alive master");

        ros::NodeHandle filterNode;
        ros::ServiceServer calculator = filterNode.advertiseService("distanceCalculator", vehicleDistance::distancer);
        distanceClient = filterNode.serviceClient<ros_proj::vehicleDistance>("distanceClient");

        message_filters::Subscriber<ros_proj::customMsg> carSub(filterNode, "carENU", 1);
        message_filters::Subscriber<ros_proj::customMsg> obsSub(filterNode, "obsENU", 1);
        ROS_INFO("pre message filter");
        typedef message_filters::sync_policies::ApproximateTime<ros_proj::customMsg, ros_proj::customMsg> filterPolicy;
        message_filters::Synchronizer<filterPolicy> sync(filterPolicy(10), carSub, obsSub);

        ROS_INFO("pre sync.register callback");
        sync.registerCallback(boost::bind(callBack, _1, _2));
        ROS_INFO("post sync reg call");

        ros::spin();

    };


