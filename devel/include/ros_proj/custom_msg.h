// Generated by gencpp from file ros_proj/custom_msg.msg
// DO NOT EDIT!


#ifndef ROS_PROJ_MESSAGE_CUSTOM_MSG_H
#define ROS_PROJ_MESSAGE_CUSTOM_MSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace ros_proj
{
template <class ContainerAllocator>
struct custom_msg_
{
  typedef custom_msg_<ContainerAllocator> Type;

  custom_msg_()
    : custom_msg()
    , latitude(0.0)
    , longitude(0.0)
    , altitude(0.0)
    , vehicleType()  {
    }
  custom_msg_(const ContainerAllocator& _alloc)
    : custom_msg(_alloc)
    , latitude(0.0)
    , longitude(0.0)
    , altitude(0.0)
    , vehicleType(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _custom_msg_type;
  _custom_msg_type custom_msg;

   typedef float _latitude_type;
  _latitude_type latitude;

   typedef float _longitude_type;
  _longitude_type longitude;

   typedef float _altitude_type;
  _altitude_type altitude;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _vehicleType_type;
  _vehicleType_type vehicleType;





  typedef boost::shared_ptr< ::ros_proj::custom_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_proj::custom_msg_<ContainerAllocator> const> ConstPtr;

}; // struct custom_msg_

typedef ::ros_proj::custom_msg_<std::allocator<void> > custom_msg;

typedef boost::shared_ptr< ::ros_proj::custom_msg > custom_msgPtr;
typedef boost::shared_ptr< ::ros_proj::custom_msg const> custom_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_proj::custom_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_proj::custom_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_proj::custom_msg_<ContainerAllocator1> & lhs, const ::ros_proj::custom_msg_<ContainerAllocator2> & rhs)
{
  return lhs.custom_msg == rhs.custom_msg &&
    lhs.latitude == rhs.latitude &&
    lhs.longitude == rhs.longitude &&
    lhs.altitude == rhs.altitude &&
    lhs.vehicleType == rhs.vehicleType;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_proj::custom_msg_<ContainerAllocator1> & lhs, const ::ros_proj::custom_msg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_proj

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ros_proj::custom_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_proj::custom_msg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_proj::custom_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_proj::custom_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_proj::custom_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_proj::custom_msg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_proj::custom_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3539ef97bcaedc9ae34172e0c5780202";
  }

  static const char* value(const ::ros_proj::custom_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3539ef97bcaedc9aULL;
  static const uint64_t static_value2 = 0xe34172e0c5780202ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_proj::custom_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_proj/custom_msg";
  }

  static const char* value(const ::ros_proj::custom_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_proj::custom_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header custom_msg\n"
"float32 latitude\n"
"float32 longitude\n"
"float32 altitude\n"
"string vehicleType\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::ros_proj::custom_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_proj::custom_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.custom_msg);
      stream.next(m.latitude);
      stream.next(m.longitude);
      stream.next(m.altitude);
      stream.next(m.vehicleType);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct custom_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_proj::custom_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_proj::custom_msg_<ContainerAllocator>& v)
  {
    s << indent << "custom_msg: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.custom_msg);
    s << indent << "latitude: ";
    Printer<float>::stream(s, indent + "  ", v.latitude);
    s << indent << "longitude: ";
    Printer<float>::stream(s, indent + "  ", v.longitude);
    s << indent << "altitude: ";
    Printer<float>::stream(s, indent + "  ", v.altitude);
    s << indent << "vehicleType: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.vehicleType);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_PROJ_MESSAGE_CUSTOM_MSG_H