// Generated by gencpp from file moveit_solution/set_armResponse.msg
// DO NOT EDIT!


#ifndef MOVEIT_SOLUTION_MESSAGE_SET_ARMRESPONSE_H
#define MOVEIT_SOLUTION_MESSAGE_SET_ARMRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace moveit_solution
{
template <class ContainerAllocator>
struct set_armResponse_
{
  typedef set_armResponse_<ContainerAllocator> Type;

  set_armResponse_()
    : success(false)  {
    }
  set_armResponse_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::moveit_solution::set_armResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::moveit_solution::set_armResponse_<ContainerAllocator> const> ConstPtr;

}; // struct set_armResponse_

typedef ::moveit_solution::set_armResponse_<std::allocator<void> > set_armResponse;

typedef boost::shared_ptr< ::moveit_solution::set_armResponse > set_armResponsePtr;
typedef boost::shared_ptr< ::moveit_solution::set_armResponse const> set_armResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::moveit_solution::set_armResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::moveit_solution::set_armResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::moveit_solution::set_armResponse_<ContainerAllocator1> & lhs, const ::moveit_solution::set_armResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::moveit_solution::set_armResponse_<ContainerAllocator1> & lhs, const ::moveit_solution::set_armResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace moveit_solution

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::moveit_solution::set_armResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moveit_solution::set_armResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::moveit_solution::set_armResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::moveit_solution::set_armResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveit_solution::set_armResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveit_solution::set_armResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::moveit_solution::set_armResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::moveit_solution::set_armResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::moveit_solution::set_armResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "moveit_solution/set_armResponse";
  }

  static const char* value(const ::moveit_solution::set_armResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::moveit_solution::set_armResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
"\n"
;
  }

  static const char* value(const ::moveit_solution::set_armResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::moveit_solution::set_armResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct set_armResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::moveit_solution::set_armResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::moveit_solution::set_armResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOVEIT_SOLUTION_MESSAGE_SET_ARMRESPONSE_H
