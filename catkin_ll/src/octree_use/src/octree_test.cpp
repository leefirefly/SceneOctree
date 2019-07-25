/*
 *author: LiLiang
 *useage: test SceneOcTree
 *date: 2019-07-10
 */
#include <iostream>
#include <assert.h>
#include <vector>


//octomap
#include <octomap/octomap.h>
#include <octomap/ColorOcTree.h>
#include <octomap/AbstractOcTree.h>
#include <octomap/math/Pose6D.h>

#include "abstract_msgs/QueryResult.h"

#include "scene_octree_ros/SceneOcTree.h"
#include "scene_octree_ros/LeafData.h"

using namespace std;
using namespace octomath;
using namespace octomap;

int main(int argc, char **argv)
{
    abstract_msgs::QueryResult LeafData;
    LeafData.count = 1;
    LeafData.layerName;
    int32_t swarmID = 1;
    string taskName = "test";
    string actorName = "test";
    int32_t robotID = 1;
    string timeStamp = "test";
    Pose6D robotPose(0, 1, 2, 3, 4, 5);
    Pose6D sensorPose(5, 4, 3, 2, 1, 0);
    string dataType = "test";
    uint8_t data[5] = {1,2,3,4,5};
    LeafData testLeafData1(swarmID, taskName, actorName, robotID, timeStamp, robotPose, sensorPose, dataType, data);
    LeafData testLeafData2 = testLeafData1;
    cout << "test LeafData::" << testLeafData1 << endl;
    printf("test data:: %d\n",testLeafData1.data[2]);

    float pos1[3] = {0.1, 0.2, 0.3};
    point3d pp1(pos1[0], pos1[1], pos1[2]);
    SceneOcTree test_tree(0.01);
    test_tree.updateNode(pp1, true);
    test_tree.integrateNodeScene(pos1[0], pos1[1], pos1[2], 200, 200, 100, testLeafData1);

    float pos2[3] = {0.3, 0.2, 0.1};
    point3d pp2(pos2[0], pos2[1], pos2[2]);
    test_tree.updateNode(pp2, true);
    test_tree.integrateNodeScene(pos2[0], pos2[1], pos2[2], 200, 200, 100, testLeafData2);

    point3d query(0.1, 0.2, 0.3);
    SceneOcTreeNode *result = test_tree.search(query);
    cout << "find node1::" << result->getScene() << endl;

    query = point3d(0.3, 0.2, 0.1);
    result = test_tree.search(query);
    cout << "find node2::" << result->getScene() << endl;

    //test_tree.integrateNodeScene(pp,200,200,100,testLeafData);
    cout << "tree created done" << endl;
    //string output_file = "/home/lee_firefly/octomap/test.ot";
    string output_file1 = argv[1];
    //test_tree.updateInnerOccupancy();
    cout << "write in:" << output_file1 << endl;
    // 存储octomap, 注意要存成.ot文件而非.bt文件
    test_tree.write(output_file1);
    cout << "tree written done" << endl;
    AbstractOcTree *tree1 = AbstractOcTree::read(output_file1);
    if (SceneOcTree *tree2 = dynamic_cast<SceneOcTree *>(tree1))
    {
        string output_file2 = argv[2];
        tree2->write(output_file2);
        cout << "tree2 done" << endl;

        query = point3d(0.1, 0.2, 0.3);
        result = tree2->search(query);
        cout << "find node1::" << result->getScene() << endl;

        query = point3d(0.3, 0.2, 0.1);
        result = tree2->search(query);
        cout << "find node2::" << result->getScene() << endl;
    }

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
