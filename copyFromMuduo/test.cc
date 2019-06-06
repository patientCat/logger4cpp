//c++ program
//design by >^.^<
//@date    2019-06-06 00:36:23
#include "Logging.hh"

#include <iostream>
#include <string>

using namespace singsing;
using namespace std;

int main()
{
    LOG_INFO << "this is a info";
    LOG_WARN << "this is a warn";
    LOG_DEBUG << "this is a bug";
    LOG_ERROR << "this is a error";
    LOG_FATAL << "this is a fatal";
    LOG_TRACE << "this is a trace";
}
