#include "../h/MemoryAllocator.hpp"
#include "../h/TCB.hpp"
#include "../h/riscv.hpp"
#include "../h/Scheduler.hpp"
#include "../test/printing.hpp"
#include "../lib/mem.h"

TCB *TCB::createThread(TCB** handle, TCB::Body body, void* arg, uint64* stack_space) {
    TCB* newT = (TCB*)MemoryAllocator::getInstance()._mem_alloc(sizeof(TCB) / MEM_BLOCK_SIZE + (sizeof(TCB) % MEM_BLOCK_SIZE > 0 ? 1 : 0));
    newT->body = body;
    newT->finished = false;
    newT->blocked = false;
    newT->closed = false;
    newT->stack = stack_space;
    newT->context = {(uint64)&threadWrapper, stack_space != nullptr ? (uint64)&stack_space[DEFAULT_STACK_SIZE] : 0};
    newT->arg = arg;
    *handle = newT;
    Scheduler::put(*handle);

    return newT;
}

void TCB::yield() {
    __asm__ volatile("li a0, 0x13");
    __asm__ volatile("ecall");
}

TCB* TCB::running = nullptr;

void TCB::threadWrapper() {
    Riscv::popSppSpie();
    running->body(running->arg);
    thread_exit();
}

void TCB::dispatch() {
    TCB* old = running;
    if(!old->isFinished() && !old->blocked){
        Scheduler::put(old);
    }
    //contextSwitch se radi u asm
    running = Scheduler::get();
    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::join(TCB* handle){
    while(!handle->isFinished()){
        TCB::dispatch();
    }
}

