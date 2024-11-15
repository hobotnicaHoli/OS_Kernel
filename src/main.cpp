#include "../lib/console.h"
#include "../lib/hw.h"
#include "../h/syscall_c.h"
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/riscv.hpp"
#include "../test/printing.hpp"

void userMain();

void vectorMode();
void main(){
    vectorMode();
    TCB* nit;
    //idle nit
    thread_create(&nit, nullptr, nullptr);
    TCB::running=nit;
    //prelazak u korisnicki rezim
    changeUser();
    userMain();
    while(Scheduler::get()){
        thread_dispatch();
    }

    delete nit;


}

