
#ifndef _Thread
#define _Thread
#include "../lib/hw.h"
#include "MemoryAllocator.hpp"


class TCB{
public:
    ~TCB(){
        MemoryAllocator::getInstance()._mem_free(stack);
    }
    friend class MySem;

    bool isFinished() const {
        return finished;
    }
    void setFinished(bool value){
        finished = value;
    }

    using Body = void(*)(void*);

    static TCB* createThread(TCB** handle, Body body, void* arg, uint64* stack_space);

    static void yield();

    static void join(TCB* handle);

    static TCB* running;



private:

    struct Context{
        uint64 ra;
        uint64 sp;
    };

    Body body;
    uint64* stack;
    Context context;
    bool finished;
    bool closed;
    bool blocked;
    void* arg;

    friend class Riscv;

    static void threadWrapper();

    static void contextSwitch(Context* old, Context* running);

    static void dispatch();
};


#endif
