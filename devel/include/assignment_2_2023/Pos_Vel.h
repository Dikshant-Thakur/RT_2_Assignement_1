// Generated by gencpp from file assignment_2_2023/Pos_Vel.msg
// DO NOT EDIT!


#ifndef ASSIGNMENT_2_2023_MESSAGE_POS_VEL_H
#define ASSIGNMENT_2_2023_MESSAGE_POS_VEL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace assignment_2_2023
{
template <class ContainerAllocator>
struct Pos_Vel_
{
  typedef Pos_Vel_<ContainerAllocator> Type;

  Pos_Vel_()
    : robpos_x(0.0)
    , robpos_y(0.0)
    , robvel_x(0.0)
    , robvel_y(0.0)  {
    }
  Pos_Vel_(const ContainerAllocator& _alloc)
    : robpos_x(0.0)
    , robpos_y(0.0)
    , robvel_x(0.0)
    , robvel_y(0.0)  {
  (void)_alloc;
    }



   typedef double _robpos_x_type;
  _robpos_x_type robpos_x;

   typedef double _robpos_y_type;
  _robpos_y_type robpos_y;

   typedef double _robvel_x_type;
  _robvel_x_type robvel_x;

   typedef double _robvel_y_type;
  _robvel_y_type robvel_y;





  typedef boost::shared_ptr< ::assignment_2_2023::Pos_Vel_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::assignment_2_2023::Pos_Vel_<ContainerAllocator> const> ConstPtr;

}; // struct Pos_Vel_

typedef ::assignment_2_2023::Pos_Vel_<std::allocator<void> > Pos_Vel;

typedef boost::shared_ptr< ::assignment_2_2023::Pos_Vel > Pos_VelPtr;
typedef boost::shared_ptr< ::assignment_2_2023::Pos_Vel const> Pos_VelConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::assignment_2_2023::Pos_Vel_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::assignment_2_2023::Pos_Vel_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::assignment_2_2023::Pos_Vel_<ContainerAllocator1> & lhs, const ::assignment_2_2023::Pos_Vel_<ContainerAllocator2> & rhs)
{
  return lhs.robpos_x == rhs.robpos_x &&
    lhs.robpos_y == rhs.robpos_y &&
    lhs.robvel_x == rhs.robvel_x &&
    lhs.robvel_y == rhs.robvel_y;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::assignment_2_2023::Pos_Vel_<ContainerAllocator1> & lhs, const ::assignment_2_2023::Pos_Vel_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace assignment_2_2023

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::assignment_2_2023::Pos_Vel_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::assignment_2_2023::Pos_Vel_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::assignment_2_2023::Pos_Vel_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::assignment_2_2023::Pos_Vel_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assignment_2_2023::Pos_Vel_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assignment_2_2023::Pos_Vel_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::assignment_2_2023::Pos_Vel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "02c2eea77b57a6515b01afba1c028320";
  }

  static const char* value(const ::assignment_2_2023::Pos_Vel_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x02c2eea77b57a651ULL;
  static const uint64_t static_value2 = 0x5b01afba1c028320ULL;
};

template<class ContainerAllocator>
struct DataType< ::assignment_2_2023::Pos_Vel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "assignment_2_2023/Pos_Vel";
  }

  static const char* value(const ::assignment_2_2023::Pos_Vel_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::assignment_2_2023::Pos_Vel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# custom.msg\n"
"float64 robpos_x\n"
"float64 robpos_y\n"
"float64 robvel_x\n"
"float64 robvel_y\n"
;
  }

  static const char* value(const ::assignment_2_2023::Pos_Vel_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::assignment_2_2023::Pos_Vel_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.robpos_x);
      stream.next(m.robpos_y);
      stream.next(m.robvel_x);
      stream.next(m.robvel_y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Pos_Vel_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::assignment_2_2023::Pos_Vel_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::assignment_2_2023::Pos_Vel_<ContainerAllocator>& v)
  {
    s << indent << "robpos_x: ";
    Printer<double>::stream(s, indent + "  ", v.robpos_x);
    s << indent << "robpos_y: ";
    Printer<double>::stream(s, indent + "  ", v.robpos_y);
    s << indent << "robvel_x: ";
    Printer<double>::stream(s, indent + "  ", v.robvel_x);
    s << indent << "robvel_y: ";
    Printer<double>::stream(s, indent + "  ", v.robvel_y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ASSIGNMENT_2_2023_MESSAGE_POS_VEL_H