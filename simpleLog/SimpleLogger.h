#pragma once

#include <vector>
#include <string>
#include <functional>
#include "boost/noncopyable.hpp"


class SimpleLogger
: boost::noncopyable
{
public:
  enum LogType{
    ERROR = 0,
    INFO = 1,
    TRACE = 2
  };
  using OutputFunc = std::function<void (const char*, int)>;
  using FlushFunc = std::function<void ()>;
public:
  SimpleLogger(LogType lt);
  ~SimpleLogger();

  SimpleLogger& operator<<(std::string str);
  static LogType LogLevel(){  return globalLogLevel_; }
  static void SetLogLevel(LogType lt){  globalLogLevel_ = lt; }
  static void SetOutput(OutputFunc func){ outputFunc_ = func; }
  static void SetFlush(FlushFunc func){ flushFunc_ = func; }
private:
  void format();
  void append(const char*data, int len);

private:
  static LogType globalLogLevel_;
  LogType currLogLevel_;
  std::string buffer_;
  static OutputFunc outputFunc_;  
  static FlushFunc flushFunc_;
};


#define LOG_TRACE if (SimpleLogger::LogLevel() >= SimpleLogger::LogType::TRACE)\
  SimpleLogger(SimpleLogger::LogType::TRACE)
#define LOG_INFO SimpleLogger(SimpleLogger::LogType::INFO)
#define LOG_ERROR SimpleLogger(SimpleLogger::LogType::ERROR)
