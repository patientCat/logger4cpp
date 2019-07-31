#pragma once

#include <string>
#include <memory>
#include "muduo/base/Mutex.h"


class LogFile
{
public:
  // basename
  LogFile(const std::string&basename, size_t rollSize, int interval);
  ~LogFile();

  void append(const char* logline, int len);
  void flush(){ fflush(file_); }
  void append_unlocked(const char* logline, int len);
private:
  bool rollFile();
  std::string getLogFilename(const std::string&, time_t*);

private:
  std::string basename_;
  size_t rollSize_;
  int interval_;
  time_t lastRoll_;
  time_t lastFlush_;
  int lastRollDayFromEpoch_;
  FILE* file_;
  int fileSize_;
  muduo::MutexLock mutex_;
private:
  static const int kOneDayInSeconds;
};
