#include "../h/MemoryAllocator.hpp"
#include "../h/Scheduler.hpp"
#include "../lib/mem.h"

Elem* Scheduler::head = nullptr;
Elem* Scheduler::tail = nullptr;

TCB *Scheduler::get() {
    if(!head){
        return 0;
    }
    Elem* elem = head;
    head = head->next;
    if(!head){
        tail = 0;
    }
    TCB* ret = elem->data;
    MemoryAllocator::getInstance()._mem_free(elem);
    return ret;
}

void Scheduler::put(TCB *thread) {
    Elem* elem = (Elem*)MemoryAllocator::getInstance()._mem_alloc(sizeof(Elem)/MEM_BLOCK_SIZE + (sizeof(Elem)%MEM_BLOCK_SIZE > 0 ? 1:0));
    elem->data = thread;
    elem->next = 0;
    if(tail != nullptr){
        tail->next = elem;
        tail = elem;
    }else{
        head = tail = elem;
    }
}
