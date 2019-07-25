// Generated by gencpp from file abstract_msgs/EventSceneMap.msg
// DO NOT EDIT!


#ifndef ABSTRACT_MSGS_MESSAGE_EVENTSCENEMAP_H
#define ABSTRACT_MSGS_MESSAGE_EVENTSCENEMAP_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <abstract_msgs/EventQuery.h>

namespace abstract_msgs
{
template <class ContainerAllocator>
struct EventSceneMap_
{
  typedef EventSceneMap_<ContainerAllocator> Type;

  EventSceneMap_()
    : event()
    , eventVec()  {
    }
  EventSceneMap_(const ContainerAllocator& _alloc)
    : event(_alloc)
    , eventVec(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _event_type;
  _event_type event;

   typedef std::vector< ::abstract_msgs::EventQuery_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::abstract_msgs::EventQuery_<ContainerAllocator> >::other >  _eventVec_type;
  _eventVec_type eventVec;





  typedef boost::shared_ptr< ::abstract_msgs::EventSceneMap_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::abstract_msgs::EventSceneMap_<ContainerAllocator> const> ConstPtr;

}; // struct EventSceneMap_

typedef ::abstract_msgs::EventSceneMap_<std::allocator<void> > EventSceneMap;

typedef boost::shared_ptr< ::abstract_msgs::EventSceneMap > EventSceneMapPtr;
typedef boost::shared_ptr< ::abstract_msgs::EventSceneMap const> EventSceneMapConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::abstract_msgs::EventSceneMap_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::abstract_msgs::EventSceneMap_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace abstract_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'abstract_msgs': ['/home/lee_firefly/SceneOcTree/catkin_ll/src/abstract_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::abstract_msgs::EventSceneMap_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::abstract_msgs::EventSceneMap_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::abstract_msgs::EventSceneMap_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::abstract_msgs::EventSceneMap_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::abstract_msgs::EventSceneMap_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::abstract_msgs::EventSceneMap_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::abstract_msgs::EventSceneMap_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f2becf816840a945292dcaa58be0823d";
  }

  static const char* value(const ::abstract_msgs::EventSceneMap_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf2becf816840a945ULL;
  static const uint64_t static_value2 = 0x292dcaa58be0823dULL;
};

template<class ContainerAllocator>
struct DataType< ::abstract_msgs::EventSceneMap_<ContainerAllocator> >
{
  static const char* value()
  {
    return "abstract_msgs/EventSceneMap";
  }

  static const char* value(const ::abstract_msgs::EventSceneMap_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::abstract_msgs::EventSceneMap_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string event\n\
#string[] sceneName\n\
#string[] layerName\n\
#int32[] receiverID\n\
\n\
EventQuery[] eventVec\n\
================================================================================\n\
MSG: abstract_msgs/EventQuery\n\
string event\n\
string sceneName\n\
string layerName\n\
int32 receiverID\n\
\n\
bool spaceConstraint\n\
float64 xMin\n\
float64 xMax\n\
float64 yMin\n\
float64 yMax\n\
float64 zMin\n\
float64 zMax\n\
\n\
bool isStop\n\
";
  }

  static const char* value(const ::abstract_msgs::EventSceneMap_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::abstract_msgs::EventSceneMap_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.event);
      stream.next(m.eventVec);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EventSceneMap_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::abstract_msgs::EventSceneMap_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::abstract_msgs::EventSceneMap_<ContainerAllocator>& v)
  {
    s << indent << "event: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.event);
    s << indent << "eventVec[]" << std::endl;
    for (size_t i = 0; i < v.eventVec.size(); ++i)
    {
      s << indent << "  eventVec[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::abstract_msgs::EventQuery_<ContainerAllocator> >::stream(s, indent + "    ", v.eventVec[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ABSTRACT_MSGS_MESSAGE_EVENTSCENEMAP_H