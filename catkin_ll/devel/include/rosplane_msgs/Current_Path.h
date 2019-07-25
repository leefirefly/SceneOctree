// Generated by gencpp from file rosplane_msgs/Current_Path.msg
// DO NOT EDIT!


#ifndef ROSPLANE_MSGS_MESSAGE_CURRENT_PATH_H
#define ROSPLANE_MSGS_MESSAGE_CURRENT_PATH_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rosplane_msgs
{
template <class ContainerAllocator>
struct Current_Path_
{
  typedef Current_Path_<ContainerAllocator> Type;

  Current_Path_()
    : path_type(0)
    , Va_d(0.0)
    , r()
    , q()
    , c()
    , rho(0.0)
    , h_c(0.0)
    , lambda(0)
    , landing(false)  {
      r.assign(0.0);

      q.assign(0.0);

      c.assign(0.0);
  }
  Current_Path_(const ContainerAllocator& _alloc)
    : path_type(0)
    , Va_d(0.0)
    , r()
    , q()
    , c()
    , rho(0.0)
    , h_c(0.0)
    , lambda(0)
    , landing(false)  {
  (void)_alloc;
      r.assign(0.0);

      q.assign(0.0);

      c.assign(0.0);
  }



   typedef uint8_t _path_type_type;
  _path_type_type path_type;

   typedef float _Va_d_type;
  _Va_d_type Va_d;

   typedef boost::array<float, 3>  _r_type;
  _r_type r;

   typedef boost::array<float, 3>  _q_type;
  _q_type q;

   typedef boost::array<float, 3>  _c_type;
  _c_type c;

   typedef float _rho_type;
  _rho_type rho;

   typedef float _h_c_type;
  _h_c_type h_c;

   typedef int8_t _lambda_type;
  _lambda_type lambda;

   typedef uint8_t _landing_type;
  _landing_type landing;



  enum {
    ORBIT_PATH = 0u,
    LINE_PATH = 1u,
    CLOCKWISE = 1,
    COUNT_CLOCKWISE = -1,
  };


  typedef boost::shared_ptr< ::rosplane_msgs::Current_Path_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rosplane_msgs::Current_Path_<ContainerAllocator> const> ConstPtr;

}; // struct Current_Path_

typedef ::rosplane_msgs::Current_Path_<std::allocator<void> > Current_Path;

typedef boost::shared_ptr< ::rosplane_msgs::Current_Path > Current_PathPtr;
typedef boost::shared_ptr< ::rosplane_msgs::Current_Path const> Current_PathConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rosplane_msgs::Current_Path_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rosplane_msgs::Current_Path_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rosplane_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'rosplane_msgs': ['/home/lee_firefly/SceneOcTree/catkin_ll/src/rosplane_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rosplane_msgs::Current_Path_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosplane_msgs::Current_Path_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosplane_msgs::Current_Path_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosplane_msgs::Current_Path_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosplane_msgs::Current_Path_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosplane_msgs::Current_Path_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rosplane_msgs::Current_Path_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b52f013e59f3829f22fea8be747f9d25";
  }

  static const char* value(const ::rosplane_msgs::Current_Path_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb52f013e59f3829fULL;
  static const uint64_t static_value2 = 0x22fea8be747f9d25ULL;
};

template<class ContainerAllocator>
struct DataType< ::rosplane_msgs::Current_Path_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rosplane_msgs/Current_Path";
  }

  static const char* value(const ::rosplane_msgs::Current_Path_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rosplane_msgs::Current_Path_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Current path output from the path manager, input to path follower\n\
\n\
# @warning Va_d have always to be valid,\n\
# r and q need to be valid if path_type == LINE_PATH\n\
# c, rho, and, lambda need to be valid if path_type == ORBIT_PATH\n\
uint8 path_type		# Indicates strait line or orbital path\n\
float32 Va_d		# Desired airspeed (m/s)\n\
float32[3] r		# Vector to origin of straight line path (m)\n\
float32[3] q		# Unit vector, desired direction of travel for line path\n\
float32[3] c		# Center of orbital path (m)\n\
float32 rho		# Radius of orbital path (m)\n\
float32 h_c             # desire altitude (m) add by kobe\n\
int8 lambda		# Direction of orbital path (clockwise is 1, counterclockwise is -1)\n\
\n\
uint8 ORBIT_PATH = 0\n\
uint8 LINE_PATH = 1\n\
\n\
int8 CLOCKWISE = 1\n\
int8 COUNT_CLOCKWISE = -1\n\
\n\
bool landing	   #added by zhaolin\n\
";
  }

  static const char* value(const ::rosplane_msgs::Current_Path_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rosplane_msgs::Current_Path_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.path_type);
      stream.next(m.Va_d);
      stream.next(m.r);
      stream.next(m.q);
      stream.next(m.c);
      stream.next(m.rho);
      stream.next(m.h_c);
      stream.next(m.lambda);
      stream.next(m.landing);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Current_Path_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rosplane_msgs::Current_Path_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rosplane_msgs::Current_Path_<ContainerAllocator>& v)
  {
    s << indent << "path_type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.path_type);
    s << indent << "Va_d: ";
    Printer<float>::stream(s, indent + "  ", v.Va_d);
    s << indent << "r[]" << std::endl;
    for (size_t i = 0; i < v.r.size(); ++i)
    {
      s << indent << "  r[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.r[i]);
    }
    s << indent << "q[]" << std::endl;
    for (size_t i = 0; i < v.q.size(); ++i)
    {
      s << indent << "  q[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.q[i]);
    }
    s << indent << "c[]" << std::endl;
    for (size_t i = 0; i < v.c.size(); ++i)
    {
      s << indent << "  c[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.c[i]);
    }
    s << indent << "rho: ";
    Printer<float>::stream(s, indent + "  ", v.rho);
    s << indent << "h_c: ";
    Printer<float>::stream(s, indent + "  ", v.h_c);
    s << indent << "lambda: ";
    Printer<int8_t>::stream(s, indent + "  ", v.lambda);
    s << indent << "landing: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.landing);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSPLANE_MSGS_MESSAGE_CURRENT_PATH_H