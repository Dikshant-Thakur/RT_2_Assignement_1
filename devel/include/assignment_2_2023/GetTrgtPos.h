// Generated by gencpp from file assignment_2_2023/GetTrgtPos.msg
// DO NOT EDIT!


#ifndef ASSIGNMENT_2_2023_MESSAGE_GETTRGTPOS_H
#define ASSIGNMENT_2_2023_MESSAGE_GETTRGTPOS_H

#include <ros/service_traits.h>


#include <assignment_2_2023/GetTrgtPosRequest.h>
#include <assignment_2_2023/GetTrgtPosResponse.h>


namespace assignment_2_2023
{

struct GetTrgtPos
{

typedef GetTrgtPosRequest Request;
typedef GetTrgtPosResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetTrgtPos
} // namespace assignment_2_2023


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::assignment_2_2023::GetTrgtPos > {
  static const char* value()
  {
    return "69bccf2d816940d53024849772a83192";
  }

  static const char* value(const ::assignment_2_2023::GetTrgtPos&) { return value(); }
};

template<>
struct DataType< ::assignment_2_2023::GetTrgtPos > {
  static const char* value()
  {
    return "assignment_2_2023/GetTrgtPos";
  }

  static const char* value(const ::assignment_2_2023::GetTrgtPos&) { return value(); }
};


// service_traits::MD5Sum< ::assignment_2_2023::GetTrgtPosRequest> should match
// service_traits::MD5Sum< ::assignment_2_2023::GetTrgtPos >
template<>
struct MD5Sum< ::assignment_2_2023::GetTrgtPosRequest>
{
  static const char* value()
  {
    return MD5Sum< ::assignment_2_2023::GetTrgtPos >::value();
  }
  static const char* value(const ::assignment_2_2023::GetTrgtPosRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::assignment_2_2023::GetTrgtPosRequest> should match
// service_traits::DataType< ::assignment_2_2023::GetTrgtPos >
template<>
struct DataType< ::assignment_2_2023::GetTrgtPosRequest>
{
  static const char* value()
  {
    return DataType< ::assignment_2_2023::GetTrgtPos >::value();
  }
  static const char* value(const ::assignment_2_2023::GetTrgtPosRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::assignment_2_2023::GetTrgtPosResponse> should match
// service_traits::MD5Sum< ::assignment_2_2023::GetTrgtPos >
template<>
struct MD5Sum< ::assignment_2_2023::GetTrgtPosResponse>
{
  static const char* value()
  {
    return MD5Sum< ::assignment_2_2023::GetTrgtPos >::value();
  }
  static const char* value(const ::assignment_2_2023::GetTrgtPosResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::assignment_2_2023::GetTrgtPosResponse> should match
// service_traits::DataType< ::assignment_2_2023::GetTrgtPos >
template<>
struct DataType< ::assignment_2_2023::GetTrgtPosResponse>
{
  static const char* value()
  {
    return DataType< ::assignment_2_2023::GetTrgtPos >::value();
  }
  static const char* value(const ::assignment_2_2023::GetTrgtPosResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ASSIGNMENT_2_2023_MESSAGE_GETTRGTPOS_H
