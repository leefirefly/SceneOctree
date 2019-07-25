/*
 *author: LiLiang
 *useage: test SceneOcTree
 *date: 2019-07-10
 */
#include <iostream>
#include <assert.h>
#include <vector>

//pcl
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>

//octomap
#include <octomap/octomap.h>
#include <octomap/SceneOcTree.h>
#include <octomap/ColorOcTree.h>
#include <octomap/AbstractOcTree.h>
#include <octomap/math/UnifiedData.h>
#include <octomap/math/Pose6D.h>

using namespace std;
using namespace octomath;
using namespace octomap;

void testRead()
{
    string filename = "/home/lee_firefly/octomap/octomap/build/ll.ot";
    //test_tree.write(filename);
    //cout << "wtf"<<endl;
    AbstractOcTree *tree1 = AbstractOcTree::read(filename);
    if (SceneOcTree *tree2 = dynamic_cast<SceneOcTree *>(tree1))
    {
        cout << "test second read: size " << tree2->size() << " type " << tree2->getTreeType() << " Depth " << tree2->getTreeDepth() << endl;
        //print_query_info(query, result);
        for (SceneOcTree::leaf_iterator it = tree2->begin_leafs(), end = tree2->end_leafs(); it != end; ++it)
        {
            SceneOcTreeNode *result = tree2->search(it.getKey());
            cout << result->getValue() << endl;
            cout << "r: " << (unsigned int)result->getScene().r << " g " << (unsigned int)result->getScene().g << endl;
            cout << "id " << result->getScene().objectData.robotID << endl;
            cout << result->getScene().objectData.taskName << endl;
            //cout << "test file read, ll.ot::" << result->getScene().objectData.taskName << endl;
        }
    }
};

int main(int argc, char **argv)
{

    int32_t swarmID = 1;
    string taskName = "test";
    string actorName = "test";
    int32_t robotID = 1;
    string timeStamp = "test";
    Pose6D robotPose(0, 1, 2, 3, 4, 5);
    Pose6D sensorPose(5, 4, 3, 2, 1, 0);
    string dataType = "test";
    uint8_t data[5] = {1, 2, 3, 4, 5};
    UnifiedData testUnifiedData1(swarmID, taskName, actorName, robotID, timeStamp, robotPose, sensorPose, dataType, data);
    robotID = 2;
    taskName = "test2222";
    UnifiedData testUnifiedData2 (swarmID, taskName, actorName, robotID, timeStamp, robotPose, sensorPose, dataType, data);
    //cout << "test UnifiedData::" << testUnifiedData1 << endl;
    //printf("test data:: %d\n",testUnifiedData1.data[2]);

    float pos1[3] = {0.1, 0.2, 0.3};
    point3d pp1(pos1[0], pos1[1], pos1[2]);
    SceneOcTree test_tree(0.01);

    test_tree.updateNode(pp1, true);
    test_tree.integrateNodeScene(pos1[0], pos1[1], pos1[2], 200, 200, 100, testUnifiedData1);

    float pos2[3] = {0.3, 0.2, 0.1};
    point3d pp2(pos2[0], pos2[1], pos2[2]);
    test_tree.updateNode(pp2, true);
    test_tree.integrateNodeScene(pos2[0], pos2[1], pos2[2], 200, 200, 100, testUnifiedData1);

    float pos3[3] = {0.5, 0.6, 0.9};
    point3d pp3(pos3[0], pos3[1], pos3[2]);
    test_tree.updateNode(pp3, true);
    test_tree.integrateNodeScene(pos3[0], pos3[1], pos3[2], 200, 200, 100, testUnifiedData2);
    test_tree.updateInnerOccupancy();
    
    for (SceneOcTree::leaf_iterator it = test_tree.begin_leafs(), end = test_tree.end_leafs(); it != end; ++it)
            {
                SceneOcTreeNode *result = test_tree.search(it.getKey());
        cout << "tree Node " << result->getScene().objectData<<endl;
            }

    SceneOcTreeNode *testReadNode =  SceneOcTree::getRobotInfo(1,&test_tree);
    cout << "test Read Node by robot ID: " << testReadNode->getScene().objectData<<endl;
    point3d query(0.1, 0.2, 0.3);
    //SceneOcTreeNode *result = test_tree.search(query);
    //cout << "find node1::" << result->getScene() << endl;

    //query = point3d(0.3, 0.2, 0.1);
    //result = test_tree.search(query);
    //cout << "find node2::" << result->getScene() << endl;

    //test_tree.integrateNodeScene(pp,200,200,100,testUnifiedData);
    //cout << "tree created done" << endl;
    //string output_file = "/home/lee_firefly/octomap/test.ot";
    string output_file1 = argv[1];
    //test_tree.updateInnerOccupancy();
    cout << "write in:" << output_file1 << endl;
    // 存储octomap, 注意要存成.ot文件而非.bt文件
    
    test_tree.writeTrees(output_file1);
    test_tree.writeTrees(output_file1);

    SceneOcTree test_tree2(0.01);
    test_tree2.updateNode(pp1, true);
    test_tree2.integrateNodeScene(pos1[0], pos1[1], pos1[2], 200, 200, 100, testUnifiedData1);

    test_tree2.writeTrees(output_file1);

    vector<SceneOcTreeNode*> nodeV;
    int searchId = 1;
    int nodeCount = SceneOcTree::getRobotOfTrees(searchId,output_file1, nodeV);
    cout << "node Count: "<< nodeCount<< " nodeV size: "<< nodeV.size()<< endl;
    for (vector<SceneOcTreeNode*>::iterator it = nodeV.begin();it!=nodeV.end();++it)
    {
        cout << "test Read Node by robot ID of Trees: " << (*it)->getScene().objectData<<endl;
    }
    nodeV.clear();
    searchId = 2;
    nodeCount =  SceneOcTree::getRobotOfTrees(searchId,output_file1, nodeV);
    cout << "node Count: "<< nodeCount<< " nodeV size: "<< nodeV.size()<< endl;
    for (vector<SceneOcTreeNode*>::iterator it = nodeV.begin();it!=nodeV.end();++it)
    {
        cout << "test Read Node by robot ID of Trees: " << (*it)->getScene().objectData<<endl;
    }
    //cout << "tree written done" << endl;
    /* 
    vector<AbstractOcTree *> treeV;
    int treeCount = SceneOcTree::readTrees(output_file1, treeV);
    //cout << "read trees, number of trees is: " << treeCount << "treeV size:" << treeV.size() << endl;
    for (vector<AbstractOcTree *>::iterator it = treeV.begin(); it != treeV.end(); ++it)
    {
        //cout << "read tree form vec: " << endl;
        if (SceneOcTree *treeformV = dynamic_cast<SceneOcTree *>(*it))
        {
            for (SceneOcTree::leaf_iterator it = treeformV->begin_leafs(), end = treeformV->end_leafs(); it != end; ++it)
            {
                SceneOcTreeNode *result = treeformV->search(it.getKey());
                //cout << "test file read, find node1::" << result->getScene().objectData.taskName << endl;
            }
        }
    }
*/
    string filename = "/home/lee_firefly/octomap/octomap/build/ll.ot";
    //test_tree.write(filename);
    cout << "wtf"<<endl;

    //testRead();
    /*cout << "read to tree3" << endl;
    AbstractOcTree *tree3 = AbstractOcTree::read(filename);
    if (SceneOcTree *tree2 = dynamic_cast<SceneOcTree *>(tree3))
    {
        cout << "test second read: size "<< tree2->size()<<" type "<<tree2->getTreeType()<<" Depth "<<tree2->getTreeDepth()<<endl;
        //print_query_info(query, result);
        for (SceneOcTree::leaf_iterator it = tree2->begin_leafs(), end = tree2->end_leafs(); it != end; ++it)
        {
            SceneOcTreeNode *result = tree2->search(it.getKey());
            cout << result->getValue()<<endl;
            cout << "r: "<< (unsigned int)result->getScene().r<< " g "<<(unsigned int)result->getScene().g<<endl;
            cout << "id "<< result->getScene().objectData.robotID<<endl;
            cout << result->getScene().objectData<< endl;
            cout << "test file read, ll.ot::" << result->getScene().objectData.taskName << endl;
        }
    }*/

    /*
    string input_file = argv[1], output_file = argv[2];
    pcl::PointCloud<pcl::PointXYZRGBA> cloud;
    pcl::io::loadPCDFile<pcl::PointXYZRGBA>(input_file, cloud);

    cout << "point cloud loaded, piont size = " << cloud.points.size() << endl;

    //声明octomap变量
    cout << "copy data into octomap..." << endl;
    // 创建带颜色的八叉树对象，参数为分辨率，这里设成了0.05
    //octomap::SceneOcTree tree( 0.05 );
    octomap::ColorOcTree tree(0.05);

    for (auto p : cloud.points)
    {
        // 将点云里的点插入到octomap中
        tree.updateNode(octomap::point3d(p.x, p.y, p.z), true);
    }

    // 设置颜色
    for (auto p : cloud.points)
    {
        //tree.integrateNodeScene( p.x, p.y, p.z, p.r, p.g, p.b );
        tree.integrateNodeColor(p.x, p.y, p.z, p.r, p.g, p.b);
    }

    // 更新octomap
    tree.updateInnerOccupancy();
    // 存储octomap, 注意要存成.ot文件而非.bt文件
    tree.write(output_file);
    cout << "done." << endl;

    octomap::AbstractOcTree *tree1 = octomap::AbstractOcTree::read(output_file);
    if (octomap::ColorOcTree *tree2 = dynamic_cast<octomap::ColorOcTree *>(tree1))
    {
        string output_file2 = argv[3];
        tree2->write(output_file2);
        cout<<"tree2 done"<<endl;
    }
*/
    return 0;
}
