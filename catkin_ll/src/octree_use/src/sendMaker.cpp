#include "ros/ros.h"

#include "visualization_msgs/Marker.h"
#include "visualization_msgs/MarkerArray.h"

#include <tf/transform_broadcaster.h>
#include <tf/tf.h>

#include <octomap_msgs/conversions.h>
#include <octomap_msgs/Octomap.h>
#include <octomap/octomap.h>
#include <octomap/ColorOcTree.h>

#include "abstract_msgs/StationData.h"
#include "rosplane_msgs/State.h"
#include "abstract_msgs/QueryResult.h"
#include "abstract_msgs/UnifiedData.h"
#include "geometry_msgs/Pose.h"

#include "scene_octree_ros/SceneOcTree.h"
#include "scene_octree_ros/LeafData.h"

#include <sstream>

using namespace std;
using namespace octomap;
using namespace octomath;

ros::Publisher g_marker_pub;

void publishText( int id, float x, float y, float z,
    float ox, float oy, float oz, float ow,
    float r, float g, float b,
    const std::string &text)
{
    visualization_msgs::Marker marker;
    marker.header.frame_id = "/base_link";
    marker.header.stamp = ros::Time::now();
    marker.ns = "mesh";
    marker.type = visualization_msgs::Marker::TEXT_VIEW_FACING;
    marker.action = visualization_msgs::Marker::ADD;
    marker.scale.x = 0.2;
    marker.scale.y = 0.2;
    marker.scale.z = 0.2;
    marker.text = text;
    marker.id = id;
    marker.pose.position.x = x;
    marker.pose.position.y = y;
    marker.pose.position.x = x/10;
    marker.pose.position.y = y/10;
    marker.pose.position.z = z/10;
    marker.pose.orientation.x = ox;
    marker.pose.orientation.y = oy;
    marker.pose.orientation.z = oz;
    marker.pose.orientation.w = ow;
    marker.color.r = 0;
    marker.color.g = 0;
    marker.color.b = 0;
    marker.color.a = 1.0;

    g_marker_pub.publish(marker);
}

void publishMesh(
    int id, float x, float y, float z,
    float ox, float oy, float oz, float ow,
    float r, float g, float b,
    bool use_embedded_materials)
{
    using visualization_msgs::Marker;

    Marker marker;
    marker.header.frame_id = "/base_link";
    marker.header.stamp = ros::Time::now();
    marker.ns = "mesh";
    marker.type = Marker::MESH_RESOURCE;
    marker.action = Marker::ADD;
    marker.pose.position.x = x/10;
    marker.pose.position.y = y/10;
    marker.pose.position.z = z/10;
    marker.pose.orientation.x = ox;
    marker.pose.orientation.y = oy;
    marker.pose.orientation.z = oz;
    marker.pose.orientation.w = ow;
    marker.scale.x = 0.05;
    marker.scale.y = 0.05;
    marker.scale.z = 0.05;
    marker.color.r = r;
    marker.color.g = g;
    marker.color.b = b;
    marker.color.a = 1.0;
    marker.frame_locked = true;
    marker.mesh_resource = "package://beginner_tutorials/meshes/plane.stl";
    marker.mesh_use_embedded_materials = use_embedded_materials;
    marker.id = id;
    g_marker_pub.publish(marker);
}

void publishMeshes()
{
    ROS_INFO("Publishing");

    stringstream ss;
    ss << "/home/lee_firefly/catkin_ws/data/planePos10.ot";
    string filename = ss.str();
    AbstractOcTree *tree1 = AbstractOcTree::read(filename);
    if (SceneOcTree *tree2 = dynamic_cast<SceneOcTree *>(tree1))
    {
        for (SceneOcTree::leaf_iterator it = tree2->begin_leafs(), end = tree2->end_leafs(); it != end; ++it)
        {
            SceneOcTreeNode *result = tree2->search(it.getKey());
            //SceneOcTreeNode::Scene result_queryResult = result->getScene();
            //abstract_msgs::UnifiedData query_UnifiedData = result_queryResult.objectData.query_result.data;
            int id = result->getScene().objectData.query_result.data.robotID;
            float posX = result->getScene().objectData.query_result.data.robotPose.position.x;
            float posY = result->getScene().objectData.query_result.data.robotPose.position.y;
            float posZ = result->getScene().objectData.query_result.data.robotPose.position.z;
            float oriX = result->getScene().objectData.query_result.data.robotPose.orientation.x;
            float oriY = result->getScene().objectData.query_result.data.robotPose.orientation.y;
            float oriZ = result->getScene().objectData.query_result.data.robotPose.orientation.z;
            float oriW = result->getScene().objectData.query_result.data.robotPose.orientation.w;
            //cout << "color: "<< (unsigned int)result->getScene().r<<endl;
            float colorR = ((unsigned int)result->getScene().r) / 255.0;
            float colorG = ((unsigned int)result->getScene().g) / 255.0;
            float colorB = ((unsigned int)result->getScene().b) / 255.0;
            stringstream ss;
            //string taskName = result->getScene().objectData.query_result.data.taskName;
            //string actorName = result->getScene().objectData.query_result.data.actorName;
            string taskName = "test";
            string actorName = "test";
            ss << "robotID: "<<id<<"  actorName: "<<actorName<<"  taskName: "<<taskName;
            string robotInfo = ss.str();
            //float colorR = 0.5;
            //float colorG = 0.5;
            //float colorB = 0;
            cout << "id: "<< id << "  posX: "<< posX <<"  posZ: "<< posZ <<"  posY: "<< posY << " oriX: "<<oriX<<" oriY: "<<oriY<<" oriZ: "<<oriZ<< " colorR: "<<colorR<<endl; 
            publishMesh(id, posX, posY, posZ, oriX, oriY, oriZ, oriW, colorR, colorG, colorB, true);
            publishText(id, posX, posY, posZ, oriX, oriY, oriZ, oriW, colorR, colorG, colorB,robotInfo);
        }
    }
}

void publishCallback(const ros::TimerEvent &)
{
    return publishMeshes();
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "sendMaker");
    ros::NodeHandle n;

    g_marker_pub = n.advertise<visualization_msgs::Marker>("mesh_markers", 0);

    ros::Timer publish_timer;

    publish_timer = n.createTimer(ros::Duration(1), publishCallback);

    ros::spin();
}
