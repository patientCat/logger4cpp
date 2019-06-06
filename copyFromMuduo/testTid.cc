//c++ program
//design by >^.^<
//@date    2019-06-06 01:28:03
#include "CurrentThread.hh"
#include <pthread.h>

#include <vector>
#include <iostream>
#include <string>

using namespace singsing;
using namespace std;

void * threadFunc(void *arg)
{
    CurrentThread::tid();
    printf("pid:%lld    tid:%s\n", (long long)pthread_self(), CurrentThread::tidString());
    return NULL;
}

int main()
{
    CurrentThread::tid();
    printf("main: %s\n", CurrentThread::tidString());
    vector<pthread_t> vec(4);
    for(int i = 0; i < 4; ++i)
    {
        pthread_create(&vec[i], NULL, threadFunc, NULL);
    }

    for(int i = 0; i < 4; ++i)
    {
        pthread_join(vec[i], NULL);
    }
}
