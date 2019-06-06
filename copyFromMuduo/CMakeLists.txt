cmake_minimum_required(VERSION 3.5)
project(my_muduo_net)

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/../bin)
add_compile_options("-std=c++11")

add_library(logger4cpp 
    Logging.cc 
    LogStream.cc 
    Timestamp.cc 
    CurrentThread.cc
    )
add_executable(testTid testTid.cc CurrentThread.cc)
target_link_libraries(testTid pthread)

add_executable(testLog test.cc Logging.cc LogStream.cc Timestamp.cc CurrentThread.cc)
target_link_libraries(testLog pthread)
