#include "../h/riscv.hpp"
#include "../lib/console.h"
#include "../lib/hw.h"
#include "../lib/mem.h"
#include "../h/MemoryAllocator.hpp"
#include "../h/TCB.hpp"
#include "../test/printing.hpp"
#include "../h/MySem.hpp"


void Riscv::popSppSpie() {
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleTrap() {
    uint64 volatile code = getCode();
    uint64 reg1 = getFirstArgument();
    uint64 reg2 = getSecondArgument();
    uint64 reg3 = getThirdArgument();
    uint64 reg6 = getFourthArgument();

    uint64 volatile mysepc = getSepc();

    uint64 volatile cause = getScause();

    if(cause == 0x08 || cause == 0x09){
        uint64 volatile status = getSstatus();
        if(code == 0x01){
            //mem_alloc
            uint64 arg;
            arg = (uint64)reg1;
            void* ptr;
            ptr = MemoryAllocator::getInstance()._mem_alloc(arg);
            __asm__ volatile("mv a0, %0"::"r"(ptr));

        }
        else if(code == 0x02){
            //mem_free
            uint64 arg;
            arg = (uint64)reg1;
            int rez;
            rez = MemoryAllocator::getInstance()._mem_free((void*)arg);
            __asm__ volatile("mv a0, %0"::"r"(rez));

        }
        else if(code == 0x11){
            //thread_create
            uint64* st = (uint64*)reg6;
            void* arg1 = (void*) reg3;
            TCB::Body sr1 = (TCB::Body)reg2;
            TCB** handle1 = (TCB**)reg1;

            uint64 r = 0;
            TCB* rez;
            rez = TCB::createThread(handle1, sr1, arg1, st);
            if(rez == nullptr){
                r = -1;
            }
            __asm__ volatile("mv a0, %0"::"r"(r));

        }
        else if(code == 0x12){
            //thread_exit
            //samo postavis polje da je nit ugasena i promenis da neka druga postane running
            TCB::running->finished = true;
            TCB::dispatch();
        }
        else if(code == 0x13){
            //dispatch
            TCB::dispatch();
        }
        else if(code == 0x14){
            //join
            uint64 handle;
            handle = (uint64)reg1;
            TCB* h = (TCB*)handle;
            TCB::join(h);
        }
        else if(code == 0x21){
            //sem_open
            sem_t* h = (sem_t*)reg1;
            uint64 i = (uint64)reg2;

            MySem::semOpen(h, i);
            uint64 rez = 0;
            if(h == nullptr){
                rez = -1;
            }

            __asm__ volatile("mv a0, %0"::"r"(rez));

        }
        else if(code == 0x22){
            //sem_close
            sem_t h = (sem_t)reg1;

            uint64 rez;
            rez = MySem::semClose(h);
            __asm__ volatile("mv a0, %0"::"r"(rez));

        }
        else if(code == 0x23){
            //sem_wait
            sem_t id = (sem_t)reg1;

            uint64 rez;
            rez = MySem::semWait(id);
            __asm__ volatile("mv a0, %0"::"r"(rez));
        }
        else if(code == 0x24){
            //sem_signal
            sem_t id = (sem_t)reg1;

            uint64 rez;
            rez = MySem::semSignal(id);
            __asm__ volatile("mv a0, %0"::"r"(rez));

        }
        else if(code ==0x25){
            //changeToUser
            __asm__ volatile("csrw sstatus,%0"::"r"(status));
            __asm__ volatile("csrc sstatus, %0"::"r"(1<<8));
            __asm__ volatile("csrw sepc,%0"::"r"(mysepc+4));
            __asm__ volatile("csrc sip,%0"::"r"(1<<1));
            return;

        }
        else if(code == 0x41){
            //getc
            char c =  __getc();

            __asm__ volatile("mv a0, %0"::"r"(c));
        }
        else if(code == 0x42){
            //putc
            char c = (char)reg1;

            __putc(c);
        }

        __asm__ volatile("csrw sstatus,%[status]"::[status]"r"(status));
        __asm__ volatile("csrw sepc, %0"::"r"(mysepc+4));
        __asm__ volatile("csrc sip,%0"::"r"(1<<1));

    }


    else{
        printString("greska: ");
        printInt(cause);
    }


}

void Riscv::handleTimer() {
    __asm__ volatile("csrc sip,%0"::"r"(1<<1));
}

void Riscv::handleConsole() {

    console_handler();

}
