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

    string filename = "/home/lee_firefly/SceneOcTree/octomap/octomap/build/ll.ot";
    testRead();

    return 0;
}
