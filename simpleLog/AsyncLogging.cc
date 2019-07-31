//c++ program
//design by >^.^<
//@date    2019-07-29 07:22:11
#include "AsyncLogging.h"
#include "LogFile.h"
#include <functional>
#include <unistd.h>
#include <iostream>
#include <algorithm>

using namespace muduo;
using namespace std;

AsyncLogging::AsyncLogging(const string& basename,size_t rollSize, int interval)
  : basename_(basename)
  , rollSize_(rollSize)
  , interval_(interval)
  , isRunning_(false)
  , mutex_()
  , cond_(mutex_)
  , latch_(1)
  , thread_(bind(&AsyncLogging::threadFunc, this))
  , currentBuffer_()
  , backBuffer_()
{
}


AsyncLogging::~AsyncLogging()
{
  if(isRunning_)
    stop();
}

void
AsyncLogging::start()
{
  isRunning_ = true;
  thread_.start();
  latch_.wait();
  
}

void 
AsyncLogging::stop()
{
  isRunning_ = false;
  cond_.notify();
  thread_.join();
}

void 
AsyncLogging::threadFunc()
{
  assert(isRunning_ == true);
  latch_.countDown();
  LogFile logFile(basename_, rollSize_, interval_);
  LargeBuffer newBuffer;
  newBuffer.reset();
  while(isRunning_)
  {
    {
      MutexLockGuard lock(mutex_);
      // 如果backBuffer_为empty，后端等待
      if(!backBuffer_.length()) // 注意这里使用的是if而不是while,
                                // 我们希望interval时间到了之后，不再等待
        cond_.waitForSeconds(interval_);
      // 将backBuffer中的数据交给newBuffer
      if(backBuffer_.length())
      {
        newBuffer.swap(backBuffer_);
      }
      else{ // 因为时间到了唤醒
        newBuffer.swap(currentBuffer_);
      }
    }
    logFile.append_unlocked(newBuffer.data(), newBuffer.length()); 
    newBuffer.reset();
    logFile.flush();
  }
  // 这里可能会有认为存在一个析构先后关系的问题。即newBuffer析构的时候，此时其实际data存储的数据
  // 可能是其他，如果此时再次执行日志输出，可能会引发segment fault。
  // 1. stop的需要一些设计。要保证stop的时候，其他线程不能在append
  // 2. 或者可以将newBuffer做成AsyncLogging的成员。注释中要表明其只能被后端线程使用。
}

void
AsyncLogging::append(const char*data, int len)
{
  MutexLockGuard lock(mutex_);
  if(currentBuffer_.avail() > len)
  {
    currentBuffer_.append(data, len);
  }
  else{
    // 发生交换
    cout << "before change" << endl;
    cout << "avail " << currentBuffer_.avail() << endl;
    cout << "len " <<  len << endl;
    currentBuffer_.swap(backBuffer_);
    // 如果backBuffer_也不够了呢？在之后的版本进行解决
    cout << "after change" << endl;
    cout << "avail " << currentBuffer_.avail() << endl;
    cout << "len " <<  len << endl;
    if(currentBuffer_.avail() > len)
    {
      currentBuffer_.append(data, len);
    }
    else{
      sleep(1);
    }
    cond_.notify();
  }
}
