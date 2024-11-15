
#ifndef _syscall_c
#define _syscall_c
#include "../lib/hw.h"
#include "TCB.hpp"
#include "MySem.hpp"
#include "../lib/console.h"

typedef TCB* thread_t;

void* mem_alloc(size_t size);

int mem_free(void* ptr);

int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg);

int thread_exit();

void thread_dispatch();

void thread_join(thread_t handle);

typedef MySem* sem_t;

int sem_open(sem_t* handle, unsigned init);

int sem_close(sem_t handle);

int sem_wait(sem_t id);

int sem_signal(sem_t id);

typedef unsigned long time_t;

int time_sleep(time_t);

const int EOF = -1;

char getc();

void putc(char c);

void changeUser();

#endif
