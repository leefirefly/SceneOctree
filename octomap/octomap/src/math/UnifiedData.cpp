// author: LiLiang
// date: 2019-07-10
// useage: this dataType is created for represent UnifiedData Msg

#include <octomap/math/UnifiedData.h>
#include <math.h>

namespace octomath
{
UnifiedData::UnifiedData() {}

UnifiedData::UnifiedData(
    const int32_t &_swarmID,
    const string &_taskName,
    const string &_actorName,
    const int32_t &_robotID,
    const string &_timeStamp,
    const Pose6D &_robotPose,
    const Pose6D &_sensorPose,
    const string &_dataType,
    //const vector<uint8_t> &_data
    uint8_t* _data) : robotPose(_robotPose), sensorPose(_sensorPose)
{
  swarmID = _swarmID;
  taskName = _taskName;
  actorName = _actorName;
  robotID = _robotID;
  timeStamp = _timeStamp;
  dataType = _dataType;
  data = _data; 
}
UnifiedData::~UnifiedData() {}

UnifiedData &UnifiedData::operator=(const UnifiedData &other)
{
  swarmID = other.swarmID;
  taskName = other.taskName;
  actorName = other.actorName;
  robotID = other.robotID;
  timeStamp = other.timeStamp;
  robotPose = other.robotPose;
  sensorPose = other.sensorPose;
  dataType = other.dataType;
  data = other.data;
  return *this;
}
bool UnifiedData::operator==(const UnifiedData &other) const
{
  return swarmID == other.swarmID && taskName == other.taskName && actorName == other.actorName && robotID == other.robotID && timeStamp == other.timeStamp && robotPose == other.robotPose && sensorPose == other.sensorPose && dataType == other.dataType && data == other.data;
}
bool UnifiedData::operator!=(const UnifiedData &other) const
{
  return !(*this == other);
}
std::ostream &operator<<(std::ostream &s, const UnifiedData &p)
{
  s << "swarmID:: "<<p.swarmID<<"  taskName::"<<p.taskName<<"  actorName::"<<p.actorName<<"  robotID::"<<
    p.robotID<<"  timeStamp::"<<p.timeStamp<<"  robotPose::"<<p.robotPose<<"  sensorPose::"<<p.sensorPose<<
    "  dataType::"<<p.dataType;
  return s;
}
} // namespace octomath
