// author: LiLiang
// date: 2019-07-10
// useage: this dataType is created to storage LeafDataMsg by Octree

#include <scene_octree_ros/SceneOcTree.h>

namespace octomap
{

// node implementation  --------------------------------------
std::ostream &SceneOcTreeNode::writeData(std::ostream &s) const
{
  s.write((const char *)&value, sizeof(value)); // occupancy
  s.write((const char *)&scene.r, sizeof(uint8_t)); // Scene
  s.write((const char *)&scene.g, sizeof(uint8_t)); // Scene
  s.write((const char *)&scene.b, sizeof(uint8_t)); // Scene
  octomath::LeafData::writeLeafData(s, scene.objectData);
  return s;
}

std::istream &SceneOcTreeNode::readData(std::istream &s)
{
  s.read((char *)&value, sizeof(value)); // occupancy
  s.read((char *)&scene.r, sizeof(uint8_t)); // Scene
  s.read((char *)&scene.g, sizeof(uint8_t)); // Scene
  s.read((char *)&scene.b, sizeof(uint8_t)); // Scene
  octomath::LeafData::readLeafData(s,scene.objectData);
  //cout << (unsigned int)scene.r<<scene.objectData.query_result.layerName<<endl;
  return s;
}

bool SceneOcTree::writeTrees(const std::string &filename) const
{
  std::ofstream file(filename.c_str(), std::ios_base::in | std::ios_base::out | std::ios_base::ate | std::ios_base::binary);

  //file not exist
  if (!file.is_open())
  {
    //create new file
    std::ofstream file1(filename.c_str(), std::ios_base::out | std::ios_base::binary);
    writeTrees(file1);
    if (!file1.is_open())
    {
      OCTOMAP_ERROR_STR("Filestream to " << filename << " not open, nothing written.");
      return false;
    }
  }
  else
  {
    //if (!file.eof())
    //  file << std::endl;
    // TODO: check is_good of finished stream, return
    writeTrees(file);
    file.close();
  }

  return true;
}

bool SceneOcTree::writeTrees(std::ostream &s) const
{
  s << fileHeader << "\n# (feel free to add / change comments, but leave the first line as it is!)\n#\n";
  s << "id " << getTreeType() << std::endl;
  s << "size " << size() << std::endl;
  s << "res " << getResolution() << std::endl;
  s << "data" << std::endl;

  // write the actual data:
  //OcTreeBaseImpl::writeData(s);
  writeData(s);
  // TODO: ret.val, checks stream?
  return true;
}

bool SceneOcTree::writeTreeV(const std::string &filename, vector<SceneOcTree*>treeV)const
{
  for(vector<SceneOcTree*>::iterator it = treeV.begin();it != treeV.end();++it)
  {
    if((*it)->writeTrees(filename))
    {
      continue;
    }
    else
    {
      return false;
    }
  }
  return true;
}

int SceneOcTree::readTrees(const std::string &filename, vector<AbstractOcTree *> &treeVecotor)
{
  int count = 0;
  std::ifstream file(filename.c_str(), std::ios_base::in | std::ios_base::binary);

  if (!file.is_open())
  {
    OCTOMAP_ERROR_STR("Filestream to " << filename << " not open, nothing read.");
    return count;
  }
  else
  {
    std::string line;
    std::getline(file, line);
    //cout << "read from file: " << line << " line size" << line.size() << endl;
    while (line.size() != 0)
    {
      if (line.compare(0, fileHeader.length(), fileHeader) != 0)
      {
        OCTOMAP_ERROR_STR("First line of OcTree file header does not start with \"" << fileHeader);
        return count;
      }
      std::string id;
      unsigned size;
      double res;

      if (!SceneOcTree::readHeader(file, id, size, res))
        return count;

      //cout << "readHeader id: " << id << "size: " << size << "res: " << res << endl;

      // otherwise: values are valid, stream is now at binary data!
      //OCTOMAP_DEBUG_STR("Reading octree type " << id);

      AbstractOcTree *tree = SceneOcTree::createTree(id, res);

      if (tree)
      {
        if (size > 0)
          tree->readData(file);
        //cout << "tree size: " << tree->size() << endl;
        //  OCTOMAP_DEBUG_STR("Done (" << tree->size() << " nodes)");
      }

      treeVecotor.push_back(tree);
      /*
      cout<<"in readTrees test~~~~~~~~~~~"<<endl;
      if (SceneOcTree *new_tree = dynamic_cast<SceneOcTree *>(tree))
      {
        for (SceneOcTree::leaf_iterator it = new_tree->begin_leafs(), end = new_tree->end_leafs(); it != end; ++it)
        {
          SceneOcTreeNode *result = new_tree->search(it.getKey());
          abstract_msgs::QueryResult test_QueryResult = result->getScene().objectData.query_result;
          cout << "testData:  "<< result->getScene().objectData.query_result.count <<endl;
          abstract_msgs::UnifiedData test_UnifiedData = test_QueryResult.data;
          string test_sceneName = test_QueryResult.sceneName;
          string test_taskName = test_UnifiedData.taskName;
          cout << "test iterator, find node::" << " r: "<<(unsigned int)result->getScene().r <<" sceneName: "<< test_sceneName.c_str()<< " taskName: " << test_taskName.c_str()<< endl;
        }
        //cout << "test data" << new_tree->getTreeDepth() << endl;
      }
      */

      count = count + 1;

      //cout << "push back a new tree" << endl;
      std::getline(file, line);
      //cout << "read from file: " << line << " line size" << line.size() << endl;
    }
    return count;
  }
}

bool SceneOcTree::readHeader(std::istream &s, std::string &id, unsigned &size, double &res)
{
  id = "";
  size = 0;
  res = 0.0;

  std::string token;
  bool headerRead = false;
  while (s.good() && !headerRead)
  {
    s >> token;
    if (token == "data")
    {
      headerRead = true;
      // skip forward until end of line:
      char c;
      do
      {
        c = s.get();
      } while (s.good() && (c != '\n'));
    }
    else if (token.compare(0, 1, "#") == 0)
    {
      // comment line, skip forward until end of line:
      char c;
      do
      {
        c = s.get();
      } while (s.good() && (c != '\n'));
    }
    else if (token == "id")
      s >> id;
    else if (token == "res")
      s >> res;
    else if (token == "size")
      s >> size;
    else
    {
      OCTOMAP_WARNING_STR("Unknown keyword in OcTree header, skipping: " << token);
      char c;
      do
      {
        c = s.get();
      } while (s.good() && (c != '\n'));
    }
  }

  if (!headerRead)
  {
    OCTOMAP_ERROR_STR("Error reading OcTree header");
    return false;
  }

  if (id == "")
  {
    OCTOMAP_ERROR_STR("Error reading OcTree header, ID not set");
    return false;
  }

  if (res <= 0.0)
  {
    OCTOMAP_ERROR_STR("Error reading OcTree header, res <= 0.0");
    return false;
  }
  // fix deprecated id value:
  if (id == "1")
  {
    OCTOMAP_WARNING("You are using a deprecated id \"%s\", changing to \"OcTree\" (you should update your file header)\n", id.c_str());
    id = "OcTree";
  }

  return true;
}

AbstractOcTree *SceneOcTree::createTree(const std::string class_name, double res)
{
  std::map<std::string, AbstractOcTree *>::iterator it = classIDMapping().find(class_name);
  if (it == classIDMapping().end())
  {
    OCTOMAP_ERROR("Could not create octree of type %s, not in store in classIDMapping\n", class_name.c_str());
    return NULL;
  }
  else
  {
    AbstractOcTree *tree = it->second->create();

    tree->setResolution(res);
    return tree;
  }
}
std::map<std::string, AbstractOcTree *> &SceneOcTree::classIDMapping()
{
  static std::map<std::string, AbstractOcTree *> *map = new std::map<std::string, AbstractOcTree *>();
  return *map;
}

void SceneOcTree::registerTreeType_new(AbstractOcTree *tree)
{
  classIDMapping()[tree->getTreeType()] = tree;
}

SceneOcTreeNode *SceneOcTree::getRobotInfoByRobotId(const int id, const SceneOcTree *tree)
{
  for (SceneOcTree::leaf_iterator it = tree->begin_leafs(), end = tree->end_leafs(); it != end; ++it)
  {
    SceneOcTreeNode *result = tree->search(it.getKey());
    if (result->getScene().objectData.query_result.data.robotID == id)
      return result;
  }
  return NULL;
}

int SceneOcTree::getRobotOfTreesByRobotId(const int id, const std::string &filename, vector<SceneOcTreeNode *> &nodeVector)
{
  int count = 0;
  vector<AbstractOcTree *> treeV;
  int treeCount = SceneOcTree::readTrees(filename, treeV);
  //cout << "treeCount  " << treeCount << endl;
  for (vector<AbstractOcTree *>::iterator it = treeV.begin(); it != treeV.end(); ++it)
  {
    if (SceneOcTree *treefromV = dynamic_cast<SceneOcTree *>(*it))
    {
      SceneOcTreeNode *result = SceneOcTree::getRobotInfoByRobotId(id, treefromV);
      if (result != NULL)
      {
        nodeVector.push_back(result);
        count = count + 1;
      }
    }
  }
  return count;
}

SceneOcTree *SceneOcTree::getRobotInfoBySearch(const Search search, const SceneOcTree *tree)
{
  int count = 0;
  SceneOcTree *newTree = tree->create();
  for (SceneOcTree::leaf_iterator it = tree->begin_leafs(), end = tree->end_leafs(); it != end; ++it)
  {
    int flag = 2;
    SceneOcTreeNode *result = tree->search(it.getKey());
    if (search.actorName != "default_string")
    {
      if (result->getScene().objectData.query_result.data.actorName == search.actorName)
      {
        flag = 1;
      }
      else
        flag = 0;
    }
    if (search.dataType != "default_string" && flag != 0)
    {
      if (result->getScene().objectData.query_result.data.dataType == search.dataType)
      {
        flag = 1;
      }
      else
        flag = 0;
    }
    if (search.layerName != "default_string" && flag != 0)
    {
      if (result->getScene().objectData.query_result.layerName == search.layerName)
      {
        flag = 1;
      }
      else
        flag = 0;
    }
    if (search.receiverID != -666 && flag != 0)
    {
      if (result->getScene().objectData.query_result.receiverID == search.receiverID)
      {
        flag = 1;
      }
      else
        flag = 0;
    }
    if (search.robotID != -666 && flag != 0)
    {
      if (result->getScene().objectData.query_result.data.robotID == search.robotID)
      {
        flag = 1;
      }
      else
        flag = 0;
    }
    if (search.sceneName != "default_string" && flag != 0)
    {
      if (result->getScene().objectData.query_result.sceneName == search.sceneName)
      {
        flag = 1;
      }
      else
        flag = 0;
    }
    if (search.senderID != -666 && flag != 0)
    {
      if (result->getScene().objectData.query_result.senderID == search.senderID)
      {
        flag = 1;
      }
      else
        flag = 0;
    }
    if (search.swarmID != -666 && flag != 0)
    {
      if (result->getScene().objectData.query_result.data.swarmID == search.swarmID)
      {
        flag = 1;
      }
      else
        flag = 0;
    }
    if (search.taskName != "default_string" && flag != 0)
    {
      if (result->getScene().objectData.query_result.data.taskName == search.taskName)
      {
        flag = 1;
      }
      else
        flag = 0;
    }
    if (flag == 2)
    {
      return NULL;
      break;
    }
    if (flag == 1)
    {
      count = count + 1;
      float x = result->getScene().objectData.query_result.data.robotPose.position.x;
      float y = result->getScene().objectData.query_result.data.robotPose.position.y;
      float z = result->getScene().objectData.query_result.data.robotPose.position.z;
      newTree->updateNode(x, y, z, true);
      newTree->integrateNodeScene(x, y, z, result->getScene().r, result->getScene().g, result->getScene().b, result->getScene().objectData);
    }
  }
  if (count > 0)
  {
    return newTree;
  }
  else
  {
    return NULL;
  }
}
int SceneOcTree::getRobotOfTreesBySearch(const Search search, const std::string &filename, vector<SceneOcTree *> &treeVector)
{
  int count = 0;
  vector<AbstractOcTree *> treeV;
  int treeCount = SceneOcTree::readTrees(filename, treeV);
  //cout <<"treeCount  "<< treeCount<<endl;
  for (vector<AbstractOcTree *>::iterator it = treeV.begin(); it != treeV.end(); ++it)
  {
    if (SceneOcTree *treefromV = dynamic_cast<SceneOcTree *>(*it))
    {
      SceneOcTree *result = SceneOcTree::getRobotInfoBySearch(search, treefromV);
      if (result != NULL)
      {
        treeVector.push_back(result);
        count = count + 1;
      }
    }
  }
  return count;
}

SceneOcTree *SceneOcTree::getRobotInfoByBox(float xMin, float xMax, float yMin, float yMax, float zMin, float zMax, const SceneOcTree *tree)
{
  int flag = 0;
  SceneOcTree *newTree = tree->create();
  //Since the number of nodes is small, we directly traverse the whole tree
  for (SceneOcTree::leaf_iterator it = tree->begin_leafs(), end = tree->end_leafs(); it != end; ++it)
  {
    SceneOcTreeNode *result = tree->search(it.getKey());
    float x = result->getScene().objectData.query_result.data.robotPose.position.x;
    float y = result->getScene().objectData.query_result.data.robotPose.position.y;
    float z = result->getScene().objectData.query_result.data.robotPose.position.z;
    if(x>=xMin && x<=xMax && y>=yMin && y<=yMax && z>=zMin && z<=zMax)
    {
      flag = 1;
      newTree->updateNode(x,y,z,true);
      newTree->integrateNodeScene(x,y,z,result->getScene().r,result->getScene().g,result->getScene().b,result->getScene().objectData);      
    }
  }
  if(flag == 0)
  {
    return NULL;
  }
  else
  {
    return newTree;
  }
  //this method is too foolish(runtime is too long, because it's O(n^3))
  /*
  float res = tree->getResolution();
  cout << "res: "<< res <<endl;
  unsigned int steps[3];
  steps[0] = floor((xMax - xMin)/res);
  steps[1] = floor((yMax - yMin)/res);
  steps[2] = floor((zMax - zMin)/res);
  float xx = xMin;
  float yy = yMin;
  float zz = zMin;
  for (unsigned int x = 0; x < steps[0]; ++x)
  {
    xx += res;
    for (unsigned int y = 0; y < steps[1]; ++y)
    {
      yy += res;
      for (unsigned int z = 0; z < steps[2]; ++z)
      {
        //          std::cout << "querying p=" << p << std::endl;
        zz += res;
        SceneOcTreeNode* node = tree->search(xx,yy,zz);
        if (node != NULL)
        {
          flag = 1;
          newTree->updateNode(xx,yy,zz,true);
          newTree->integrateNodeScene(xx,yy,zz,node->getScene().r,node->getScene().g,node->getScene().b,node->getScene().objectData);
        }
      }
      zz = zMin;
    }
    yy = yMin;
  }
  if(flag == 0)
  {
    return NULL;
  }
  else
  {
    return newTree;
  }
  */
}

int getRobotOfTreesByBox(float xMin,float xMax, float yMin, float yMax,float zMin, float zMax,const std::string &filename, vector<SceneOcTree *> &treeVector)
{
  int count = 0;
  vector<AbstractOcTree *> treeV;
  int treeCount = SceneOcTree::readTrees(filename, treeV);
  for (vector<AbstractOcTree *>::iterator it = treeV.begin(); it != treeV.end(); ++it)
  {
    if (SceneOcTree *treefromV = dynamic_cast<SceneOcTree *>(*it))
    {
      SceneOcTree *result = SceneOcTree::getRobotInfoByBox(xMin,xMax,yMin,yMax,zMin,zMax, treefromV);
      if (result != NULL)
      {
        treeVector.push_back(result);
        count = count + 1;
      }
    }
  }
  return count;
}

SceneOcTree *SceneOcTree::getRobotInfoByBS(const Search search, float xMin,float xMax, float yMin, float yMax,float zMin, float zMax, const SceneOcTree *tree)
{
  SceneOcTree *result_box = getRobotInfoByBox(xMin,xMax,yMin,yMax,zMin,zMax,tree);
  if(result_box != NULL)
  {
    return getRobotInfoBySearch(search,result_box);
  }
  else
  {
    return NULL;
  }
  
}

int SceneOcTree::getRobotOfTreesByBS(const Search search, float xMin,float xMax, float yMin, float yMax,float zMin, float zMax,const std::string &filename, vector<SceneOcTree *> &treeVector)
{
  int count = 0;
  vector<AbstractOcTree *> treeV;
  int treeCount = SceneOcTree::readTrees(filename, treeV);
  for (vector<AbstractOcTree *>::iterator it = treeV.begin(); it != treeV.end(); ++it)
  {
    if (SceneOcTree *treefromV = dynamic_cast<SceneOcTree *>(*it))
    {
      SceneOcTree *result = SceneOcTree::getRobotInfoByBS(search,xMin,xMax,yMin,yMax,zMin,zMax, treefromV);
      if (result != NULL)
      {
        treeVector.push_back(result);
        count = count + 1;
      }
    }
  }
  return count;
}

/* 
  SceneOcTreeNode::Scene SceneOcTreeNode::getAverageChildScene() const {
    int mr = 0;
    int mg = 0;
    int mb = 0;
    int c = 0;

    if (children != NULL){
      for (int i=0; i<8; i++) {
        SceneOcTreeNode* child = static_cast<SceneOcTreeNode*>(children[i]);

        if (child != NULL && child->isSceneSet()) {
          mr += child->getScene().r;
          mg += child->getScene().g;
          mb += child->getScene().b;
          ++c;
        }
      }
    }

    if (c > 0) {
      mr /= c;
      mg /= c;
      mb /= c;
      return Scene((uint8_t) mr, (uint8_t) mg, (uint8_t) mb);
    }
    else { // no child had a Scene other than white
      return Scene(255, 255, 255);
    }
  }


  void SceneOcTreeNode::updateSceneChildren() {
    scene = getAverageChildScene();
  }
*/

// tree implementation  --------------------------------------
SceneOcTree::SceneOcTree(double in_resolution)
    : OccupancyOcTreeBase<SceneOcTreeNode>(in_resolution)
{
  SceneOcTreeMemberInit.ensureLinking();
}

SceneOcTreeNode *SceneOcTree::setNodeScene(const OcTreeKey &key,
                                           uint8_t r,
                                           uint8_t g,
                                           uint8_t b,
                                           octomath::LeafData objectData)
{
  SceneOcTreeNode *n = search(key);
  if (n != 0)
  {
    n->setScene(r, g, b, objectData);
  }
  return n;
}
/* 
  bool SceneOcTree::pruneNode(SceneOcTreeNode* node) {
    if (!isNodeCollapsible(node))
      return false;

    // set value to children's values (all assumed equal)
    node->copyData(*(getNodeChild(node, 0)));

    if (node->isSceneSet()) // TODO check
      node->setScene(node->getAverageChildScene());

    // delete children
    for (unsigned int i=0;i<8;i++) {
      deleteNodeChild(node, i);
    }
    delete[] node->children;
    node->children = NULL;

    return true;
  }
*/
bool SceneOcTree::isNodeCollapsible(const SceneOcTreeNode *node) const
{
  // all children must exist, must not have children of
  // their own and have the same occupancy probability
  if (!nodeChildExists(node, 0))
    return false;

  const SceneOcTreeNode *firstChild = getNodeChild(node, 0);
  if (nodeHasChildren(firstChild))
    return false;

  for (unsigned int i = 1; i < 8; i++)
  {
    // compare nodes only using their occupancy, ignoring Scene for pruning
    if (!nodeChildExists(node, i) || nodeHasChildren(getNodeChild(node, i)) || !(getNodeChild(node, i)->getValue() == firstChild->getValue()))
      return false;
  }

  return true;
}
/* 
  SceneOcTreeNode* SceneOcTree::averageNodeScene(const OcTreeKey& key,
                                                 uint8_t r,
                                                 uint8_t g,
                                                 uint8_t b) {
    SceneOcTreeNode* n = search(key);
    if (n != 0) {
      if (n->isSceneSet()) {
        SceneOcTreeNode::Scene prev_Scene = n->getScene();
        n->setScene((prev_Scene.r + r)/2, (prev_Scene.g + g)/2, (prev_Scene.b + b)/2);
      }
      else {
        n->setScene(r, g, b);
      }
    }
    return n;
  }
*/
SceneOcTreeNode *SceneOcTree::integrateNodeScene(const OcTreeKey &key,
                                                 uint8_t r,
                                                 uint8_t g,
                                                 uint8_t b,
                                                 octomath::LeafData objectData)
{
  SceneOcTreeNode *n = search(key);
  if (n != 0)
  {
    if (n->isSceneSet())
    {
      SceneOcTreeNode::Scene prev_Scene = n->getScene();
      double node_prob = n->getOccupancy();
      uint8_t new_r = (uint8_t)((double)prev_Scene.r * node_prob + (double)r * (0.99 - node_prob));
      uint8_t new_g = (uint8_t)((double)prev_Scene.g * node_prob + (double)g * (0.99 - node_prob));
      uint8_t new_b = (uint8_t)((double)prev_Scene.b * node_prob + (double)b * (0.99 - node_prob));
      n->setScene(new_r, new_g, new_b, objectData);
    }
    else
    {
      n->setScene(r, g, b, objectData);
    }
  }
  return n;
}

void SceneOcTree::updateInnerOccupancy()
{
  this->updateInnerOccupancyRecurs(this->root, 0);
}

void SceneOcTree::updateInnerOccupancyRecurs(SceneOcTreeNode *node, unsigned int depth)
{
  // only recurse and update for inner nodes:
  if (nodeHasChildren(node))
  {
    // return early for last level:
    if (depth < this->tree_depth)
    {
      for (unsigned int i = 0; i < 8; i++)
      {
        if (nodeChildExists(node, i))
        {
          updateInnerOccupancyRecurs(getNodeChild(node, i), depth + 1);
        }
      }
    }
    node->updateOccupancyChildren();
    //node->updateSceneChildren();
  }
}

void SceneOcTree::writeSceneHistogram(std::string filename)
{

#ifdef _MSC_VER
  fprintf(stderr, "The Scene histogram uses gnuplot, this is not supported under windows.\n");
#else
  // build RGB histogram
  std::vector<int> histogram_r(256, 0);
  std::vector<int> histogram_g(256, 0);
  std::vector<int> histogram_b(256, 0);
  for (SceneOcTree::tree_iterator it = this->begin_tree(),
                                  end = this->end_tree();
       it != end; ++it)
  {
    if (!it.isLeaf() || !this->isNodeOccupied(*it))
      continue;
    SceneOcTreeNode::Scene &c = it->getScene();
    ++histogram_r[c.r];
    ++histogram_g[c.g];
    ++histogram_b[c.b];
  }
  // plot data
  FILE *gui = popen("gnuplot ", "w");
  fprintf(gui, "set term postscript eps enhanced Scene\n");
  fprintf(gui, "set output \"%s\"\n", filename.c_str());
  fprintf(gui, "plot [-1:256] ");
  fprintf(gui, "'-' w filledcurve lt 1 lc 1 tit \"r\",");
  fprintf(gui, "'-' w filledcurve lt 1 lc 2 tit \"g\",");
  fprintf(gui, "'-' w filledcurve lt 1 lc 3 tit \"b\",");
  fprintf(gui, "'-' w l lt 1 lc 1 tit \"\",");
  fprintf(gui, "'-' w l lt 1 lc 2 tit \"\",");
  fprintf(gui, "'-' w l lt 1 lc 3 tit \"\"\n");

  for (int i = 0; i < 256; ++i)
    fprintf(gui, "%d %d\n", i, histogram_r[i]);
  fprintf(gui, "0 0\n");
  fprintf(gui, "e\n");
  for (int i = 0; i < 256; ++i)
    fprintf(gui, "%d %d\n", i, histogram_g[i]);
  fprintf(gui, "0 0\n");
  fprintf(gui, "e\n");
  for (int i = 0; i < 256; ++i)
    fprintf(gui, "%d %d\n", i, histogram_b[i]);
  fprintf(gui, "0 0\n");
  fprintf(gui, "e\n");
  for (int i = 0; i < 256; ++i)
    fprintf(gui, "%d %d\n", i, histogram_r[i]);
  fprintf(gui, "e\n");
  for (int i = 0; i < 256; ++i)
    fprintf(gui, "%d %d\n", i, histogram_g[i]);
  fprintf(gui, "e\n");
  for (int i = 0; i < 256; ++i)
    fprintf(gui, "%d %d\n", i, histogram_b[i]);
  fprintf(gui, "e\n");
  fflush(gui);
#endif
}

//std::ostream& operator<<(std::ostream& out, SceneOcTreeNode::Scene const& c) {
//  return out << "(Scene: " << (unsigned int)c.r << " " << (unsigned int)c.g << " " << (unsigned int)c.b << " objectData: " <<
//  c.objectData << " )";
//}

SceneOcTree::StaticMemberInitializer SceneOcTree::SceneOcTreeMemberInit;

} // namespace octomap
