// author: LiLiang
// date: 2019-07-10
// useage: this dataType is created to storage UnifiedDataMsg by Octree

#ifndef OCTOMAP_SCENE_OCTREE_H
#define OCTOMAP_SCENE_OCTREE_H

#include <iostream>
#include <octomap/OcTreeNode.h>
#include <octomap/OccupancyOcTreeBase.h>
#include <octomap/math/UnifiedData.h>
#include <vector>

namespace octomap
{

// forward declaraton for "friend"
class SceneOcTree;

// node definition
class SceneOcTreeNode : public OcTreeNode
{
public:
  friend class SceneOcTree; // needs access to node children (inherited)

  class Scene
  {
  public:
    Scene() : r(255), g(255), b(255) { objectData.taskName = ""; objectData.timeStamp = ""; objectData.dataType = ""; objectData.data = NULL; }
    Scene(uint8_t _r, uint8_t _g, uint8_t _b, octomath::UnifiedData _objectData)
        : r(_r), g(_g), b(_b) { objectData = _objectData; }
    Scene &operator=(const Scene &other)
    {
      r = other.r;
      g = other.g;
      b = other.b;
      objectData = other.objectData;
      return *this;
    }
    inline bool operator==(const Scene &other) const
    {
      return (r == other.r && g == other.g && b == other.b && objectData == other.objectData);
    }
    inline bool operator!=(const Scene &other) const
    {
      return (r != other.r || g != other.g || b != other.b || objectData != other.objectData);
    }
    uint8_t r, g, b;
    octomath::UnifiedData objectData;
  };

public:
  SceneOcTreeNode() : OcTreeNode() {}

  SceneOcTreeNode(const SceneOcTreeNode &rhs) : OcTreeNode(rhs), scene(rhs.scene) {}

  bool operator==(const SceneOcTreeNode &rhs) const
  {
    return (rhs.value == value && rhs.scene == scene);
  }

  void copyData(const SceneOcTreeNode &from)
  {
    OcTreeNode::copyData(from);
    this->scene = from.getScene();
  }

  inline Scene getScene() const { return scene; }
  inline void setScene(Scene c) { this->scene = c; }
  inline void setScene(uint8_t r, uint8_t g, uint8_t b, octomath::UnifiedData objectData)
  {
    this->scene = Scene(r, g, b, objectData);
  }

  Scene &getScene() { 
    return scene; 
    }

  // has any Scene been integrated? (pure white is very unlikely...)
  inline bool isSceneSet() const
  {
    return ((scene.r != 255) || (scene.g != 255) || (scene.b != 255));
  }

  //void updateSceneChildren();

  //SceneOcTreeNode::Scene getAverageChildScene() const;

  // file I/O
  std::istream &readData(std::istream &s);
  std::ostream &writeData(std::ostream &s) const;

//protected:
  Scene scene;
};

// tree definition
class SceneOcTree : public OccupancyOcTreeBase<SceneOcTreeNode>
{

public:
  /// Default constructor, sets resolution of leafs
  SceneOcTree(double resolution);

  /// virtual constructor: creates a new object of same type
  /// (Covariant return type requires an up-to-date compiler)
  SceneOcTree *create() const { return new SceneOcTree(resolution); }

  std::string getTreeType() const { return "SceneOcTree"; }

  /**
     * Prunes a node when it is collapsible. This overloaded
     * version only considers the node occupancy for pruning,
     * different Scenes of child nodes are ignored.
     * @return true if pruning was successful
     */
  //virtual bool pruneNode(SceneOcTreeNode* node);

  virtual bool isNodeCollapsible(const SceneOcTreeNode *node) const;

  // set node Scene at given key or coordinate. Replaces previous Scene.
  SceneOcTreeNode *setNodeScene(const OcTreeKey &key, uint8_t r,
                                uint8_t g, uint8_t b, octomath::UnifiedData objectData);

  SceneOcTreeNode *setNodeScene(float x, float y,
                                float z, uint8_t r,
                                uint8_t g, uint8_t b,
                                octomath::UnifiedData objectData)
  {
    OcTreeKey key;
    if (!this->coordToKeyChecked(point3d(x, y, z), key))
      return NULL;
    return setNodeScene(key, r, g, b, objectData);
  }

  // integrate Scene measurement at given key or coordinate. Average with previous Scene
  /*  SceneOcTreeNode* averageNodeScene(const OcTreeKey& key, uint8_t r, 
                                  uint8_t g, uint8_t b);
    
    SceneOcTreeNode* averageNodeScene(float x, float y, 
                                      float z, uint8_t r, 
                                      uint8_t g, uint8_t b) {
      OcTreeKey key;
      if (!this->coordToKeyChecked(point3d(x,y,z), key)) return NULL;
      return averageNodeScene(key,r,g,b);
    }
*/
  // integrate Scene measurement at given key or coordinate. Average with previous Scene
  SceneOcTreeNode *integrateNodeScene(const OcTreeKey &key, uint8_t r,
                                      uint8_t g, uint8_t b, octomath::UnifiedData objectData);

  SceneOcTreeNode *integrateNodeScene(float x, float y,
                                      float z, uint8_t r,
                                      uint8_t g, uint8_t b, octomath::UnifiedData objectData)
  {
    OcTreeKey key;
    if (!this->coordToKeyChecked(point3d(x, y, z), key))
      return NULL;
    return integrateNodeScene(key, r, g, b, objectData);
  }

  // update inner nodes, sets Scene to average child Scene
  void updateInnerOccupancy();

  // uses gnuplot to plot a RGB histogram in EPS format
  void writeSceneHistogram(std::string filename);

  bool writeTrees(const std::string &filename) const;
  bool writeTrees(std::ostream &s) const;


  static int readTrees(const std::string &filename, vector<AbstractOcTree *> &treeVecotor);
  static SceneOcTree* readTree(const std::string &filename);
  static bool readHeader(std::istream &s, std::string &id, unsigned &size, double &res);
  static AbstractOcTree *createTree(const std::string class_name, double res);

  static SceneOcTree *createTree_new(const std::string class_name, double res);
  static SceneOcTreeNode* getRobotInfo(const int id, const SceneOcTree* tree);
  static int getRobotOfTrees(const int id, const std::string &filename, vector<SceneOcTreeNode*> &nodeVector);

protected:
  void updateInnerOccupancyRecurs(SceneOcTreeNode *node, unsigned int depth);

  /**
     * Static member object which ensures that this OcTree's prototype
     * ends up in the classIDMapping only once. You need this as a 
     * static member in any derived octree class in order to read .ot
     * files through the AbstractOcTree factory. You should also call
     * ensureLinking() once from the constructor.
     */
  class StaticMemberInitializer
  {
  public:
    StaticMemberInitializer()
    {
      SceneOcTree *tree = new SceneOcTree(0.1);
      tree->clearKeyRays();
      SceneOcTree::registerTreeType_new(tree);
      AbstractOcTree::registerTreeType(tree);
    }

    /**
         * Dummy function to ensure that MSVC does not drop the
         * StaticMemberInitializer, causing this tree failing to register.
         * Needs to be called from the constructor of this octree.
         */
    void ensureLinking(){};
  };
  /// static member to ensure static initialization (only once)
  static StaticMemberInitializer SceneOcTreeMemberInit;
  static void registerTreeType_new(AbstractOcTree* tree);
  static void registerTreeType_new(SceneOcTree* tree);

private:
  static std::map<std::string, AbstractOcTree *> &classIDMapping();
  static std::map<std::string, SceneOcTree *> &classIDMapping_new();
};

//! user friendly output in format (r g b)
std::ostream &operator<<(std::ostream &out, SceneOcTreeNode::Scene const &c);

} // namespace octomap

#endif
