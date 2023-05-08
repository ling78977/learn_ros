// Generated by gencpp from file serve/AddInts.msg
// DO NOT EDIT!


#ifndef SERVE_MESSAGE_ADDINTS_H
#define SERVE_MESSAGE_ADDINTS_H

#include <ros/service_traits.h>


#include <serve/AddIntsRequest.h>
#include <serve/AddIntsResponse.h>


namespace serve
{

struct AddInts
{

typedef AddIntsRequest Request;
typedef AddIntsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AddInts
} // namespace serve


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::serve::AddInts > {
  static const char* value()
  {
    return "4781436a0c2affec8025955a6041e481";
  }

  static const char* value(const ::serve::AddInts&) { return value(); }
};

template<>
struct DataType< ::serve::AddInts > {
  static const char* value()
  {
    return "serve/AddInts";
  }

  static const char* value(const ::serve::AddInts&) { return value(); }
};


// service_traits::MD5Sum< ::serve::AddIntsRequest> should match
// service_traits::MD5Sum< ::serve::AddInts >
template<>
struct MD5Sum< ::serve::AddIntsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::serve::AddInts >::value();
  }
  static const char* value(const ::serve::AddIntsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::serve::AddIntsRequest> should match
// service_traits::DataType< ::serve::AddInts >
template<>
struct DataType< ::serve::AddIntsRequest>
{
  static const char* value()
  {
    return DataType< ::serve::AddInts >::value();
  }
  static const char* value(const ::serve::AddIntsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::serve::AddIntsResponse> should match
// service_traits::MD5Sum< ::serve::AddInts >
template<>
struct MD5Sum< ::serve::AddIntsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::serve::AddInts >::value();
  }
  static const char* value(const ::serve::AddIntsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::serve::AddIntsResponse> should match
// service_traits::DataType< ::serve::AddInts >
template<>
struct DataType< ::serve::AddIntsResponse>
{
  static const char* value()
  {
    return DataType< ::serve::AddInts >::value();
  }
  static const char* value(const ::serve::AddIntsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SERVE_MESSAGE_ADDINTS_H
