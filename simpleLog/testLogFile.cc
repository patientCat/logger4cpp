//c++ program
//design by >^.^<
//@date    2019-07-27 07:40:19
#include <iostream>
#include "LogFile.h"
#include "SimpleLogger.h"
#include <memory>

using namespace std;
unique_ptr<LogFile> gFile;
void output(const char*line, int len)
{
  gFile->append(line, len);
}

int main(int argc, char*argv[])
{
  char name[256] = {0};
  strncpy(name, argv[0], sizeof(name) - 1);
  gFile.reset(new LogFile(::basename(name), 1000, 3));
  SimpleLogger::SetOutput(output);
  string line = "1234567890 abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ ";

  for (int i = 0; i < 10000; ++i)
  {
    LOG_INFO << line;
    usleep(1000);
  }
}
