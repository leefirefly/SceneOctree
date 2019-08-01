// author: LiLiang
// date: 2019-07-10
// useage: this dataType is created for represent LeafData Msg

#ifndef OCTOMATH_LeafData_H
#define OCTOMATH_LeafData_H

#include "octomap/math/Vector3.h"
#include "octomap/math/Quaternion.h"
#include "octomap/math/Pose6D.h"

#include <iostream>
#include <string>

#include "abstract_msgs/QueryResult.h"
#include "geometry_msgs/Pose.h"

/*
int32 senderID
int32 receiverID
string layerName
string sceneName
abstract_msgs/LeafData data
int32 count
*/
/*
int32 swarmID
string taskName
string actorName
int32 robotID
string timeStamp
geometry_msgs/Pose robotPose
geometry_msgs/Pose sensorPose
string dataType
uint8[] data
 */
using namespace std;

namespace octomath
{
class LeafData
{
public:
  LeafData();
  ~LeafData();
  LeafData(const abstract_msgs::QueryResult &query_result);
  //LeafData(const int &query_result);
  static std::ostream &writeLeafData(std::ostream &s, LeafData _leafData)
  {
    s.write((const char *)&_leafData.query_result.count, sizeof(int32_t));
    s.write((const char *)&_leafData.query_result.receiverID, sizeof(int32_t));
    s.write((const char *)&_leafData.query_result.senderID, sizeof(int32_t));
    s.write((const char *)&_leafData.query_result.data.robotID, sizeof(int32_t));
    s.write((const char *)&_leafData.query_result.data.swarmID, sizeof(int32_t));
    writePose(s, _leafData.query_result.data.robotPose);
    writePose(s, _leafData.query_result.data.sensorPose);
    writeString(s, _leafData.query_result.layerName);
    writeString(s, _leafData.query_result.sceneName);
    writeString(s, _leafData.query_result.data.actorName);
    writeString(s, _leafData.query_result.data.dataType);
    writeString(s, _leafData.query_result.data.taskName);
    writeString(s, _leafData.query_result.data.timeStamp);
    writeDataVec(s, _leafData.query_result.data.data);
    //s << query_result.data.data;
    return s;
  };

  static std::istream &readLeafData(std::istream &s, LeafData &_leafData)
  {
    s.read((char *)&_leafData.query_result.count, sizeof(int32_t));
    s.read((char *)&_leafData.query_result.receiverID, sizeof(int32_t));
    s.read((char *)&_leafData.query_result.senderID, sizeof(int32_t));
    s.read((char *)&_leafData.query_result.data.robotID, sizeof(int32_t));
    s.read((char *)&_leafData.query_result.data.swarmID, sizeof(int32_t));
    readPose(s, _leafData.query_result.data.robotPose);
    readPose(s, _leafData.query_result.data.sensorPose);
    readString(s, _leafData.query_result.layerName);
    readString(s, _leafData.query_result.sceneName);
    readString(s, _leafData.query_result.data.actorName);
    readString(s, _leafData.query_result.data.dataType);
    readString(s, _leafData.query_result.data.taskName);
    readString(s, _leafData.query_result.data.timeStamp);
    readDataVec(s,_leafData.query_result.data.data);
    //s >> query_result.data.data;
    return s;
  };


  static std::ostream &writePose(std::ostream &s, geometry_msgs::Pose _pos)
  {
    s.write((const char *)&_pos.position.x, sizeof(double));
    s.write((const char *)&_pos.position.y, sizeof(double));
    s.write((const char *)&_pos.position.z, sizeof(double));
    s.write((const char *)&_pos.orientation.x, sizeof(double));
    s.write((const char *)&_pos.orientation.y, sizeof(double));
    s.write((const char *)&_pos.orientation.z, sizeof(double));
    s.write((const char *)&_pos.orientation.w, sizeof(double));
    return s;
  }
  static std::istream &readPose(std::istream &s, geometry_msgs::Pose &_pos)
  {
    s.read(( char *)&_pos.position.x, sizeof(double));
    s.read(( char *)&_pos.position.y, sizeof(double));
    s.read(( char *)&_pos.position.z, sizeof(double));
    s.read(( char *)&_pos.orientation.x, sizeof(double));
    s.read(( char *)&_pos.orientation.y, sizeof(double));
    s.read(( char *)&_pos.orientation.z, sizeof(double));
    s.read(( char *)&_pos.orientation.w, sizeof(double));
    return s;
  }

  static std::ostream &writeString(std::ostream &s, string _str)
  {
    s << _str.size() << "\n";
    s << _str;
    return s;
  }
  static std::istream &readString(std::istream &s, string &_str)
  {
    std::string line;
    std::getline(s, line);
    std::istringstream tmp(line);
    std::size_t size;
    tmp >> size;
    std::vector<char> result(size);
    s.read(result.data(), size);
    _str = string(result.begin(), result.end());
    result.clear();
    return s;
  }

  static std::ostream &writeDataVec(std::ostream &s, std::vector<uint8_t> _data)
  {
    s << _data.size()<< "\n";
    for (std::vector<uint8_t>::iterator it = _data.begin(); it != _data.end(); ++it)
    {
      s.write((const char *)&(*it), sizeof(uint8_t));
    }
    return s;
  }
  static std::istream &readDataVec(std::istream &s, std::vector<uint8_t> &_data)
  {
    std::string line;
    std::getline(s, line);
    std::istringstream tmp(line);
    std::size_t size;
    tmp >> size;
    for(int i = 0; i<size; i++)
    {
      uint8_t tmp;
      s.read((char *)&tmp, sizeof(uint8_t));
      _data.push_back(tmp);
    }
    return s;
  }

  LeafData &operator=(const LeafData &other);
  //  bool operator==(const LeafData &other) const;
  //  bool operator!=(const LeafData &other) const;

  abstract_msgs::QueryResult query_result;
};
//std::ostream &operator<<(std::ostream &s, const LeafData &p);
} // namespace octomath

#endif
