// Generated by gencpp from file rm_description/pw.msg
// DO NOT EDIT!


#ifndef RM_DESCRIPTION_MESSAGE_PW_H
#define RM_DESCRIPTION_MESSAGE_PW_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rm_description
{
template <class ContainerAllocator>
struct pw_
{
  typedef pw_<ContainerAllocator> Type;

  pw_()
    : pitch(0.0)
    , yaw(0.0)
    , s(0.0)  {
    }
  pw_(const ContainerAllocator& _alloc)
    : pitch(0.0)
    , yaw(0.0)
    , s(0.0)  {
  (void)_alloc;
    }



   typedef float _pitch_type;
  _pitch_type pitch;

   typedef float _yaw_type;
  _yaw_type yaw;

   typedef float _s_type;
  _s_type s;





  typedef boost::shared_ptr< ::rm_description::pw_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rm_description::pw_<ContainerAllocator> const> ConstPtr;

}; // struct pw_

typedef ::rm_description::pw_<std::allocator<void> > pw;

typedef boost::shared_ptr< ::rm_description::pw > pwPtr;
typedef boost::shared_ptr< ::rm_description::pw const> pwConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rm_description::pw_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rm_description::pw_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rm_description::pw_<ContainerAllocator1> & lhs, const ::rm_description::pw_<ContainerAllocator2> & rhs)
{
  return lhs.pitch == rhs.pitch &&
    lhs.yaw == rhs.yaw &&
    lhs.s == rhs.s;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rm_description::pw_<ContainerAllocator1> & lhs, const ::rm_description::pw_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rm_description

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rm_description::pw_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rm_description::pw_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rm_description::pw_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rm_description::pw_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rm_description::pw_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rm_description::pw_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rm_description::pw_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5bbf025dbed9aa989ef9bcc67b8929d2";
  }

  static const char* value(const ::rm_description::pw_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5bbf025dbed9aa98ULL;
  static const uint64_t static_value2 = 0x9ef9bcc67b8929d2ULL;
};

template<class ContainerAllocator>
struct DataType< ::rm_description::pw_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rm_description/pw";
  }

  static const char* value(const ::rm_description::pw_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rm_description::pw_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 pitch\n"
"float32 yaw\n"
"float32 s\n"
;
  }

  static const char* value(const ::rm_description::pw_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rm_description::pw_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pitch);
      stream.next(m.yaw);
      stream.next(m.s);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct pw_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rm_description::pw_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rm_description::pw_<ContainerAllocator>& v)
  {
    s << indent << "pitch: ";
    Printer<float>::stream(s, indent + "  ", v.pitch);
    s << indent << "yaw: ";
    Printer<float>::stream(s, indent + "  ", v.yaw);
    s << indent << "s: ";
    Printer<float>::stream(s, indent + "  ", v.s);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RM_DESCRIPTION_MESSAGE_PW_H
