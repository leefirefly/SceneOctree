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

  LeafData &operator=(const LeafData &other);
//  bool operator==(const LeafData &other) const;
//  bool operator!=(const LeafData &other) const;

  abstract_msgs::QueryResult query_result;
  
};
//std::ostream &operator<<(std::ostream &s, const LeafData &p);
} // namespace octomath

#endif
