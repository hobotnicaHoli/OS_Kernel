
#include "../h/syscall_cpp.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../lib/mem.h"
#include "../h/syscall_c.h"
#include "../h/Scheduler.hpp"

extern "C" void supervisorTrap();

void vectorMode(){
    __asm__ volatile("csrw stvec, %0"::"r"((uint64)(&supervisorTrap) | 1));
}

Thread::Thread() {
    //redefinicija run metode
    this->myHandle = nullptr;
    this->body = wrapper;
    this->arg = this;
}

Thread::Thread(void (*body)(void *), void *arg) {
    //konstrukcija nad funkcijom neclanicom
    this->myHandle = nullptr;
    this->body = body;
    this->arg = arg;
}

Thread::~Thread(){
    //ceka da se ta nit - myHandle zavrsi pa je brise
    join();
    delete myHandle;
}

int Thread::start() {
    //pravi samu instancu niti i stavlja je u Scheduler
    return thread_create(&this->myHandle, this->body, this->arg);
}

void Thread::join() {
    thread_join(myHandle);
}

void Thread::dispatch() {
    //sinhrona promena konteksta
    thread_dispatch();
}

int Thread::sleep(time_t time) {
    return time_sleep(time);
}

void Thread::wrapper(void *arg) {
    Thread* nit = (Thread*) arg;
    nit->run();
}


Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle,init);

}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
   return sem_signal(myHandle);
}


/*
void PeriodicThread::terminate() {

}

PeriodicThread::PeriodicThread(time_t period) {

}
*/
char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}

void *operator new(size_t size) {
    return mem_alloc(size);
}
void *operator new[](size_t size) {
    return mem_alloc(size);
}

void operator delete(void *ptr) {
    mem_free(ptr);
}
void operator delete[](void *ptr) {
    mem_free(ptr);
}
