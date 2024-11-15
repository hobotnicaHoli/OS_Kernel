
#ifndef _Scheduler
#define _Scheduler


class TCB;
struct Elem {
    TCB *data;
    Elem *next;

    Elem(TCB *data, Elem *next) : data(data), next(next) {}
};
class Scheduler{



private:

    static Elem* head;
    static Elem* tail;

public:
    static TCB* get();
    static void put(TCB* thread);
};

#endif
