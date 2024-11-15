#ifndef _MySem_hpp
#define _MySem_hpp
#include "../lib/hw.h"
#include "TCB.hpp"




struct Blocked{
    TCB* blocked;
    Blocked* next;
};

class MySem{


    Blocked* head ;

    Blocked* tail ;
    int n;
    TCB* getThread();

    void putThread(TCB* t);



public:

    static void semOpen(MySem** handle,uint64 k);

    static MySem* semCreate(uint64 k);

    static int semClose(MySem* handle);

    static int semWait(MySem* handle);

    static int semSignal(MySem* handle);

};


#endif