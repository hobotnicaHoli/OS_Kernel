
#include "../h/MemoryAllocator.hpp"


//size je u blokovima
void *MemoryAllocator::_mem_alloc(size_t size) {
    static bool first = true;
   if(first){
       FreeMem* block = (FreeMem*)((uint64*)HEAP_START_ADDR);
       block->size = ((uint64)((uint64*)HEAP_END_ADDR - (uint64*)HEAP_START_ADDR)-sizeof(MemoryAllocator))/MEM_BLOCK_SIZE;
       block->next = nullptr;
       block->prev = nullptr;
       head = block;
       first = false;
   }
    FreeMem* pom = head;
   while(pom!= nullptr && pom->size< size){
       pom = pom->next;
   }
   if(pom == nullptr){
       return nullptr;
   }
   if(pom->size - size == 0) {
       if (pom->prev) {
           pom->prev->next = pom->next;
       }else{
           head = pom->next;
       }
       if (pom->next) {
           pom->next->prev = pom->prev;
       }
   }

   if(pom->size - size > 0){
       FreeMem* newBlk = (FreeMem*)((uint64*)pom + size*MEM_BLOCK_SIZE);
       if(pom->prev){
           pom->prev->next = newBlk;
       }else{
           head = newBlk;
       }
       if(pom->next){
           pom->next->prev = newBlk;
       }
       newBlk->next = pom->next;
       newBlk->prev = pom->prev;
       newBlk->size = pom->size - size;
       pom->size = size;
   }

   return (uint64*)pom + sizeof(FreeMem);
}

MemoryAllocator& MemoryAllocator::getInstance() {
    static MemoryAllocator singleton;
    return singleton;
}


int MemoryAllocator::_mem_free(void *ptr) {
    if((uint64*)ptr > (uint64*)HEAP_END_ADDR || (uint64*)ptr < (uint64*)HEAP_START_ADDR){
        return -1;
    }
    FreeMem* cur = 0;
    if(!head || ptr < (char*)head){
        cur = 0;
    }
    else{
        for(cur = head; cur->next != 0 && (char*)ptr > (char*)(cur->next); cur=cur->next);
    }
    FreeMem* newSeg = (FreeMem*)((uint64*)ptr - sizeof(FreeMem));
    newSeg->prev = cur;
    if(cur) newSeg->next = cur->next;
    else newSeg->next = head;
    if(newSeg->next) newSeg->next->prev = newSeg;
    if(cur) cur->next = newSeg;
    else head = newSeg;
    if(newSeg != nullptr) {
        tryToJoin(newSeg);
    }
    if(cur != nullptr) {
        tryToJoin(cur);
    }
    return 0;
}
void MemoryAllocator::tryToJoin(FreeMem *cur) {
    if(cur->next == nullptr){
        return;
    }
    if(((char*)cur + cur->size*MEM_BLOCK_SIZE) == (char*)cur->next){
        cur->size = cur->size + cur->next->size;
        cur->next = cur->next->next;
        cur->next->prev = cur;
    }
}


