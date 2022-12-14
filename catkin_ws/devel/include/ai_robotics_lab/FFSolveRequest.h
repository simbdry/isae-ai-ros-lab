// Generated by gencpp from file ai_robotics_lab/FFSolveRequest.msg
// DO NOT EDIT!


#ifndef AI_ROBOTICS_LAB_MESSAGE_FFSOLVEREQUEST_H
#define AI_ROBOTICS_LAB_MESSAGE_FFSOLVEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ai_robotics_lab
{
template <class ContainerAllocator>
struct FFSolveRequest_
{
  typedef FFSolveRequest_<ContainerAllocator> Type;

  FFSolveRequest_()
    : domain()
    , problem()  {
    }
  FFSolveRequest_(const ContainerAllocator& _alloc)
    : domain(_alloc)
    , problem(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _domain_type;
  _domain_type domain;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _problem_type;
  _problem_type problem;





  typedef boost::shared_ptr< ::ai_robotics_lab::FFSolveRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ai_robotics_lab::FFSolveRequest_<ContainerAllocator> const> ConstPtr;

}; // struct FFSolveRequest_

typedef ::ai_robotics_lab::FFSolveRequest_<std::allocator<void> > FFSolveRequest;

typedef boost::shared_ptr< ::ai_robotics_lab::FFSolveRequest > FFSolveRequestPtr;
typedef boost::shared_ptr< ::ai_robotics_lab::FFSolveRequest const> FFSolveRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ai_robotics_lab::FFSolveRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ai_robotics_lab::FFSolveRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ai_robotics_lab::FFSolveRequest_<ContainerAllocator1> & lhs, const ::ai_robotics_lab::FFSolveRequest_<ContainerAllocator2> & rhs)
{
  return lhs.domain == rhs.domain &&
    lhs.problem == rhs.problem;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ai_robotics_lab::FFSolveRequest_<ContainerAllocator1> & lhs, const ::ai_robotics_lab::FFSolveRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ai_robotics_lab

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ai_robotics_lab::FFSolveRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ai_robotics_lab::FFSolveRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ai_robotics_lab::FFSolveRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ai_robotics_lab::FFSolveRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ai_robotics_lab::FFSolveRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ai_robotics_lab::FFSolveRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ai_robotics_lab::FFSolveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1f5ca2d1d81cd59b21f5124dc8550b58";
  }

  static const char* value(const ::ai_robotics_lab::FFSolveRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1f5ca2d1d81cd59bULL;
  static const uint64_t static_value2 = 0x21f5124dc8550b58ULL;
};

template<class ContainerAllocator>
struct DataType< ::ai_robotics_lab::FFSolveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ai_robotics_lab/FFSolveRequest";
  }

  static const char* value(const ::ai_robotics_lab::FFSolveRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ai_robotics_lab::FFSolveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string domain\n"
"string problem\n"
;
  }

  static const char* value(const ::ai_robotics_lab::FFSolveRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ai_robotics_lab::FFSolveRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.domain);
      stream.next(m.problem);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FFSolveRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ai_robotics_lab::FFSolveRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ai_robotics_lab::FFSolveRequest_<ContainerAllocator>& v)
  {
    s << indent << "domain: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.domain);
    s << indent << "problem: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.problem);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AI_ROBOTICS_LAB_MESSAGE_FFSOLVEREQUEST_H
