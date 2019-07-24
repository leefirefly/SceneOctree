// author: LiLiang
// date: 2019-07-10
// useage: this dataType is created for represent LeafData Msg

#include <scene_octree_ros/LeafData.h>
#include <math.h>

namespace octomath
{
LeafData::LeafData() {}

LeafData::LeafData(const abstract_msgs::QueryResult &_query_result){
//LeafData::LeafData(const int &_query_result){
  query_result = _query_result;
}

LeafData::~LeafData() {}

LeafData &LeafData::operator=(const LeafData &other)
{
  query_result = other.query_result;
  return *this;
}
/* 
bool LeafData::operator==(const LeafData &other) const
{
  return query_result == other.query_result;
}
bool LeafData::operator!=(const LeafData &other) const
{
  return !(*this == other);
}
std::ostream &operator<<(std::ostream &s, const LeafData &p)
{
  s << "swarmID:: "<<p.swarmID<<"  taskName::"<<p.taskName<<"  actorName::"<<p.actorName<<"  robotID::"<<
    p.robotID<<"  timeStamp::"<<p.timeStamp<<"  robotPose::"<<p.robotPose<<"  sensorPose::"<<p.sensorPose<<
    "  dataType::"<<p.dataType;
  return s;
}
*/
} // namespace octomath
