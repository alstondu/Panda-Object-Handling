// Generated by gencpp from file cw1_world_spawner/Task1ServiceResponse.msg
// DO NOT EDIT!


#ifndef CW1_WORLD_SPAWNER_MESSAGE_TASK1SERVICERESPONSE_H
#define CW1_WORLD_SPAWNER_MESSAGE_TASK1SERVICERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace cw1_world_spawner
{
template <class ContainerAllocator>
struct Task1ServiceResponse_
{
  typedef Task1ServiceResponse_<ContainerAllocator> Type;

  Task1ServiceResponse_()
    {
    }
  Task1ServiceResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::cw1_world_spawner::Task1ServiceResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cw1_world_spawner::Task1ServiceResponse_<ContainerAllocator> const> ConstPtr;

}; // struct Task1ServiceResponse_

typedef ::cw1_world_spawner::Task1ServiceResponse_<std::allocator<void> > Task1ServiceResponse;

typedef boost::shared_ptr< ::cw1_world_spawner::Task1ServiceResponse > Task1ServiceResponsePtr;
typedef boost::shared_ptr< ::cw1_world_spawner::Task1ServiceResponse const> Task1ServiceResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cw1_world_spawner::Task1ServiceResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cw1_world_spawner::Task1ServiceResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace cw1_world_spawner

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::cw1_world_spawner::Task1ServiceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cw1_world_spawner::Task1ServiceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cw1_world_spawner::Task1ServiceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cw1_world_spawner::Task1ServiceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cw1_world_spawner::Task1ServiceResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cw1_world_spawner::Task1ServiceResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cw1_world_spawner::Task1ServiceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::cw1_world_spawner::Task1ServiceResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::cw1_world_spawner::Task1ServiceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cw1_world_spawner/Task1ServiceResponse";
  }

  static const char* value(const ::cw1_world_spawner::Task1ServiceResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cw1_world_spawner::Task1ServiceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::cw1_world_spawner::Task1ServiceResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cw1_world_spawner::Task1ServiceResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Task1ServiceResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cw1_world_spawner::Task1ServiceResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::cw1_world_spawner::Task1ServiceResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // CW1_WORLD_SPAWNER_MESSAGE_TASK1SERVICERESPONSE_H
