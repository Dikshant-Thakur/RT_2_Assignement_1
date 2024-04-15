// Generated by gencpp from file assignment_2_2023/LastStatus.msg
// DO NOT EDIT!


#ifndef ASSIGNMENT_2_2023_MESSAGE_LASTSTATUS_H
#define ASSIGNMENT_2_2023_MESSAGE_LASTSTATUS_H

#include <ros/service_traits.h>


#include <assignment_2_2023/LastStatusRequest.h>
#include <assignment_2_2023/LastStatusResponse.h>


namespace assignment_2_2023
{

struct LastStatus
{

typedef LastStatusRequest Request;
typedef LastStatusResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct LastStatus
} // namespace assignment_2_2023


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::assignment_2_2023::LastStatus > {
  static const char* value()
  {
    return "f6cfeb7770557ec0e7e7227af7085b94";
  }

  static const char* value(const ::assignment_2_2023::LastStatus&) { return value(); }
};

template<>
struct DataType< ::assignment_2_2023::LastStatus > {
  static const char* value()
  {
    return "assignment_2_2023/LastStatus";
  }

  static const char* value(const ::assignment_2_2023::LastStatus&) { return value(); }
};


// service_traits::MD5Sum< ::assignment_2_2023::LastStatusRequest> should match
// service_traits::MD5Sum< ::assignment_2_2023::LastStatus >
template<>
struct MD5Sum< ::assignment_2_2023::LastStatusRequest>
{
  static const char* value()
  {
    return MD5Sum< ::assignment_2_2023::LastStatus >::value();
  }
  static const char* value(const ::assignment_2_2023::LastStatusRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::assignment_2_2023::LastStatusRequest> should match
// service_traits::DataType< ::assignment_2_2023::LastStatus >
template<>
struct DataType< ::assignment_2_2023::LastStatusRequest>
{
  static const char* value()
  {
    return DataType< ::assignment_2_2023::LastStatus >::value();
  }
  static const char* value(const ::assignment_2_2023::LastStatusRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::assignment_2_2023::LastStatusResponse> should match
// service_traits::MD5Sum< ::assignment_2_2023::LastStatus >
template<>
struct MD5Sum< ::assignment_2_2023::LastStatusResponse>
{
  static const char* value()
  {
    return MD5Sum< ::assignment_2_2023::LastStatus >::value();
  }
  static const char* value(const ::assignment_2_2023::LastStatusResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::assignment_2_2023::LastStatusResponse> should match
// service_traits::DataType< ::assignment_2_2023::LastStatus >
template<>
struct DataType< ::assignment_2_2023::LastStatusResponse>
{
  static const char* value()
  {
    return DataType< ::assignment_2_2023::LastStatus >::value();
  }
  static const char* value(const ::assignment_2_2023::LastStatusResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ASSIGNMENT_2_2023_MESSAGE_LASTSTATUS_H