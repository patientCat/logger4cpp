//c++ program
//design by >^.^<
//@date    2019-07-27 05:30:04
#include "LogFile.h"
#include <stdio.h>
#include <iostream>
#include "boost/format.hpp"

using namespace std;
using namespace muduo;

const int LogFile::kOneDayInSeconds = 24 * 60 * 60;

LogFile::LogFile(const std::string&basename, size_t rollSize, int interval)
  : basename_(basename)
  , rollSize_(rollSize)
  , interval_(interval)
  , lastRoll_(0)
  , file_(NULL)
  , fileSize_(0)
  , mutex_()
{
  // 第一次滚动
  rollFile();
}

LogFile::~LogFile()
{
  fclose(file_);
}

// 日志滚动
bool
LogFile::rollFile()
{
  fileSize_ = 0;
  time_t now = 0; 
  string filename = getLogFilename(basename_, &now);
  int nowDayFromEpoch = now / kOneDayInSeconds * kOneDayInSeconds;
  if(now > lastRoll_)
  {
    lastRollDayFromEpoch_ = nowDayFromEpoch;
    lastFlush_ = now;
    lastRoll_ = now;
    // 新建一个文件
    file_ = ::fopen(filename.c_str(), "ae");
    return true;
  }
  return false;
}

string 
LogFile::getLogFilename(const string&basename, time_t* now)
{
  string filename;
  filename.reserve(basename.size() + 64);
  filename = basename;
  char timebuf[32];
  struct tm tm;
  *now = time(NULL);
  gmtime_r(now, &tm);
  filename += ".";
  strftime(timebuf, sizeof timebuf, "%Y%m%d-%H%M%S.", &tm);
  filename += timebuf;
  filename += "log";
  return filename;
}

void 
LogFile::append(const char* logline, int len)
{
  MutexLockGuard lock(mutex_);
  append_unlocked(logline, len);
}

void 
LogFile::append_unlocked(const char* logline, int len)
{
  int nwrite = fwrite(logline, 1, len, file_);
  fileSize_ += nwrite;
  cout << boost::format("nwrite = %d, fileSize = %d rollSize = %d\n") %nwrite %fileSize_ %rollSize_;
  if(fileSize_ > rollSize_)
  {
    cout << "rollFile\n";
    rollFile();
  }
  else{
    time_t now = ::time(NULL);
    time_t nowDayFromEpoch = now / kOneDayInSeconds * kOneDayInSeconds;
    if(nowDayFromEpoch != lastRollDayFromEpoch_)
    {
      rollFile();
    }
    else if(now - lastFlush_ > interval_){
      lastFlush_ = now;
      ::fflush(file_);
    }
  }
}
