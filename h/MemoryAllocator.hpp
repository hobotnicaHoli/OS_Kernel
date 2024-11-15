#ifndef _MemoryAllocator_hpp
#define _MemoryAllocator_hpp

#include "../lib/hw.h"

struct FreeMem{
    FreeMem* next;
    FreeMem* prev;
    size_t size;
};

class MemoryAllocator {


    FreeMem *head = nullptr;
    void tryToJoin(FreeMem *cur);

public:
    void *_mem_alloc(size_t size);

    int _mem_free(void *ptr);
    static MemoryAllocator& getInstance();


};

#endif