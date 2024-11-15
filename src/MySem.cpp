
#include "../h/MySem.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Scheduler.hpp"
#include "../h/syscall_c.h"

void MySem::semOpen(MySem **handle, uint64 k) {

    MySem* sem = (MySem*)MemoryAllocator::getInstance()._mem_alloc(sizeof(MySem)/MEM_BLOCK_SIZE + (sizeof(MySem)%MEM_BLOCK_SIZE > 0 ? 1:0 ));
    sem->n = k;
    sem->tail = nullptr;
    sem->head = nullptr;
    *handle = sem;
}

MySem* MySem::semCreate(uint64 k) {

    MySem* sem = (MySem*)MemoryAllocator::getInstance()._mem_alloc(sizeof(MySem)/MEM_BLOCK_SIZE + (sizeof(MySem)%MEM_BLOCK_SIZE > 0 ? 1:0 ));
    sem->n = k;
    sem->tail = nullptr;
    sem->head = nullptr;
    return sem;
}



int MySem::semClose(MySem* handle) {
    if(handle == nullptr){
        return -1;
    }
    //1.nit koja ceka
    TCB* pom = handle->getThread();
    while(pom!= nullptr){
        pom->closed = true;
        pom->blocked = false;
        Scheduler::put(pom);
        //uzima slededecu nit koja ceka na tom semaforu
        pom = handle->getThread();
    }

    //brise semafor
    int rez = MemoryAllocator::getInstance()._mem_free(handle);
    return rez;
}

int MySem::semWait(MySem* handle) {
    if(handle == nullptr){
        return -1;
    }
    if(--handle->n< 0){
        if(TCB::running->closed) return -1;
        TCB::running->blocked = true;
        handle->putThread(TCB::running);
        TCB::dispatch();
    }
    return 0;
}

int MySem::semSignal(MySem* handle) {
    if(handle == nullptr){
        return -1;
    }
    handle->n++;
    if(handle->n <= 0){
        TCB* t = handle->getThread();
        t->blocked = false;
        if(t != nullptr) {
            Scheduler::put(t);
        }
    }

    return 0;

}

TCB *MySem::getThread() {

    Blocked* getB = head;
    if(getB == nullptr)return nullptr;
    TCB* t = getB->blocked;
    head = head->next;
    if(head == nullptr){
        tail = nullptr;
    }
    MemoryAllocator::getInstance()._mem_free(getB);
    return t;
}

void MySem::putThread(TCB *t) {
    Blocked* newB =(Blocked*) MemoryAllocator::getInstance()._mem_alloc(sizeof(Blocked)/MEM_BLOCK_SIZE + (sizeof(Blocked)%MEM_BLOCK_SIZE > 0 ? 1:0));
    newB->blocked = t;
    newB->next = nullptr;

    if(head == nullptr){
        head = tail = newB;
    }else{
        tail->next = newB;
        tail = newB;
    }
}

