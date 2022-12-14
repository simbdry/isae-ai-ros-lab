// Generated by gencpp from file ai_robotics_lab/FFSolve.msg
// DO NOT EDIT!


#ifndef AI_ROBOTICS_LAB_MESSAGE_FFSOLVE_H
#define AI_ROBOTICS_LAB_MESSAGE_FFSOLVE_H

#include <ros/service_traits.h>


#include <ai_robotics_lab/FFSolveRequest.h>
#include <ai_robotics_lab/FFSolveResponse.h>


namespace ai_robotics_lab
{

struct FFSolve
{

typedef FFSolveRequest Request;
typedef FFSolveResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct FFSolve
} // namespace ai_robotics_lab


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ai_robotics_lab::FFSolve > {
  static const char* value()
  {
    return "d96a9b13dd37d100fa5867634e70f142";
  }

  static const char* value(const ::ai_robotics_lab::FFSolve&) { return value(); }
};

template<>
struct DataType< ::ai_robotics_lab::FFSolve > {
  static const char* value()
  {
    return "ai_robotics_lab/FFSolve";
  }

  static const char* value(const ::ai_robotics_lab::FFSolve&) { return value(); }
};


// service_traits::MD5Sum< ::ai_robotics_lab::FFSolveRequest> should match
// service_traits::MD5Sum< ::ai_robotics_lab::FFSolve >
template<>
struct MD5Sum< ::ai_robotics_lab::FFSolveRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ai_robotics_lab::FFSolve >::value();
  }
  static const char* value(const ::ai_robotics_lab::FFSolveRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ai_robotics_lab::FFSolveRequest> should match
// service_traits::DataType< ::ai_robotics_lab::FFSolve >
template<>
struct DataType< ::ai_robotics_lab::FFSolveRequest>
{
  static const char* value()
  {
    return DataType< ::ai_robotics_lab::FFSolve >::value();
  }
  static const char* value(const ::ai_robotics_lab::FFSolveRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ai_robotics_lab::FFSolveResponse> should match
// service_traits::MD5Sum< ::ai_robotics_lab::FFSolve >
template<>
struct MD5Sum< ::ai_robotics_lab::FFSolveResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ai_robotics_lab::FFSolve >::value();
  }
  static const char* value(const ::ai_robotics_lab::FFSolveResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ai_robotics_lab::FFSolveResponse> should match
// service_traits::DataType< ::ai_robotics_lab::FFSolve >
template<>
struct DataType< ::ai_robotics_lab::FFSolveResponse>
{
  static const char* value()
  {
    return DataType< ::ai_robotics_lab::FFSolve >::value();
  }
  static const char* value(const ::ai_robotics_lab::FFSolveResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // AI_ROBOTICS_LAB_MESSAGE_FFSOLVE_H
