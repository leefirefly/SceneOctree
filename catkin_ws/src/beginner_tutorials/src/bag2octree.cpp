#include "abstract_msgs/StationData.h"
#include "rosplane_msgs/State.h"
#include "abstract_msgs/QueryResult.h"
#include "geometry_msgs/Pose.h"

#include <ros/ros.h>

#include "scene_octree_ros/SceneOcTree.h"
#include "scene_octree_ros/LeafData.h"

#include <octomap/octomap.h>
#include <octomap/ColorOcTree.h>
#include <octomap/AbstractOcTree.h>
#include <octomap/math/Pose6D.h>

int msg_count;
int flag;
float plane_pos[5][3];
abstract_msgs::QueryResult plane_data[5];

using namespace std;
using namespace octomap;
using namespace octomath;

void bagCallback(const abstract_msgs::QueryResult &msg)
{
	abstract_msgs::QueryResult leafdata = msg;
	int planeID = leafdata.data.robotID;
	plane_data[planeID - 1] = leafdata;
	plane_pos[planeID - 1][0] = leafdata.data.robotPose.position.x;
	plane_pos[planeID - 1][1] = leafdata.data.robotPose.position.y;
	plane_pos[planeID - 1][2] = leafdata.data.robotPose.position.z;
	flag = flag - 1;
	//cout << "msg_count:" << msg_count << "flag" << flag << endl;
	if (msg_count < msg.count && flag == 0)
	{
		std::stringstream ss;
		//ss << "/home/lee_firefly/catkin_ws/data/planePos" << msg.count << ".ot";
		ss << "/home/lee_firefly/catkin_ws/data/planePos" << msg_count << ".ot";
		std::string filename = ss.str();
		string TotalFileName = "/home/lee_firefly/catkin_ws/data/planePosALL.ot";
		octomap::SceneOcTree tree(0.1);

		for (int i = 0; i < 5; i++)
		{
			tree.updateNode(plane_pos[i][0], plane_pos[i][0], plane_pos[i][0], true);
			tree.integrateNodeScene(plane_pos[i][0], plane_pos[i][0], plane_pos[i][0], i * 50, i * 25, 255 - i * 50, plane_data[i]);
			//tree.integrateNodeScene(plane_pos[i][0], plane_pos[i][0], plane_pos[i][0], i * 50, i * 25, 255 - i * 50, testData);
		}
		tree.updateInnerOccupancy();
		tree.write(filename);
		//tree.writeTrees(TotalFileName);
		cout << "write file::" << filename << endl;
		//cout << "write file::" << TotalFileName << endl;
		/*
		std::stringstream ss2;
		ss2 << "/home/lee_firefly/catkin_ws/data/color_planePos" << msg.count << ".ot";
		filename = ss2.str();
		octomap::ColorOcTree colore_tree(10);
		for (int i = 0; i < 5; i++)
		{
			colore_tree.updateNode(plane_pos[i][0], plane_pos[i][0], plane_pos[i][0], true);
			colore_tree.integrateNodeColor(plane_pos[i][0], plane_pos[i][0], plane_pos[i][0], i * 50, i * 25, 255 - i * 50);
		}
		colore_tree.updateInnerOccupancy();
		colore_tree.write(filename);
		cout << "write file::" << filename << endl;
		*/

		flag = 5;
		msg_count = msg_count + 1;
		// test: query
		/*
		point3d query = point3d(plane_pos[0][0], plane_pos[0][0], plane_pos[0][0]);
		SceneOcTreeNode *result = tree.search(query);
		cout << "test query, find node::" << result->getScene().objectData.query_result.sceneName << endl;
		//test: iterator
		for (SceneOcTree::leaf_iterator it = tree.begin_leafs(), end = tree.end_leafs(); it != end; ++it)
		{
			result = tree.search(it.getKey());
			cout << "test iterator, find node::" << result->getScene().objectData.query_result.data.taskName << endl;
		}
		*/
		//test: read file and convert
		
	    //filename = "/home/lee_firefly/catkin_ws/data/planePos2.ot";
		AbstractOcTree *tree1 = AbstractOcTree::read(filename);
		cout << "file read to tree1" << endl;
		if (SceneOcTree *tree2 = dynamic_cast<SceneOcTree *>(tree1))
		{
			cout << tree2->getTreeType() << endl;
			for (SceneOcTree::leaf_iterator it = tree2->begin_leafs(), end = tree2->end_leafs(); it != end; ++it)
			{
				SceneOcTreeNode *result = tree2->search(it.getKey());
				cout << "test file read, find sceneName::" << result->getScene().objectData.query_result.sceneName << endl;
				abstract_msgs::QueryResult result_queryResult = result->getScene().objectData.query_result;
				abstract_msgs::UnifiedData query_UnifiedData = result_queryResult.data;
				cout << "test file read, find taskName::" << result_queryResult.sceneName << " UnifiedData: " << query_UnifiedData.taskName <<"   pose: "<<query_UnifiedData.robotPose.position.x<< endl;
			}
			cout << "  read tree done" << endl;
		}
		AbstractOcTree *tree3 = AbstractOcTree::read(filename);
		cout << "file read to tree3" << endl;
		if (SceneOcTree *tree2 = dynamic_cast<SceneOcTree *>(tree3))
		{
			cout << tree2->getTreeType() << endl;
			for (SceneOcTree::leaf_iterator it = tree2->begin_leafs(), end = tree2->end_leafs(); it != end; ++it)
			{
				SceneOcTreeNode *result = tree2->search(it.getKey());
				cout << "test file read, find sceneName::" << result->getScene().objectData.query_result.sceneName << endl;
				abstract_msgs::QueryResult result_queryResult = result->getScene().objectData.query_result;
				abstract_msgs::UnifiedData query_UnifiedData = result_queryResult.data;
				cout << "test file read, find taskName::" << result_queryResult.sceneName << " UnifiedData: " << query_UnifiedData.taskName <<"   pose: "<<query_UnifiedData.robotPose.position.x<< endl;
			}
			cout << "  read tree done" << endl;
		}
	}
	/* 
	if (msg_count == 3)
	{
		string TotalFileName = "/home/lee_firefly/catkin_ws/data/planePosALL.ot";
		vector<AbstractOcTree *> treeV;
		int treeCount = SceneOcTree::readTrees(TotalFileName, treeV);
		cout << "read trees, number of trees is: " << treeCount << "treeV size:" << treeV.size() << endl;
		for (vector<AbstractOcTree *>::iterator it = treeV.begin(); it != treeV.end(); ++it)
		{
			cout << "read tree form vec: " << endl;
			if (SceneOcTree *treeformV = dynamic_cast<SceneOcTree *>(*it))
			{
				for (SceneOcTree::leaf_iterator it = treeformV->begin_leafs(), end = treeformV->end_leafs(); it != end; ++it)
				{
					SceneOcTreeNode *result = treeformV->search(it.getKey());
					//cout << "test file read, data: r " << (unsigned int)result_scene.r << " g " << (unsigned int)result_scene.g << " b " << (unsigned int)result_scene.b << endl;
					abstract_msgs::QueryResult test_QueryResult = result->getScene().objectData.query_result;
					abstract_msgs::UnifiedData test_UnifiedData = test_QueryResult.data;
					string test_sceneName = test_QueryResult.sceneName;
					string test_taskName = test_UnifiedData.taskName;
					cout << "test iterator, find node::"
						 << " r: " << (unsigned int)result->getScene().r << " sceneName: " << test_sceneName << " taskName: " << test_taskName << endl;
				}
				cout << treeformV->getTreeType();
				cout << "  read tree done" << endl;
			}
		}
	}
	*/
}

int main(int argc, char **argv)
{
	/*
	stringstream ss ;
	ss << "/home/lee_firefly/catkin_ws/data/planePos5.ot";
	string filename = ss.str();
	AbstractOcTree *tree1 = AbstractOcTree::read(filename);
	cout << "file read to tree1" << endl;
	if (SceneOcTree *tree2 = dynamic_cast<SceneOcTree *>(tree1))
	{
		cout << tree2->getTreeType() << endl;
		for (SceneOcTree::leaf_iterator it = tree2->begin_leafs(), end = tree2->end_leafs(); it != end; ++it)
		{
			SceneOcTreeNode *result = tree2->search(it.getKey());
			cout << "test file read, find sceneName::" << result->getScene().objectData.query_result.sceneName << endl;
			abstract_msgs::QueryResult result_queryResult = result->getScene().objectData.query_result;
			abstract_msgs::UnifiedData query_UnifiedData = result_queryResult.data;
			cout << "test file read, find taskName::" << result_queryResult.sceneName << " UnifiedData: " << query_UnifiedData.taskName << "   pose: " << query_UnifiedData.robotPose.position.x << endl;
		}
		cout << "  read tree done" << endl;
	}
	*/
	memset(plane_pos, 0, sizeof(plane_pos));
	flag = 5;
	ros::init(argc, argv, "bag2octree");
	ros::NodeHandle n;
	const std::string topic_name = "GroudStationScene";
	ros::Subscriber sub = n.subscribe(topic_name, 1000, bagCallback);
	ros::spin();
	return 0;
}
