#include "ros/ros.h"

#include "visualization_msgs/Marker.h"

#include <octomap/octomap.h>
#include <octomap/AbstractOcTree.h>
#include "abstract_msgs/QueryResult.h"
#include "abstract_msgs/UnifiedData.h"

#include "scene_octree_ros/SceneOcTree.h"
#include "scene_octree_ros/LeafData.h"
#include "scene_octree_ros/rvizShow.h"

#include <sstream>

using namespace std;
using namespace octomap;
using namespace octomath;

ros::Publisher Octree_Marker_pub;

void publishCallback(const ros::TimerEvent &)
{
    stringstream ss;
    ss << "/home/lee_firefly/SceneOcTree/catkin_ll/src/octree_use/data/planePos0.ot";
    string filename = ss.str();
    SceneOcTreeMarker testR;
    testR.showFile(filename);
    testR.showSingleRobot(filename, 5);
};

int main(int argc, char **argv)
{
    ros::init(argc, argv, "sendMaker");
    ros::NodeHandle n;
    Octree_Marker_pub = n.advertise<visualization_msgs::Marker>("octree_markers", 10);
   

    ros::Rate loop_rate(0.1);
    int count = 0;
    while (count < 10)
    {
        double start = ros::Time::now().toSec();
        while (ros::ok())
        {
            stringstream ss;
            ss << "/home/lee_firefly/SceneOcTree/catkin_ll/src/octree_use/data/planePos" << count << ".ot";
            string filename = ss.str();
            SceneOcTreeMarker testR;
            testR.showFile(filename);
            ros::spinOnce();
            loop_rate.sleep();
            double end = ros::Time::now().toSec();
            if ((end - start) > 2)
                break;
        }
        count = count + 1;
    }
    //ros::Timer publish_timer;
    //publish_timer = n.createTimer(ros::Duration(1), publishCallback);
    //ros::spin();
}
