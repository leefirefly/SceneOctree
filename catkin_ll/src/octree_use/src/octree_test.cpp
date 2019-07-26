/*
 *author: LiLiang
 *useage: test SceneOcTree
 *date: 2019-07-10
 */

#include "abstract_msgs/QueryResult.h"

#include <ros/ros.h>

#include "scene_octree_ros/SceneOcTree.h"
#include "scene_octree_ros/LeafData.h"

#include <octomap/octomap.h>
#include <octomap/AbstractOcTree.h>

int msg_count;
int flag;
abstract_msgs::QueryResult plane_data[5];

using namespace std;
using namespace octomap;
using namespace octomath;

void bagCallback(const abstract_msgs::QueryResult &msg)
{
    int planeID = msg.data.robotID;
    plane_data[planeID - 1] = msg;
    flag = flag - 1;

    if (msg_count < msg.count && flag == 0)
    {
        stringstream ss;
        ss << "/home/lee_firefly/SceneOcTree/catkin_ll/src/octree_use/data/planePos" << msg_count << ".ot";
        string filename = ss.str();
        string TotalFileName = "/home/lee_firefly/SceneOcTree/catkin_ll/src/octree_use/data/planePosALL.ot";

        SceneOcTree tree(0.1);
        for (int i = 0; i < 5; i++)
        {
            float x = plane_data[i].data.robotPose.position.x;
            float y = plane_data[i].data.robotPose.position.y;
            float z = plane_data[i].data.robotPose.position.z;
            cout << "x y z: "<<x <<" "<<y<<" "<<z <<endl;
            tree.updateNode(x, y, z, true);
            tree.integrateNodeScene(x, y, z, i * 50, i * 25, 255 - i * 50, plane_data[i]);
        }
        tree.updateInnerOccupancy();

        tree.write(filename);
        tree.writeTrees(TotalFileName);
        cout << "write file::" << filename << endl;
        cout << "write file::" << TotalFileName << endl;

        flag = 5;
        msg_count = msg_count + 1;
    
        SceneOcTree* searchByBox = SceneOcTree::getRobotInfoByBox(43,45,-98,-96,-68,-65,&tree);
        if(searchByBox != NULL)
        {
            for (SceneOcTree::leaf_iterator it = searchByBox->begin_leafs(), end = searchByBox->end_leafs(); it != end; ++it)
            {
                SceneOcTreeNode *result = searchByBox->search(it.getKey());
                cout << "test search from a tree: " << result->getScene().objectData.query_result << endl;
            }          
        }
        else
        {
            cout << "no target in the box!!!"<<endl;
        }
        

        // test search by RobotID
        /* 
        int searchID = 3;
        SceneOcTreeNode *nodeById = SceneOcTree::getRobotInfoByRobotId(searchID, &tree);
        if (nodeById != NULL)
            cout << "test read Node form a tree by RobotID: " << nodeById->getScene().objectData.query_result.data.robotID << endl;
        else
            cout << "test read Node form a tree by RobotID: NULL" << endl;

        vector<SceneOcTreeNode *> nodeV;
        searchID = 2;
        int nodeCount = SceneOcTree::getRobotOfTreesByRobotId(searchID, TotalFileName, nodeV);
        cout << "node Count: " << nodeCount << " nodeV size: " << nodeV.size() << endl;
        for (vector<SceneOcTreeNode *>::iterator it = nodeV.begin(); it != nodeV.end(); ++it)
        {
            cout << "test Read Node by robot ID of Trees: " << (*it)->getScene().objectData.query_result.data.robotID << endl;
        }
        nodeV.clear();
        searchID = 4;
        nodeCount = SceneOcTree::getRobotOfTreesByRobotId(searchID, TotalFileName, nodeV);
        cout << "node Count: " << nodeCount << " nodeV size: " << nodeV.size() << endl;
        for (vector<SceneOcTreeNode *>::iterator it = nodeV.begin(); it != nodeV.end(); ++it)
        {
            cout << "test Read Node by robot ID of Trees: " << (*it)->getScene().objectData.query_result.data.robotID << endl;
        }
        
        // test search by Search
        Search search;
        search.setRobotID(1);
        search.setTaskName("test");
        SceneOcTree *treeBySearch = SceneOcTree::getRobotInfoBySearch(search, &tree);
        if (treeBySearch != NULL)
        {
            for (SceneOcTree::leaf_iterator it = treeBySearch->begin_leafs(), end = treeBySearch->end_leafs(); it != end; ++it)
            {
                SceneOcTreeNode *result = treeBySearch->search(it.getKey());
                cout << "test search from a tree: " << result->getScene().objectData.query_result << endl;
            }
        }
        else
        {
            cout << "search no result!" << endl;
        }

        vector<SceneOcTree *> treeVofSearch;
        int treeCount = SceneOcTree::getRobotOfTreesBySearch(search, TotalFileName, treeVofSearch);
        for (vector<SceneOcTree *>::iterator iter = treeVofSearch.begin(); iter != treeVofSearch.end(); ++iter)
        {
            for (SceneOcTree::leaf_iterator it = (*iter)->begin_leafs(), end = (*iter)->end_leafs(); it != end; ++it)
            {
                SceneOcTreeNode *result = treeBySearch->search(it.getKey());
                cout << "test search from a file: " << result->getScene().objectData.query_result << endl;
            }
        }
        */
        AbstractOcTree *tree1 = AbstractOcTree::read(filename);
        cout << "file read to tree1" << endl;
        if (SceneOcTree *tree2 = dynamic_cast<SceneOcTree *>(tree1))
        {
            cout << tree2->getTreeType() << endl;
            for (SceneOcTree::leaf_iterator it = tree2->begin_leafs(), end = tree2->end_leafs(); it != end; ++it)
            {
                SceneOcTreeNode *result = tree2->search(it.getKey());
                //cout << "test file read, find sceneName::" << result->getScene().objectData.query_result << endl;
            }
            cout << "  read tree done" << endl;
        }
    }
    /*
    if (msg_count == 3)
    {
        string TotalFileName = "/home/lee_firefly/SceneOcTree/catkin_ll/src/octree_use/data/planePosALL.ot";
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
    flag = 5;
    ros::init(argc, argv, "bag2octree");
    ros::NodeHandle n;
    const std::string topic_name = "GroudStationScene";
    ros::Subscriber sub = n.subscribe(topic_name, 1000, bagCallback);
    ros::spin();
    return 0;
}
