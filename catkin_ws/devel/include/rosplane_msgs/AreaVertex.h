// Generated by gencpp from file rosplane_msgs/AreaVertex.msg
// DO NOT EDIT!


#ifndef ROSPLANE_MSGS_MESSAGE_AREAVERTEX_H
#define ROSPLANE_MSGS_MESSAGE_AREAVERTEX_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point32.h>

namespace rosplane_msgs
{
template <class ContainerAllocator>
struct AreaVertex_
{
  typedef AreaVertex_<ContainerAllocator> Type;

  AreaVertex_()
    : vertex()  {
    }
  AreaVertex_(const ContainerAllocator& _alloc)
    : vertex(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::geometry_msgs::Point32_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Point32_<ContainerAllocator> >::other >  _vertex_type;
  _vertex_type vertex;





  typedef boost::shared_ptr< ::rosplane_msgs::AreaVertex_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rosplane_msgs::AreaVertex_<ContainerAllocator> const> ConstPtr;

}; // struct AreaVertex_

typedef ::rosplane_msgs::AreaVertex_<std::allocator<void> > AreaVertex;

typedef boost::shared_ptr< ::rosplane_msgs::AreaVertex > AreaVertexPtr;
typedef boost::shared_ptr< ::rosplane_msgs::AreaVertex const> AreaVertexConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rosplane_msgs::AreaVertex_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rosplane_msgs::AreaVertex_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rosplane_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'rosplane_msgs': ['/home/lee_firefly/catkin_ws/src/rosplane_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rosplane_msgs::AreaVertex_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosplane_msgs::AreaVertex_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosplane_msgs::AreaVertex_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosplane_msgs::AreaVertex_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosplane_msgs::AreaVertex_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosplane_msgs::AreaVertex_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rosplane_msgs::AreaVertex_<ContainerAllocator> >
{
  static const char* value()
  {
    return "14cd74da022c4112a0d5026e4bbe427c";
  }

  static const char* value(const ::rosplane_msgs::AreaVertex_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x14cd74da022c4112ULL;
  static const uint64_t static_value2 = 0xa0d5026e4bbe427cULL;
};

template<class ContainerAllocator>
struct DataType< ::rosplane_msgs::AreaVertex_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rosplane_msgs/AreaVertex";
  }

  static const char* value(const ::rosplane_msgs::AreaVertex_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rosplane_msgs::AreaVertex_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
geometry_msgs/Point32[] vertex\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point32\n\
# This contains the position of a point in free space(with 32 bits of precision).\n\
# It is recommeded to use Point wherever possible instead of Point32.  \n\
# \n\
# This recommendation is to promote interoperability.  \n\
#\n\
# This message is designed to take up less space when sending\n\
# lots of points at once, as in the case of a PointCloud.  \n\
\n\
float32 x\n\
float32 y\n\
float32 z\n\
";
  }

  static const char* value(const ::rosplane_msgs::AreaVertex_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rosplane_msgs::AreaVertex_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.vertex);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AreaVertex_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rosplane_msgs::AreaVertex_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rosplane_msgs::AreaVertex_<ContainerAllocator>& v)
  {
    s << indent << "vertex[]" << std::endl;
    for (size_t i = 0; i < v.vertex.size(); ++i)
    {
      s << indent << "  vertex[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Point32_<ContainerAllocator> >::stream(s, indent + "    ", v.vertex[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSPLANE_MSGS_MESSAGE_AREAVERTEX_H
