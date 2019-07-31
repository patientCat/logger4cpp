
/*
 * 实现一个固定大小的buffer，被LogStream来使用
 */
#pragma once

#include <boost/noncopyable.hpp>
#include <string>
#include <string.h>
#include <algorithm>

template<int SIZE>
class FixedBuffer : boost::noncopyable
{
public:
    FixedBuffer() 
      : dummy_(data_)
      , cur_(data_) {}
    ~FixedBuffer() {}

    void append(const char* buf, size_t len)
    {
        if(avail() > len)
        {
            memcpy(cur_, buf, len);
            skip(len);
        }
        else{
          //TODO: 抛出异常
        }
    }

    void swap(FixedBuffer &rhs)
    {
      std::swap(dummy_, rhs.dummy_);
      std::swap(cur_, rhs.cur_); 
    }
    const char* data() const { return dummy_; }
    // 返回缓冲区被占有的长度
    int length() const { return static_cast<int>(cur_ - dummy_); }
    char * current() { return cur_; }
    int avail() const { return static_cast<int>(end() - cur_); }
    void skip(size_t len) { cur_ += len; }

    void reset() { cur_ = dummy_; }
    void bzero() { memset(dummy_, 0, sizeof data_); }

    std::string toString() const {  return std::string(dummy_, length());    }
private:
    const char* end() const {   return dummy_ + SIZE;  }

    char data_[SIZE];
    char * dummy_;
    char *cur_;
};
