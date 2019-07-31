/*
 *author: LiLiang
 *useage: test SceneOcTree
 *date: 2019-07-10
 */
#include <iostream>
#include <assert.h>
#include <vector>

//pcl
//octomap
#include <octomap/octomap.h>
#include <octomap/SceneOcTree.h>
#include <octomap/ColorOcTree.h>
#include <octomap/AbstractOcTree.h>
#include <octomap/math/UnifiedData.h>
#include <octomap/math/Pose6D.h>

#include<unistd.h>

using namespace std;
using namespace octomath;
using namespace octomap;

void testRead()
{
    string filename = "/home/lee_firefly/SceneOcTree/octomap/octomap/build/ll.ot";
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
    string taskName = "tesafj;lkajf;a;lfja;jfdka;fjk;aljfaj;fdlja;ldjkf;ajkfdk;lajfdlajdlkfja;ldkfj;alkjdf;lakjfd;lakjdf;laj;dflkaj;fdlkajfl;kajl;fkja;lfkj;alkjfd;fkjaldfja;lkjf;lajkd;flakjd;flakjd;lfkja;lfdkja;lfkja;ldjf;aljf;lajflkjalfjlsjfljsdjfsjdflsjldjflskjdflsjdflksjdfljsdlfjlsdfjsldfsjdflskjdflksjdfkjslkdfjksdjfksjdfklksfkjsdkjfsklajkfd;lajd;flakjfd;lakjdfk;lakjf;lajd;aljkfdl;ajdf;lajf;lakjdf;lakjfd;lakjf;dlt";
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

    //SceneOcTreeNode *result = test_tree.search(query);
    //cout << "find node1::" << result->getScene() << endl;

    //query = point3d(0.3, 0.2, 0.1);
    //result = test_tree.search(query);
    //cout << "find node2::" << result->getScene() << endl;

    //test_tree.integrateNodeScene(pp,200,200,100,testUnifiedData);
    //cout << "tree created done" << endl;
    //string output_file = "/home/lee_firefly/octomap/test.ot";
    //string output_file1 = argv[1];
    //test_tree.updateInnerOccupancy();
    //cout << "write in:" << output_file1 << endl;
    // 存储octomap, 注意要存成.ot文件而非.bt文件
    
    //test_tree.writeTrees(output_file1);
    //test_tree.writeTrees(output_file1);

    SceneOcTree test_tree2(0.01);
    test_tree2.updateNode(pp1, true);
    test_tree2.integrateNodeScene(pos1[0], pos1[1], pos1[2], 200, 200, 100, testUnifiedData1);

    //test_tree2.writeTrees(output_file1);

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
    string filename = "/home/lee_firefly/SceneOcTree/octomap/octomap/build/ll.ot";
    test_tree.write(filename);
    //sleep(50000);
    cout << "wtf"<<endl;
    testRead();

    return 0;
}
