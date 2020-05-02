#include "ros/ros.h"
#include <tf/transform_broadcaster.h>
#include <nav_msgs/Odometry.h>

#define BUFFER_SIZE 10

std::string tfTopic;

void tfPublish(const nav_msgs::Odometry::ConstPtr &msg) {

    static tf::TransformBroadcaster tfBs;
    tf::Transform tfTs;

    tfTs.setOrigin(tf::Vector3((msg->pose.pose.position.x / 200), (msg->pose.pose.position.y/ 200), (msg->pose.pose.position.z/ 200)));
    tf::Quaternion tfQt;

    tfQt.setRPY(0, 0, 0);

    tfTs.setRotation(tfQt);

    tfBs.sendTransform(tf::StampedTransform(tfTs, ros::Time::now(), "map", tfTopic));


}


int main(int argc, char **argv) {

    ros::init(argc, argv, "tfNode");
    tfTopic = argv[1];

    ros::NodeHandle tfHandle;
    ros::Subscriber odomSub = tfHandle.subscribe(tfTopic, BUFFER_SIZE, tfPublish);


    ros::spin();
    return 0;
};