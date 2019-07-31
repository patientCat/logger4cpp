//c++ program
//design by >^.^<
//@date    2019-07-27 02:31:54
#include "SimpleLogger.h"


void defaultOutput(const char* start, int len)
{
  fwrite(start, 1, len, stdout);
}

void defaultFlush()
{
  fflush(stdout);
}

SimpleLogger::LogType SimpleLogger::globalLogLevel_ = SimpleLogger::LogType::INFO;
SimpleLogger::OutputFunc SimpleLogger::outputFunc_ = defaultOutput;
SimpleLogger::FlushFunc SimpleLogger::flushFunc_ = defaultFlush;

SimpleLogger::SimpleLogger(LogType lt)
  : currLogLevel_(lt)
{
  format();
}

SimpleLogger::~SimpleLogger()
{
  buffer_.push_back('\n');
  outputFunc_(buffer_.c_str(), buffer_.size());
  if(0) // TODO：当设置有FATAL需要程序退出级别的日志时
  {
    flushFunc_();
    abort();
  }
}

SimpleLogger&
SimpleLogger:: operator<<(std::string str)
{
  buffer_.append(str);
  return *this;
}

void
SimpleLogger::format()
{
  switch(currLogLevel_)
  {
    case TRACE:
      buffer_.append("LOG_TRACE: ");
      break;
    case INFO:
      buffer_.append("LOG_INFO: ");
      break;
    case ERROR:
      buffer_.append("LOG_ERROR: ");
      break;
    default:
      buffer_.append("LOG_UNKNOWN: ");
      break;
  }
}
