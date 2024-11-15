#include "../lib/hw.h"
#include "../h/syscall_c.h"
#include "../h/TCB.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../lib/mem.h"
#include "../lib/console.h"

void *mem_alloc(size_t size) {
    //obavezno prvo pretvaranje u blokove
    uint64 newsize = size / MEM_BLOCK_SIZE;
    if(size%MEM_BLOCK_SIZE > 0){
        newsize++;
    }
    __asm__ volatile("mv a1, %0"::"r"(newsize));
    __asm__ volatile("li a0, 0x01");

    __asm__ volatile("ecall");

    uint64 rez;
    __asm__ volatile("mv %0, a0":"=r"(rez));
    return (void*)rez;
}

int mem_free(void *ptr) {
    void* p = ptr;
    __asm__ volatile("mv a5, %0"::"r"(p));
    __asm__ volatile("mv a1,a5");
    __asm__ volatile("li a0, 0x02");

    __asm__ volatile("ecall");

    uint64 rez;
    __asm__ volatile("mv %0, a0":"=r"(rez));
    return rez;
}

int thread_create(TCB **handle, void (*start_routine)(void *), void *arg) {
    //receno je da mora da se alocira prvo stek pre sistemskog poziva
    uint64* stack_space;
    if(start_routine == nullptr){
        stack_space = nullptr;
    }else{
        stack_space = (uint64*) mem_alloc(DEFAULT_STACK_SIZE);
    }
    __asm__ volatile("mv a4, %0"::"r"(stack_space));
    void* a = arg;
    __asm__ volatile("mv a3, %0"::"r"(a));
    void (*startr)(void*) = start_routine;
    __asm__ volatile("mv a2, %0"::"r"(startr));
    TCB** h = handle;
    __asm__ volatile("mv a1, %0"::"r"(h));


    __asm__ volatile("li a0, 0x11");
    __asm__ volatile("ecall");

    uint64 rez;
    __asm__ volatile("mv %0, a0":"=r"(rez));
    return rez;
}


int thread_exit() {
    __asm__ volatile("li a0, 0x12");

    __asm__ volatile("ecall");

    return 0;
}

void thread_dispatch() {
    __asm__ volatile("li a0, 0x13");

    __asm__ volatile("ecall");
    return;
}

void thread_join(thread_t handle) {
    __asm__ volatile("mv a1, %0"::"r"(handle));
    __asm__ volatile("li a0, 0x14");

    __asm__ volatile("ecall");
}

int sem_open(sem_t *handle, unsigned int init) {
    __asm__ volatile("mv a2, %0"::"r"(init));
    __asm__ volatile("mv a1, %0"::"r"(handle));
    __asm__ volatile("li a0, 0x21");

    __asm__ volatile("ecall");

    uint64 rez;
    __asm__ volatile("mv %0, a0":"=r"(rez));
    return rez;
}

int sem_close(sem_t handle) {
    __asm__ volatile("mv a1, %0"::"r"(handle));
    __asm__ volatile("li a0, 0x22");

    __asm__ volatile("ecall");

    uint64 rez;
    __asm__ volatile("mv %0, a0":"=r"(rez));
    return rez;
}

int sem_wait(sem_t id) {
    __asm__ volatile("mv a1, %0"::"r"(id));
    __asm__ volatile("li a0, 0x23");

    __asm__ volatile("ecall");

    uint64 rez;
    __asm__ volatile("mv %0, a0":"=r"(rez));
    return rez;
}

int sem_signal(sem_t id) {
    __asm__ volatile("mv a1, %0"::"r"(id));
    __asm__ volatile("li a0, 0x24");

    __asm__ volatile("ecall");

    uint64 rez;
    __asm__ volatile("mv %0, a0":"=r"(rez));
    return rez;
}

void changeUser() {
    __asm__ volatile("li a0,0x25");
    __asm__ volatile("ecall");
    return;

}

int time_sleep(time_t) {
    return 0;
}

char getc() {

    __asm__ volatile("li a0, 0x41");

    __asm__ volatile("ecall");

    char c;
    __asm__ volatile("mv %0,a0":"=r"(c));

    return c;
}

void putc(char c) {

    __asm__ volatile("mv a1,%0"::"r"(c));
    __asm__ volatile("li a0, 0x42");

    __asm__ volatile("ecall");

}

