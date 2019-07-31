cmake_minimum_required(VERSION 3.5)
project(my_muduo_net)

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/../bin)
add_compile_options("-std=c++11")
add_compile_options("-g")

set(SRCS 
  ./SimpleLogger.cc
  ./LogFile.cc
  ./AsyncLogging.cc
  )

add_executable(testLogFile ./testLogFile.cc ${SRCS})
target_link_libraries(testLogFile muduo_base pthread)

add_executable(testAsyncLog ./testAsyncLog.cc ${SRCS})
target_link_libraries(testAsyncLog muduo_base pthread)
