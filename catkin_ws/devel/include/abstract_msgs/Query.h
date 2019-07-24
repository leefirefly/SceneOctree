// Generated by gencpp from file abstract_msgs/Query.msg
// DO NOT EDIT!


#ifndef ABSTRACT_MSGS_MESSAGE_QUERY_H
#define ABSTRACT_MSGS_MESSAGE_QUERY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace abstract_msgs
{
template <class ContainerAllocator>
struct Query_
{
  typedef Query_<ContainerAllocator> Type;

  Query_()
    : xMin(0.0)
    , xMax(0.0)
    , yMin(0.0)
    , yMax(0.0)
    , zMin(0.0)
    , zMax(0.0)
    , timeStart()
    , timeEnd()
    , frequency(0)
    , swarmID(0)
    , taskName()
    , actorName()
    , robotID(0)
    , dataTypeVec()  {
    }
  Query_(const ContainerAllocator& _alloc)
    : xMin(0.0)
    , xMax(0.0)
    , yMin(0.0)
    , yMax(0.0)
    , zMin(0.0)
    , zMax(0.0)
    , timeStart(_alloc)
    , timeEnd(_alloc)
    , frequency(0)
    , swarmID(0)
    , taskName(_alloc)
    , actorName(_alloc)
    , robotID(0)
    , dataTypeVec(_alloc)  {
  (void)_alloc;
    }



   typedef double _xMin_type;
  _xMin_type xMin;

   typedef double _xMax_type;
  _xMax_type xMax;

   typedef double _yMin_type;
  _yMin_type yMin;

   typedef double _yMax_type;
  _yMax_type yMax;

   typedef double _zMin_type;
  _zMin_type zMin;

   typedef double _zMax_type;
  _zMax_type zMax;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _timeStart_type;
  _timeStart_type timeStart;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _timeEnd_type;
  _timeEnd_type timeEnd;

   typedef int32_t _frequency_type;
  _frequency_type frequency;

   typedef int32_t _swarmID_type;
  _swarmID_type swarmID;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _taskName_type;
  _taskName_type taskName;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _actorName_type;
  _actorName_type actorName;

   typedef int32_t _robotID_type;
  _robotID_type robotID;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _dataTypeVec_type;
  _dataTypeVec_type dataTypeVec;





  typedef boost::shared_ptr< ::abstract_msgs::Query_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::abstract_msgs::Query_<ContainerAllocator> const> ConstPtr;

}; // struct Query_

typedef ::abstract_msgs::Query_<std::allocator<void> > Query;

typedef boost::shared_ptr< ::abstract_msgs::Query > QueryPtr;
typedef boost::shared_ptr< ::abstract_msgs::Query const> QueryConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::abstract_msgs::Query_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::abstract_msgs::Query_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace abstract_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'abstract_msgs': ['/home/lee_firefly/catkin_ws/src/abstract_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::abstract_msgs::Query_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::abstract_msgs::Query_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::abstract_msgs::Query_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::abstract_msgs::Query_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::abstract_msgs::Query_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::abstract_msgs::Query_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::abstract_msgs::Query_<ContainerAllocator> >
{
  static const char* value()
  {
    return "708be305c5f963a9c77602e531dba1e3";
  }

  static const char* value(const ::abstract_msgs::Query_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x708be305c5f963a9ULL;
  static const uint64_t static_value2 = 0xc77602e531dba1e3ULL;
};

template<class ContainerAllocator>
struct DataType< ::abstract_msgs::Query_<ContainerAllocator> >
{
  static const char* value()
  {
    return "abstract_msgs/Query";
  }

  static const char* value(const ::abstract_msgs::Query_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::abstract_msgs::Query_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 xMin\n\
float64 xMax\n\
float64 yMin\n\
float64 yMax\n\
float64 zMin\n\
float64 zMax\n\
\n\
string timeStart\n\
string timeEnd\n\
\n\
int32 frequency\n\
\n\
int32 swarmID\n\
string taskName\n\
string actorName\n\
int32 robotID\n\
string[] dataTypeVec\n\
";
  }

  static const char* value(const ::abstract_msgs::Query_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::abstract_msgs::Query_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.xMin);
      stream.next(m.xMax);
      stream.next(m.yMin);
      stream.next(m.yMax);
      stream.next(m.zMin);
      stream.next(m.zMax);
      stream.next(m.timeStart);
      stream.next(m.timeEnd);
      stream.next(m.frequency);
      stream.next(m.swarmID);
      stream.next(m.taskName);
      stream.next(m.actorName);
      stream.next(m.robotID);
      stream.next(m.dataTypeVec);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Query_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::abstract_msgs::Query_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::abstract_msgs::Query_<ContainerAllocator>& v)
  {
    s << indent << "xMin: ";
    Printer<double>::stream(s, indent + "  ", v.xMin);
    s << indent << "xMax: ";
    Printer<double>::stream(s, indent + "  ", v.xMax);
    s << indent << "yMin: ";
    Printer<double>::stream(s, indent + "  ", v.yMin);
    s << indent << "yMax: ";
    Printer<double>::stream(s, indent + "  ", v.yMax);
    s << indent << "zMin: ";
    Printer<double>::stream(s, indent + "  ", v.zMin);
    s << indent << "zMax: ";
    Printer<double>::stream(s, indent + "  ", v.zMax);
    s << indent << "timeStart: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.timeStart);
    s << indent << "timeEnd: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.timeEnd);
    s << indent << "frequency: ";
    Printer<int32_t>::stream(s, indent + "  ", v.frequency);
    s << indent << "swarmID: ";
    Printer<int32_t>::stream(s, indent + "  ", v.swarmID);
    s << indent << "taskName: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.taskName);
    s << indent << "actorName: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.actorName);
    s << indent << "robotID: ";
    Printer<int32_t>::stream(s, indent + "  ", v.robotID);
    s << indent << "dataTypeVec[]" << std::endl;
    for (size_t i = 0; i < v.dataTypeVec.size(); ++i)
    {
      s << indent << "  dataTypeVec[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.dataTypeVec[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ABSTRACT_MSGS_MESSAGE_QUERY_H
