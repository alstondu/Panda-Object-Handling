// Generated by gencpp from file moveit_solution/set_arm.msg
// DO NOT EDIT!


#ifndef MOVEIT_SOLUTION_MESSAGE_SET_ARM_H
#define MOVEIT_SOLUTION_MESSAGE_SET_ARM_H

#include <ros/service_traits.h>


#include <moveit_solution/set_armRequest.h>
#include <moveit_solution/set_armResponse.h>


namespace moveit_solution
{

struct set_arm
{

typedef set_armRequest Request;
typedef set_armResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct set_arm
} // namespace moveit_solution


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::moveit_solution::set_arm > {
  static const char* value()
  {
    return "b66f4c8c2fa81b98544cf0f3e10950ee";
  }

  static const char* value(const ::moveit_solution::set_arm&) { return value(); }
};

template<>
struct DataType< ::moveit_solution::set_arm > {
  static const char* value()
  {
    return "moveit_solution/set_arm";
  }

  static const char* value(const ::moveit_solution::set_arm&) { return value(); }
};


// service_traits::MD5Sum< ::moveit_solution::set_armRequest> should match
// service_traits::MD5Sum< ::moveit_solution::set_arm >
template<>
struct MD5Sum< ::moveit_solution::set_armRequest>
{
  static const char* value()
  {
    return MD5Sum< ::moveit_solution::set_arm >::value();
  }
  static const char* value(const ::moveit_solution::set_armRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::moveit_solution::set_armRequest> should match
// service_traits::DataType< ::moveit_solution::set_arm >
template<>
struct DataType< ::moveit_solution::set_armRequest>
{
  static const char* value()
  {
    return DataType< ::moveit_solution::set_arm >::value();
  }
  static const char* value(const ::moveit_solution::set_armRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::moveit_solution::set_armResponse> should match
// service_traits::MD5Sum< ::moveit_solution::set_arm >
template<>
struct MD5Sum< ::moveit_solution::set_armResponse>
{
  static const char* value()
  {
    return MD5Sum< ::moveit_solution::set_arm >::value();
  }
  static const char* value(const ::moveit_solution::set_armResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::moveit_solution::set_armResponse> should match
// service_traits::DataType< ::moveit_solution::set_arm >
template<>
struct DataType< ::moveit_solution::set_armResponse>
{
  static const char* value()
  {
    return DataType< ::moveit_solution::set_arm >::value();
  }
  static const char* value(const ::moveit_solution::set_armResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MOVEIT_SOLUTION_MESSAGE_SET_ARM_H
