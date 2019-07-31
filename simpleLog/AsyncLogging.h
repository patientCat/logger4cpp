#pragma once

#include "FixedBuffer.h"

#include "muduo/base/Mutex.h"
#include "muduo/base/Condition.h"
#include "muduo/base/CountDownLatch.h"
#include "muduo/base/Thread.h"

class AsyncLogging
{
public:
  using LargeBuffer = FixedBuffer<4*100*1024>;
public:
  AsyncLogging(const std::string &basename, size_t rollSize, int interval = 3);
  ~AsyncLogging();
public:
  void start();
  void stop();
  void append(const char*data, int len);

private:
  void threadFunc();

private:
  std::string basename_;
  size_t rollSize_;
  int interval_;
  bool isRunning_;

  muduo::MutexLock mutex_;
  muduo::Condition cond_;
  muduo::CountDownLatch latch_;

  muduo::Thread thread_;

  LargeBuffer currentBuffer_;
  LargeBuffer backBuffer_;
};
