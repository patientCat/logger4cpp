//c++ program
//design by >^.^<
//@date    2019-07-29 07:56:10
#include <iostream>
#include <vector>
#include <functional>
#include <memory>

#include "AsyncLogging.h"
#include "SimpleLogger.h"
#include "muduo/base/Thread.h"
#include "muduo/base/CurrentThread.h"


using namespace muduo;
using namespace std;

unique_ptr<AsyncLogging> gLog;

void test()
{
  string line = "1234567890 abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ ";
  CurrentThread::tid();

  for (int i = 0; i < 1000000; ++i)
  {
    LOG_INFO << line << " " << CurrentThread::tidString();
    usleep(1000);
  }
}

void asyncOutput(const char*data, int len)
{
  gLog->append(data, len);
}

int main(int argc, char *argv[])
{
  gLog.reset(new AsyncLogging(::basename(argv[0]), 1000*1000));
  SimpleLogger::SetOutput(asyncOutput);
  gLog->start();


  cout << "start all " << endl;
  test();

  while(1);
}
