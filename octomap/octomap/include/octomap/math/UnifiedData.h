// author: LiLiang
// date: 2019-07-10
// useage: this dataType is created for represent UnifiedData Msg

#ifndef OCTOMATH_UNIFIEDDATA_H
#define OCTOMATH_UNIFIEDDATA_H

#include "Vector3.h"
#include "Quaternion.h"
#include "Pose6D.h"

#include <iostream>
#include <vector>
#include <string>

using namespace std;

namespace octomath
{
/*!
   * \brief This class represents a UnifiedDataMsg
   *  
   * UnifiedData.msg
   * 
   * int32 swarmID
   * string taskName
   * string actorName
   * int32 robotID
   * string timeStamp
   * geometry_msgs/Pose robotPose
   * geometry_msgs/Pose sensorPose
   * string dataType
   * uint8[] data
   */

class UnifiedData
{
public:
  UnifiedData();
  ~UnifiedData();
  UnifiedData(
      const int32_t &swarmID,
      const string &taskName,
      const string &actorName,
      const int32_t &robotID,
      const string &timeStamp,
      const Pose6D &robotPose,
      const Pose6D &sensorPose,
      const string &dataType,
      //const vector<uint8_t> &data
      uint8_t* data);

  UnifiedData &operator=(const UnifiedData &other);
  bool operator==(const UnifiedData &other) const;
  bool operator!=(const UnifiedData &other) const;

  int32_t swarmID;
  string taskName;
  string actorName;
  int32_t robotID;
  string timeStamp;
  Pose6D robotPose;
  Pose6D sensorPose;
  string dataType;
  //vector<uint8_t> data;
  uint8_t* data;
};
std::ostream &operator<<(std::ostream &s, const UnifiedData &p);
} // namespace octomath

#endif
