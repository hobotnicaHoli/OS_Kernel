#ifndef _riscv
#define _riscv
#include "../lib/hw.h"

class Riscv{


public:
    uint64 getCode(){
        uint64 rez;
        __asm__ volatile("mv %0, a0":"=r"(rez));
        return rez;
    }

    uint64 getFirstArgument(){
        uint64 rez;
        __asm__ volatile("mv %0, a1":"=r"(rez));
        return rez;
    }

    uint64 getSecondArgument(){
        uint64 rez;
        __asm__ volatile("mv %0, a2":"=r"(rez));
        return rez;
    }

    uint64 getThirdArgument(){
        uint64 rez;
        __asm__ volatile("mv %0, a3":"=r"(rez));
        return rez;
    }

    uint64 getFourthArgument(){
        uint64 rez;
        __asm__ volatile("mv %0, a4":"=r"(rez));
        return rez;
    }
    uint64 getSepc(){
        uint64 rez;
        __asm__ volatile("csrr %0, sepc":"=r"(rez));
        return rez;
    }

    uint64 getScause(){
        uint64 rez;
        __asm__ volatile("csrr %0, scause":"=r"(rez));
        return rez;
    }

    uint64 getSstatus(){
        uint64 rez;
        __asm__ volatile("csrr %0,sstatus":"=r"(rez));
        return rez;
    }

    static void popSppSpie();
    void handleTrap();
    void handleTimer();
    void handleConsole();
};

#endif
