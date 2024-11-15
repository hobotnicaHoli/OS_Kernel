
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	3b813103          	ld	sp,952(sp) # 8000a3b8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	489050ef          	jal	ra,80005ca4 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <supervisorTrap>:
.extern handleTimer
.extern handleConsole

.align 4
supervisorTrap:
j handleTrap
    80001000:	0280006f          	j	80001028 <handleTrap>
j handleTimer
    80001004:	1240006f          	j	80001128 <handleTimer>
mv x0, x1
    80001008:	00008013          	mv	zero,ra
mv x0, x1
    8000100c:	00008013          	mv	zero,ra
mv x0, x1
    80001010:	00008013          	mv	zero,ra
mv x0, x1
    80001014:	00008013          	mv	zero,ra
mv x0, x1
    80001018:	00008013          	mv	zero,ra
mv x0, x1
    8000101c:	00008013          	mv	zero,ra
mv x0, x1
    80001020:	00008013          	mv	zero,ra
j handleConsole
    80001024:	20c0006f          	j	80001230 <handleConsole>

0000000080001028 <handleTrap>:

handleTrap:

    addi sp, sp, -256
    80001028:	f0010113          	addi	sp,sp,-256
    .irp index, 1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    8000102c:	00113423          	sd	ra,8(sp)
    80001030:	00213823          	sd	sp,16(sp)
    80001034:	00313c23          	sd	gp,24(sp)
    80001038:	02413023          	sd	tp,32(sp)
    8000103c:	02513423          	sd	t0,40(sp)
    80001040:	02613823          	sd	t1,48(sp)
    80001044:	02713c23          	sd	t2,56(sp)
    80001048:	04813023          	sd	s0,64(sp)
    8000104c:	04913423          	sd	s1,72(sp)
    80001050:	04b13c23          	sd	a1,88(sp)
    80001054:	06c13023          	sd	a2,96(sp)
    80001058:	06d13423          	sd	a3,104(sp)
    8000105c:	06e13823          	sd	a4,112(sp)
    80001060:	06f13c23          	sd	a5,120(sp)
    80001064:	09013023          	sd	a6,128(sp)
    80001068:	09113423          	sd	a7,136(sp)
    8000106c:	09213823          	sd	s2,144(sp)
    80001070:	09313c23          	sd	s3,152(sp)
    80001074:	0b413023          	sd	s4,160(sp)
    80001078:	0b513423          	sd	s5,168(sp)
    8000107c:	0b613823          	sd	s6,176(sp)
    80001080:	0b713c23          	sd	s7,184(sp)
    80001084:	0d813023          	sd	s8,192(sp)
    80001088:	0d913423          	sd	s9,200(sp)
    8000108c:	0da13823          	sd	s10,208(sp)
    80001090:	0db13c23          	sd	s11,216(sp)
    80001094:	0fc13023          	sd	t3,224(sp)
    80001098:	0fd13423          	sd	t4,232(sp)
    8000109c:	0fe13823          	sd	t5,240(sp)
    800010a0:	0ff13c23          	sd	t6,248(sp)

call _ZN5Riscv10handleTrapEv
    800010a4:	329000ef          	jal	ra,80001bcc <_ZN5Riscv10handleTrapEv>

    .irp index, 1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800010a8:	00813083          	ld	ra,8(sp)
    800010ac:	01013103          	ld	sp,16(sp)
    800010b0:	01813183          	ld	gp,24(sp)
    800010b4:	02013203          	ld	tp,32(sp)
    800010b8:	02813283          	ld	t0,40(sp)
    800010bc:	03013303          	ld	t1,48(sp)
    800010c0:	03813383          	ld	t2,56(sp)
    800010c4:	04013403          	ld	s0,64(sp)
    800010c8:	04813483          	ld	s1,72(sp)
    800010cc:	05813583          	ld	a1,88(sp)
    800010d0:	06013603          	ld	a2,96(sp)
    800010d4:	06813683          	ld	a3,104(sp)
    800010d8:	07013703          	ld	a4,112(sp)
    800010dc:	07813783          	ld	a5,120(sp)
    800010e0:	08013803          	ld	a6,128(sp)
    800010e4:	08813883          	ld	a7,136(sp)
    800010e8:	09013903          	ld	s2,144(sp)
    800010ec:	09813983          	ld	s3,152(sp)
    800010f0:	0a013a03          	ld	s4,160(sp)
    800010f4:	0a813a83          	ld	s5,168(sp)
    800010f8:	0b013b03          	ld	s6,176(sp)
    800010fc:	0b813b83          	ld	s7,184(sp)
    80001100:	0c013c03          	ld	s8,192(sp)
    80001104:	0c813c83          	ld	s9,200(sp)
    80001108:	0d013d03          	ld	s10,208(sp)
    8000110c:	0d813d83          	ld	s11,216(sp)
    80001110:	0e013e03          	ld	t3,224(sp)
    80001114:	0e813e83          	ld	t4,232(sp)
    80001118:	0f013f03          	ld	t5,240(sp)
    8000111c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001120:	10010113          	addi	sp,sp,256

sret
    80001124:	10200073          	sret

0000000080001128 <handleTimer>:

handleTimer:

addi sp, sp, -256
    80001128:	f0010113          	addi	sp,sp,-256
.irp index, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
.endr
    8000112c:	00113423          	sd	ra,8(sp)
    80001130:	00213823          	sd	sp,16(sp)
    80001134:	00313c23          	sd	gp,24(sp)
    80001138:	02413023          	sd	tp,32(sp)
    8000113c:	02513423          	sd	t0,40(sp)
    80001140:	02613823          	sd	t1,48(sp)
    80001144:	02713c23          	sd	t2,56(sp)
    80001148:	04813023          	sd	s0,64(sp)
    8000114c:	04913423          	sd	s1,72(sp)
    80001150:	04a13823          	sd	a0,80(sp)
    80001154:	04b13c23          	sd	a1,88(sp)
    80001158:	06c13023          	sd	a2,96(sp)
    8000115c:	06d13423          	sd	a3,104(sp)
    80001160:	06e13823          	sd	a4,112(sp)
    80001164:	06f13c23          	sd	a5,120(sp)
    80001168:	09013023          	sd	a6,128(sp)
    8000116c:	09113423          	sd	a7,136(sp)
    80001170:	09213823          	sd	s2,144(sp)
    80001174:	09313c23          	sd	s3,152(sp)
    80001178:	0b413023          	sd	s4,160(sp)
    8000117c:	0b513423          	sd	s5,168(sp)
    80001180:	0b613823          	sd	s6,176(sp)
    80001184:	0b713c23          	sd	s7,184(sp)
    80001188:	0d813023          	sd	s8,192(sp)
    8000118c:	0d913423          	sd	s9,200(sp)
    80001190:	0da13823          	sd	s10,208(sp)
    80001194:	0db13c23          	sd	s11,216(sp)
    80001198:	0fc13023          	sd	t3,224(sp)
    8000119c:	0fd13423          	sd	t4,232(sp)
    800011a0:	0fe13823          	sd	t5,240(sp)
    800011a4:	0ff13c23          	sd	t6,248(sp)

call _ZN5Riscv11handleTimerEv
    800011a8:	4b5000ef          	jal	ra,80001e5c <_ZN5Riscv11handleTimerEv>


.irp index, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
ld x\index, \index * 8(sp)
.endr
    800011ac:	00813083          	ld	ra,8(sp)
    800011b0:	01013103          	ld	sp,16(sp)
    800011b4:	01813183          	ld	gp,24(sp)
    800011b8:	02013203          	ld	tp,32(sp)
    800011bc:	02813283          	ld	t0,40(sp)
    800011c0:	03013303          	ld	t1,48(sp)
    800011c4:	03813383          	ld	t2,56(sp)
    800011c8:	04013403          	ld	s0,64(sp)
    800011cc:	04813483          	ld	s1,72(sp)
    800011d0:	05013503          	ld	a0,80(sp)
    800011d4:	05813583          	ld	a1,88(sp)
    800011d8:	06013603          	ld	a2,96(sp)
    800011dc:	06813683          	ld	a3,104(sp)
    800011e0:	07013703          	ld	a4,112(sp)
    800011e4:	07813783          	ld	a5,120(sp)
    800011e8:	08013803          	ld	a6,128(sp)
    800011ec:	08813883          	ld	a7,136(sp)
    800011f0:	09013903          	ld	s2,144(sp)
    800011f4:	09813983          	ld	s3,152(sp)
    800011f8:	0a013a03          	ld	s4,160(sp)
    800011fc:	0a813a83          	ld	s5,168(sp)
    80001200:	0b013b03          	ld	s6,176(sp)
    80001204:	0b813b83          	ld	s7,184(sp)
    80001208:	0c013c03          	ld	s8,192(sp)
    8000120c:	0c813c83          	ld	s9,200(sp)
    80001210:	0d013d03          	ld	s10,208(sp)
    80001214:	0d813d83          	ld	s11,216(sp)
    80001218:	0e013e03          	ld	t3,224(sp)
    8000121c:	0e813e83          	ld	t4,232(sp)
    80001220:	0f013f03          	ld	t5,240(sp)
    80001224:	0f813f83          	ld	t6,248(sp)

addi sp, sp, 256
    80001228:	10010113          	addi	sp,sp,256

sret
    8000122c:	10200073          	sret

0000000080001230 <handleConsole>:

handleConsole:

addi sp, sp, -256
    80001230:	f0010113          	addi	sp,sp,-256
.irp index, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
sd x\index, \index * 8(sp)
.endr
    80001234:	00113423          	sd	ra,8(sp)
    80001238:	00213823          	sd	sp,16(sp)
    8000123c:	00313c23          	sd	gp,24(sp)
    80001240:	02413023          	sd	tp,32(sp)
    80001244:	02513423          	sd	t0,40(sp)
    80001248:	02613823          	sd	t1,48(sp)
    8000124c:	02713c23          	sd	t2,56(sp)
    80001250:	04813023          	sd	s0,64(sp)
    80001254:	04913423          	sd	s1,72(sp)
    80001258:	04a13823          	sd	a0,80(sp)
    8000125c:	04b13c23          	sd	a1,88(sp)
    80001260:	06c13023          	sd	a2,96(sp)
    80001264:	06d13423          	sd	a3,104(sp)
    80001268:	06e13823          	sd	a4,112(sp)
    8000126c:	06f13c23          	sd	a5,120(sp)
    80001270:	09013023          	sd	a6,128(sp)
    80001274:	09113423          	sd	a7,136(sp)
    80001278:	09213823          	sd	s2,144(sp)
    8000127c:	09313c23          	sd	s3,152(sp)
    80001280:	0b413023          	sd	s4,160(sp)
    80001284:	0b513423          	sd	s5,168(sp)
    80001288:	0b613823          	sd	s6,176(sp)
    8000128c:	0b713c23          	sd	s7,184(sp)
    80001290:	0d813023          	sd	s8,192(sp)
    80001294:	0d913423          	sd	s9,200(sp)
    80001298:	0da13823          	sd	s10,208(sp)
    8000129c:	0db13c23          	sd	s11,216(sp)
    800012a0:	0fc13023          	sd	t3,224(sp)
    800012a4:	0fd13423          	sd	t4,232(sp)
    800012a8:	0fe13823          	sd	t5,240(sp)
    800012ac:	0ff13c23          	sd	t6,248(sp)

call _ZN5Riscv13handleConsoleEv
    800012b0:	3cd000ef          	jal	ra,80001e7c <_ZN5Riscv13handleConsoleEv>


.irp index, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
ld x\index, \index * 8(sp)
.endr
    800012b4:	00813083          	ld	ra,8(sp)
    800012b8:	01013103          	ld	sp,16(sp)
    800012bc:	01813183          	ld	gp,24(sp)
    800012c0:	02013203          	ld	tp,32(sp)
    800012c4:	02813283          	ld	t0,40(sp)
    800012c8:	03013303          	ld	t1,48(sp)
    800012cc:	03813383          	ld	t2,56(sp)
    800012d0:	04013403          	ld	s0,64(sp)
    800012d4:	04813483          	ld	s1,72(sp)
    800012d8:	05013503          	ld	a0,80(sp)
    800012dc:	05813583          	ld	a1,88(sp)
    800012e0:	06013603          	ld	a2,96(sp)
    800012e4:	06813683          	ld	a3,104(sp)
    800012e8:	07013703          	ld	a4,112(sp)
    800012ec:	07813783          	ld	a5,120(sp)
    800012f0:	08013803          	ld	a6,128(sp)
    800012f4:	08813883          	ld	a7,136(sp)
    800012f8:	09013903          	ld	s2,144(sp)
    800012fc:	09813983          	ld	s3,152(sp)
    80001300:	0a013a03          	ld	s4,160(sp)
    80001304:	0a813a83          	ld	s5,168(sp)
    80001308:	0b013b03          	ld	s6,176(sp)
    8000130c:	0b813b83          	ld	s7,184(sp)
    80001310:	0c013c03          	ld	s8,192(sp)
    80001314:	0c813c83          	ld	s9,200(sp)
    80001318:	0d013d03          	ld	s10,208(sp)
    8000131c:	0d813d83          	ld	s11,216(sp)
    80001320:	0e013e03          	ld	t3,224(sp)
    80001324:	0e813e83          	ld	t4,232(sp)
    80001328:	0f013f03          	ld	t5,240(sp)
    8000132c:	0f813f83          	ld	t6,248(sp)

addi sp, sp, 256
    80001330:	10010113          	addi	sp,sp,256

    80001334:	10200073          	sret

0000000080001338 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function

_ZN3TCB13contextSwitchEPNS_7ContextES1_:


    sd ra,0*8(a0)
    80001338:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp,1*8(a0)
    8000133c:	00253423          	sd	sp,8(a0)

    ld ra,0*8(a1)
    80001340:	0005b083          	ld	ra,0(a1)
    ld sp, 1*8(a1)
    80001344:	0085b103          	ld	sp,8(a1)

    ret
    80001348:	00008067          	ret

000000008000134c <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    8000134c:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001350:	00b29a63          	bne	t0,a1,80001364 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001354:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001358:	fe029ae3          	bnez	t0,8000134c <copy_and_swap>
    li a0, 0               # Set return to success.
    8000135c:	00000513          	li	a0,0
    jr ra                  # Return.
    80001360:	00008067          	ret

0000000080001364 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001364:	00100513          	li	a0,1
    80001368:	00008067          	ret

000000008000136c <_Z9mem_allocm>:
#include "../h/TCB.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../lib/mem.h"
#include "../lib/console.h"

void *mem_alloc(size_t size) {
    8000136c:	ff010113          	addi	sp,sp,-16
    80001370:	00813423          	sd	s0,8(sp)
    80001374:	01010413          	addi	s0,sp,16
    //obavezno prvo pretvaranje u blokove
    uint64 newsize = size / MEM_BLOCK_SIZE;
    80001378:	00655793          	srli	a5,a0,0x6
    if(size%MEM_BLOCK_SIZE > 0){
    8000137c:	03f57513          	andi	a0,a0,63
    80001380:	00050463          	beqz	a0,80001388 <_Z9mem_allocm+0x1c>
        newsize++;
    80001384:	00178793          	addi	a5,a5,1
    }
    __asm__ volatile("mv a1, %0"::"r"(newsize));
    80001388:	00078593          	mv	a1,a5
    __asm__ volatile("li a0, 0x01");
    8000138c:	00100513          	li	a0,1

    __asm__ volatile("ecall");
    80001390:	00000073          	ecall

    uint64 rez;
    __asm__ volatile("mv %0, a0":"=r"(rez));
    80001394:	00050513          	mv	a0,a0
    return (void*)rez;
}
    80001398:	00813403          	ld	s0,8(sp)
    8000139c:	01010113          	addi	sp,sp,16
    800013a0:	00008067          	ret

00000000800013a4 <_Z8mem_freePv>:

int mem_free(void *ptr) {
    800013a4:	ff010113          	addi	sp,sp,-16
    800013a8:	00813423          	sd	s0,8(sp)
    800013ac:	01010413          	addi	s0,sp,16
    void* p = ptr;
    __asm__ volatile("mv a5, %0"::"r"(p));
    800013b0:	00050793          	mv	a5,a0
    __asm__ volatile("mv a1,a5");
    800013b4:	00078593          	mv	a1,a5
    __asm__ volatile("li a0, 0x02");
    800013b8:	00200513          	li	a0,2

    __asm__ volatile("ecall");
    800013bc:	00000073          	ecall

    uint64 rez;
    __asm__ volatile("mv %0, a0":"=r"(rez));
    800013c0:	00050513          	mv	a0,a0
    return rez;
}
    800013c4:	0005051b          	sext.w	a0,a0
    800013c8:	00813403          	ld	s0,8(sp)
    800013cc:	01010113          	addi	sp,sp,16
    800013d0:	00008067          	ret

00000000800013d4 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(TCB **handle, void (*start_routine)(void *), void *arg) {
    800013d4:	fd010113          	addi	sp,sp,-48
    800013d8:	02113423          	sd	ra,40(sp)
    800013dc:	02813023          	sd	s0,32(sp)
    800013e0:	00913c23          	sd	s1,24(sp)
    800013e4:	01213823          	sd	s2,16(sp)
    800013e8:	01313423          	sd	s3,8(sp)
    800013ec:	03010413          	addi	s0,sp,48
    800013f0:	00050913          	mv	s2,a0
    800013f4:	00058493          	mv	s1,a1
    800013f8:	00060993          	mv	s3,a2
    //receno je da mora da se alocira prvo stek pre sistemskog poziva
    uint64* stack_space;
    if(start_routine == nullptr){
    800013fc:	04058663          	beqz	a1,80001448 <_Z13thread_createPP3TCBPFvPvES2_+0x74>
        stack_space = nullptr;
    }else{
        stack_space = (uint64*) mem_alloc(DEFAULT_STACK_SIZE);
    80001400:	00001537          	lui	a0,0x1
    80001404:	00000097          	auipc	ra,0x0
    80001408:	f68080e7          	jalr	-152(ra) # 8000136c <_Z9mem_allocm>
    }
    __asm__ volatile("mv a4, %0"::"r"(stack_space));
    8000140c:	00050713          	mv	a4,a0
    void* a = arg;
    __asm__ volatile("mv a3, %0"::"r"(a));
    80001410:	00098693          	mv	a3,s3
    void (*startr)(void*) = start_routine;
    __asm__ volatile("mv a2, %0"::"r"(startr));
    80001414:	00048613          	mv	a2,s1
    TCB** h = handle;
    __asm__ volatile("mv a1, %0"::"r"(h));
    80001418:	00090593          	mv	a1,s2


    __asm__ volatile("li a0, 0x11");
    8000141c:	01100513          	li	a0,17
    __asm__ volatile("ecall");
    80001420:	00000073          	ecall

    uint64 rez;
    __asm__ volatile("mv %0, a0":"=r"(rez));
    80001424:	00050513          	mv	a0,a0
    return rez;
}
    80001428:	0005051b          	sext.w	a0,a0
    8000142c:	02813083          	ld	ra,40(sp)
    80001430:	02013403          	ld	s0,32(sp)
    80001434:	01813483          	ld	s1,24(sp)
    80001438:	01013903          	ld	s2,16(sp)
    8000143c:	00813983          	ld	s3,8(sp)
    80001440:	03010113          	addi	sp,sp,48
    80001444:	00008067          	ret
        stack_space = nullptr;
    80001448:	00000513          	li	a0,0
    8000144c:	fc1ff06f          	j	8000140c <_Z13thread_createPP3TCBPFvPvES2_+0x38>

0000000080001450 <_Z11thread_exitv>:


int thread_exit() {
    80001450:	ff010113          	addi	sp,sp,-16
    80001454:	00813423          	sd	s0,8(sp)
    80001458:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    8000145c:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80001460:	00000073          	ecall

    return 0;
}
    80001464:	00000513          	li	a0,0
    80001468:	00813403          	ld	s0,8(sp)
    8000146c:	01010113          	addi	sp,sp,16
    80001470:	00008067          	ret

0000000080001474 <_Z15thread_dispatchv>:

void thread_dispatch() {
    80001474:	ff010113          	addi	sp,sp,-16
    80001478:	00813423          	sd	s0,8(sp)
    8000147c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001480:	01300513          	li	a0,19

    __asm__ volatile("ecall");
    80001484:	00000073          	ecall
    return;
}
    80001488:	00813403          	ld	s0,8(sp)
    8000148c:	01010113          	addi	sp,sp,16
    80001490:	00008067          	ret

0000000080001494 <_Z11thread_joinP3TCB>:

void thread_join(thread_t handle) {
    80001494:	ff010113          	addi	sp,sp,-16
    80001498:	00813423          	sd	s0,8(sp)
    8000149c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(handle));
    800014a0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x14");
    800014a4:	01400513          	li	a0,20

    __asm__ volatile("ecall");
    800014a8:	00000073          	ecall
}
    800014ac:	00813403          	ld	s0,8(sp)
    800014b0:	01010113          	addi	sp,sp,16
    800014b4:	00008067          	ret

00000000800014b8 <_Z8sem_openPP5MySemj>:

int sem_open(sem_t *handle, unsigned int init) {
    800014b8:	ff010113          	addi	sp,sp,-16
    800014bc:	00813423          	sd	s0,8(sp)
    800014c0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0"::"r"(init));
    800014c4:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0"::"r"(handle));
    800014c8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    800014cc:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    800014d0:	00000073          	ecall

    uint64 rez;
    __asm__ volatile("mv %0, a0":"=r"(rez));
    800014d4:	00050513          	mv	a0,a0
    return rez;
}
    800014d8:	0005051b          	sext.w	a0,a0
    800014dc:	00813403          	ld	s0,8(sp)
    800014e0:	01010113          	addi	sp,sp,16
    800014e4:	00008067          	ret

00000000800014e8 <_Z9sem_closeP5MySem>:

int sem_close(sem_t handle) {
    800014e8:	ff010113          	addi	sp,sp,-16
    800014ec:	00813423          	sd	s0,8(sp)
    800014f0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(handle));
    800014f4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    800014f8:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    800014fc:	00000073          	ecall

    uint64 rez;
    __asm__ volatile("mv %0, a0":"=r"(rez));
    80001500:	00050513          	mv	a0,a0
    return rez;
}
    80001504:	0005051b          	sext.w	a0,a0
    80001508:	00813403          	ld	s0,8(sp)
    8000150c:	01010113          	addi	sp,sp,16
    80001510:	00008067          	ret

0000000080001514 <_Z8sem_waitP5MySem>:

int sem_wait(sem_t id) {
    80001514:	ff010113          	addi	sp,sp,-16
    80001518:	00813423          	sd	s0,8(sp)
    8000151c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(id));
    80001520:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    80001524:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    80001528:	00000073          	ecall

    uint64 rez;
    __asm__ volatile("mv %0, a0":"=r"(rez));
    8000152c:	00050513          	mv	a0,a0
    return rez;
}
    80001530:	0005051b          	sext.w	a0,a0
    80001534:	00813403          	ld	s0,8(sp)
    80001538:	01010113          	addi	sp,sp,16
    8000153c:	00008067          	ret

0000000080001540 <_Z10sem_signalP5MySem>:

int sem_signal(sem_t id) {
    80001540:	ff010113          	addi	sp,sp,-16
    80001544:	00813423          	sd	s0,8(sp)
    80001548:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(id));
    8000154c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    80001550:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    80001554:	00000073          	ecall

    uint64 rez;
    __asm__ volatile("mv %0, a0":"=r"(rez));
    80001558:	00050513          	mv	a0,a0
    return rez;
}
    8000155c:	0005051b          	sext.w	a0,a0
    80001560:	00813403          	ld	s0,8(sp)
    80001564:	01010113          	addi	sp,sp,16
    80001568:	00008067          	ret

000000008000156c <_Z10changeUserv>:

void changeUser() {
    8000156c:	ff010113          	addi	sp,sp,-16
    80001570:	00813423          	sd	s0,8(sp)
    80001574:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0,0x25");
    80001578:	02500513          	li	a0,37
    __asm__ volatile("ecall");
    8000157c:	00000073          	ecall
    return;

}
    80001580:	00813403          	ld	s0,8(sp)
    80001584:	01010113          	addi	sp,sp,16
    80001588:	00008067          	ret

000000008000158c <_Z10time_sleepm>:

int time_sleep(time_t) {
    8000158c:	ff010113          	addi	sp,sp,-16
    80001590:	00813423          	sd	s0,8(sp)
    80001594:	01010413          	addi	s0,sp,16
    return 0;
}
    80001598:	00000513          	li	a0,0
    8000159c:	00813403          	ld	s0,8(sp)
    800015a0:	01010113          	addi	sp,sp,16
    800015a4:	00008067          	ret

00000000800015a8 <_Z4getcv>:

char getc() {
    800015a8:	ff010113          	addi	sp,sp,-16
    800015ac:	00813423          	sd	s0,8(sp)
    800015b0:	01010413          	addi	s0,sp,16

    __asm__ volatile("li a0, 0x41");
    800015b4:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    800015b8:	00000073          	ecall

    char c;
    __asm__ volatile("mv %0,a0":"=r"(c));
    800015bc:	00050513          	mv	a0,a0

    return c;
}
    800015c0:	0ff57513          	andi	a0,a0,255
    800015c4:	00813403          	ld	s0,8(sp)
    800015c8:	01010113          	addi	sp,sp,16
    800015cc:	00008067          	ret

00000000800015d0 <_Z4putcc>:

void putc(char c) {
    800015d0:	ff010113          	addi	sp,sp,-16
    800015d4:	00813423          	sd	s0,8(sp)
    800015d8:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a1,%0"::"r"(c));
    800015dc:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    800015e0:	04200513          	li	a0,66

    __asm__ volatile("ecall");
    800015e4:	00000073          	ecall

}
    800015e8:	00813403          	ld	s0,8(sp)
    800015ec:	01010113          	addi	sp,sp,16
    800015f0:	00008067          	ret

00000000800015f4 <_ZN9Scheduler3getEv>:
#include "../lib/mem.h"

Elem* Scheduler::head = nullptr;
Elem* Scheduler::tail = nullptr;

TCB *Scheduler::get() {
    800015f4:	fe010113          	addi	sp,sp,-32
    800015f8:	00113c23          	sd	ra,24(sp)
    800015fc:	00813823          	sd	s0,16(sp)
    80001600:	00913423          	sd	s1,8(sp)
    80001604:	01213023          	sd	s2,0(sp)
    80001608:	02010413          	addi	s0,sp,32
    if(!head){
    8000160c:	00009497          	auipc	s1,0x9
    80001610:	e044b483          	ld	s1,-508(s1) # 8000a410 <_ZN9Scheduler4headE>
    80001614:	04048a63          	beqz	s1,80001668 <_ZN9Scheduler3getEv+0x74>
        return 0;
    }
    Elem* elem = head;
    head = head->next;
    80001618:	0084b783          	ld	a5,8(s1)
    8000161c:	00009717          	auipc	a4,0x9
    80001620:	def73a23          	sd	a5,-524(a4) # 8000a410 <_ZN9Scheduler4headE>
    if(!head){
    80001624:	02078c63          	beqz	a5,8000165c <_ZN9Scheduler3getEv+0x68>
        tail = 0;
    }
    TCB* ret = elem->data;
    80001628:	0004b903          	ld	s2,0(s1)
    MemoryAllocator::getInstance()._mem_free(elem);
    8000162c:	00001097          	auipc	ra,0x1
    80001630:	b5c080e7          	jalr	-1188(ra) # 80002188 <_ZN15MemoryAllocator11getInstanceEv>
    80001634:	00048593          	mv	a1,s1
    80001638:	00001097          	auipc	ra,0x1
    8000163c:	bbc080e7          	jalr	-1092(ra) # 800021f4 <_ZN15MemoryAllocator9_mem_freeEPv>
    return ret;
}
    80001640:	00090513          	mv	a0,s2
    80001644:	01813083          	ld	ra,24(sp)
    80001648:	01013403          	ld	s0,16(sp)
    8000164c:	00813483          	ld	s1,8(sp)
    80001650:	00013903          	ld	s2,0(sp)
    80001654:	02010113          	addi	sp,sp,32
    80001658:	00008067          	ret
        tail = 0;
    8000165c:	00009797          	auipc	a5,0x9
    80001660:	da07be23          	sd	zero,-580(a5) # 8000a418 <_ZN9Scheduler4tailE>
    80001664:	fc5ff06f          	j	80001628 <_ZN9Scheduler3getEv+0x34>
        return 0;
    80001668:	00048913          	mv	s2,s1
    8000166c:	fd5ff06f          	j	80001640 <_ZN9Scheduler3getEv+0x4c>

0000000080001670 <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB *thread) {
    80001670:	fe010113          	addi	sp,sp,-32
    80001674:	00113c23          	sd	ra,24(sp)
    80001678:	00813823          	sd	s0,16(sp)
    8000167c:	00913423          	sd	s1,8(sp)
    80001680:	02010413          	addi	s0,sp,32
    80001684:	00050493          	mv	s1,a0
    Elem* elem = (Elem*)MemoryAllocator::getInstance()._mem_alloc(sizeof(Elem)/MEM_BLOCK_SIZE + (sizeof(Elem)%MEM_BLOCK_SIZE > 0 ? 1:0));
    80001688:	00001097          	auipc	ra,0x1
    8000168c:	b00080e7          	jalr	-1280(ra) # 80002188 <_ZN15MemoryAllocator11getInstanceEv>
    80001690:	00100593          	li	a1,1
    80001694:	00001097          	auipc	ra,0x1
    80001698:	9e4080e7          	jalr	-1564(ra) # 80002078 <_ZN15MemoryAllocator10_mem_allocEm>
    elem->data = thread;
    8000169c:	00953023          	sd	s1,0(a0) # 1000 <_entry-0x7ffff000>
    elem->next = 0;
    800016a0:	00053423          	sd	zero,8(a0)
    if(tail != nullptr){
    800016a4:	00009797          	auipc	a5,0x9
    800016a8:	d747b783          	ld	a5,-652(a5) # 8000a418 <_ZN9Scheduler4tailE>
    800016ac:	02078263          	beqz	a5,800016d0 <_ZN9Scheduler3putEP3TCB+0x60>
        tail->next = elem;
    800016b0:	00a7b423          	sd	a0,8(a5)
        tail = elem;
    800016b4:	00009797          	auipc	a5,0x9
    800016b8:	d6a7b223          	sd	a0,-668(a5) # 8000a418 <_ZN9Scheduler4tailE>
    }else{
        head = tail = elem;
    }
}
    800016bc:	01813083          	ld	ra,24(sp)
    800016c0:	01013403          	ld	s0,16(sp)
    800016c4:	00813483          	ld	s1,8(sp)
    800016c8:	02010113          	addi	sp,sp,32
    800016cc:	00008067          	ret
        head = tail = elem;
    800016d0:	00009797          	auipc	a5,0x9
    800016d4:	d4078793          	addi	a5,a5,-704 # 8000a410 <_ZN9Scheduler4headE>
    800016d8:	00a7b423          	sd	a0,8(a5)
    800016dc:	00a7b023          	sd	a0,0(a5)
}
    800016e0:	fddff06f          	j	800016bc <_ZN9Scheduler3putEP3TCB+0x4c>

00000000800016e4 <main>:
#include "../test/printing.hpp"

void userMain();

void vectorMode();
void main(){
    800016e4:	fd010113          	addi	sp,sp,-48
    800016e8:	02113423          	sd	ra,40(sp)
    800016ec:	02813023          	sd	s0,32(sp)
    800016f0:	00913c23          	sd	s1,24(sp)
    800016f4:	03010413          	addi	s0,sp,48
    vectorMode();
    800016f8:	00000097          	auipc	ra,0x0
    800016fc:	0f4080e7          	jalr	244(ra) # 800017ec <_Z10vectorModev>
    TCB* nit;
    //idle nit
    thread_create(&nit, nullptr, nullptr);
    80001700:	00000613          	li	a2,0
    80001704:	00000593          	li	a1,0
    80001708:	fd840513          	addi	a0,s0,-40
    8000170c:	00000097          	auipc	ra,0x0
    80001710:	cc8080e7          	jalr	-824(ra) # 800013d4 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running=nit;
    80001714:	00009797          	auipc	a5,0x9
    80001718:	cac7b783          	ld	a5,-852(a5) # 8000a3c0 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000171c:	fd843703          	ld	a4,-40(s0)
    80001720:	00e7b023          	sd	a4,0(a5)
    //prelazak u korisnicki rezim
    changeUser();
    80001724:	00000097          	auipc	ra,0x0
    80001728:	e48080e7          	jalr	-440(ra) # 8000156c <_Z10changeUserv>
    userMain();
    8000172c:	00004097          	auipc	ra,0x4
    80001730:	9fc080e7          	jalr	-1540(ra) # 80005128 <_Z8userMainv>
    while(Scheduler::get()){
    80001734:	00000097          	auipc	ra,0x0
    80001738:	ec0080e7          	jalr	-320(ra) # 800015f4 <_ZN9Scheduler3getEv>
    8000173c:	00050863          	beqz	a0,8000174c <main+0x68>
        thread_dispatch();
    80001740:	00000097          	auipc	ra,0x0
    80001744:	d34080e7          	jalr	-716(ra) # 80001474 <_Z15thread_dispatchv>
    80001748:	fedff06f          	j	80001734 <main+0x50>
    }

    delete nit;
    8000174c:	fd843483          	ld	s1,-40(s0)
    80001750:	02048263          	beqz	s1,80001774 <main+0x90>


class TCB{
public:
    ~TCB(){
        MemoryAllocator::getInstance()._mem_free(stack);
    80001754:	00001097          	auipc	ra,0x1
    80001758:	a34080e7          	jalr	-1484(ra) # 80002188 <_ZN15MemoryAllocator11getInstanceEv>
    8000175c:	0084b583          	ld	a1,8(s1)
    80001760:	00001097          	auipc	ra,0x1
    80001764:	a94080e7          	jalr	-1388(ra) # 800021f4 <_ZN15MemoryAllocator9_mem_freeEPv>
    80001768:	00048513          	mv	a0,s1
    8000176c:	00000097          	auipc	ra,0x0
    80001770:	2f0080e7          	jalr	752(ra) # 80001a5c <_ZdlPv>


}
    80001774:	02813083          	ld	ra,40(sp)
    80001778:	02013403          	ld	s0,32(sp)
    8000177c:	01813483          	ld	s1,24(sp)
    80001780:	03010113          	addi	sp,sp,48
    80001784:	00008067          	ret

0000000080001788 <_ZN6Thread7wrapperEPv>:

int Thread::sleep(time_t time) {
    return time_sleep(time);
}

void Thread::wrapper(void *arg) {
    80001788:	ff010113          	addi	sp,sp,-16
    8000178c:	00113423          	sd	ra,8(sp)
    80001790:	00813023          	sd	s0,0(sp)
    80001794:	01010413          	addi	s0,sp,16
    Thread* nit = (Thread*) arg;
    nit->run();
    80001798:	00053783          	ld	a5,0(a0)
    8000179c:	0107b783          	ld	a5,16(a5)
    800017a0:	000780e7          	jalr	a5
}
    800017a4:	00813083          	ld	ra,8(sp)
    800017a8:	00013403          	ld	s0,0(sp)
    800017ac:	01010113          	addi	sp,sp,16
    800017b0:	00008067          	ret

00000000800017b4 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle,init);

}

Semaphore::~Semaphore() {
    800017b4:	ff010113          	addi	sp,sp,-16
    800017b8:	00113423          	sd	ra,8(sp)
    800017bc:	00813023          	sd	s0,0(sp)
    800017c0:	01010413          	addi	s0,sp,16
    800017c4:	00009797          	auipc	a5,0x9
    800017c8:	a1c78793          	addi	a5,a5,-1508 # 8000a1e0 <_ZTV9Semaphore+0x10>
    800017cc:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800017d0:	00853503          	ld	a0,8(a0)
    800017d4:	00000097          	auipc	ra,0x0
    800017d8:	d14080e7          	jalr	-748(ra) # 800014e8 <_Z9sem_closeP5MySem>
}
    800017dc:	00813083          	ld	ra,8(sp)
    800017e0:	00013403          	ld	s0,0(sp)
    800017e4:	01010113          	addi	sp,sp,16
    800017e8:	00008067          	ret

00000000800017ec <_Z10vectorModev>:
void vectorMode(){
    800017ec:	ff010113          	addi	sp,sp,-16
    800017f0:	00813423          	sd	s0,8(sp)
    800017f4:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw stvec, %0"::"r"((uint64)(&supervisorTrap) | 1));
    800017f8:	00009797          	auipc	a5,0x9
    800017fc:	bb87b783          	ld	a5,-1096(a5) # 8000a3b0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001800:	0017e793          	ori	a5,a5,1
    80001804:	10579073          	csrw	stvec,a5
}
    80001808:	00813403          	ld	s0,8(sp)
    8000180c:	01010113          	addi	sp,sp,16
    80001810:	00008067          	ret

0000000080001814 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001814:	ff010113          	addi	sp,sp,-16
    80001818:	00813423          	sd	s0,8(sp)
    8000181c:	01010413          	addi	s0,sp,16
    80001820:	00009797          	auipc	a5,0x9
    80001824:	99878793          	addi	a5,a5,-1640 # 8000a1b8 <_ZTV6Thread+0x10>
    80001828:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    8000182c:	00053423          	sd	zero,8(a0)
    this->body = wrapper;
    80001830:	00000797          	auipc	a5,0x0
    80001834:	f5878793          	addi	a5,a5,-168 # 80001788 <_ZN6Thread7wrapperEPv>
    80001838:	00f53823          	sd	a5,16(a0)
    this->arg = this;
    8000183c:	00a53c23          	sd	a0,24(a0)
}
    80001840:	00813403          	ld	s0,8(sp)
    80001844:	01010113          	addi	sp,sp,16
    80001848:	00008067          	ret

000000008000184c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    8000184c:	ff010113          	addi	sp,sp,-16
    80001850:	00813423          	sd	s0,8(sp)
    80001854:	01010413          	addi	s0,sp,16
    80001858:	00009797          	auipc	a5,0x9
    8000185c:	96078793          	addi	a5,a5,-1696 # 8000a1b8 <_ZTV6Thread+0x10>
    80001860:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    80001864:	00053423          	sd	zero,8(a0)
    this->body = body;
    80001868:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    8000186c:	00c53c23          	sd	a2,24(a0)
}
    80001870:	00813403          	ld	s0,8(sp)
    80001874:	01010113          	addi	sp,sp,16
    80001878:	00008067          	ret

000000008000187c <_ZN6Thread5startEv>:
int Thread::start() {
    8000187c:	ff010113          	addi	sp,sp,-16
    80001880:	00113423          	sd	ra,8(sp)
    80001884:	00813023          	sd	s0,0(sp)
    80001888:	01010413          	addi	s0,sp,16
    return thread_create(&this->myHandle, this->body, this->arg);
    8000188c:	01853603          	ld	a2,24(a0)
    80001890:	01053583          	ld	a1,16(a0)
    80001894:	00850513          	addi	a0,a0,8
    80001898:	00000097          	auipc	ra,0x0
    8000189c:	b3c080e7          	jalr	-1220(ra) # 800013d4 <_Z13thread_createPP3TCBPFvPvES2_>
}
    800018a0:	00813083          	ld	ra,8(sp)
    800018a4:	00013403          	ld	s0,0(sp)
    800018a8:	01010113          	addi	sp,sp,16
    800018ac:	00008067          	ret

00000000800018b0 <_ZN6Thread4joinEv>:
void Thread::join() {
    800018b0:	ff010113          	addi	sp,sp,-16
    800018b4:	00113423          	sd	ra,8(sp)
    800018b8:	00813023          	sd	s0,0(sp)
    800018bc:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    800018c0:	00853503          	ld	a0,8(a0)
    800018c4:	00000097          	auipc	ra,0x0
    800018c8:	bd0080e7          	jalr	-1072(ra) # 80001494 <_Z11thread_joinP3TCB>
}
    800018cc:	00813083          	ld	ra,8(sp)
    800018d0:	00013403          	ld	s0,0(sp)
    800018d4:	01010113          	addi	sp,sp,16
    800018d8:	00008067          	ret

00000000800018dc <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800018dc:	ff010113          	addi	sp,sp,-16
    800018e0:	00113423          	sd	ra,8(sp)
    800018e4:	00813023          	sd	s0,0(sp)
    800018e8:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800018ec:	00000097          	auipc	ra,0x0
    800018f0:	b88080e7          	jalr	-1144(ra) # 80001474 <_Z15thread_dispatchv>
}
    800018f4:	00813083          	ld	ra,8(sp)
    800018f8:	00013403          	ld	s0,0(sp)
    800018fc:	01010113          	addi	sp,sp,16
    80001900:	00008067          	ret

0000000080001904 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80001904:	ff010113          	addi	sp,sp,-16
    80001908:	00113423          	sd	ra,8(sp)
    8000190c:	00813023          	sd	s0,0(sp)
    80001910:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80001914:	00000097          	auipc	ra,0x0
    80001918:	c78080e7          	jalr	-904(ra) # 8000158c <_Z10time_sleepm>
}
    8000191c:	00813083          	ld	ra,8(sp)
    80001920:	00013403          	ld	s0,0(sp)
    80001924:	01010113          	addi	sp,sp,16
    80001928:	00008067          	ret

000000008000192c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    8000192c:	ff010113          	addi	sp,sp,-16
    80001930:	00113423          	sd	ra,8(sp)
    80001934:	00813023          	sd	s0,0(sp)
    80001938:	01010413          	addi	s0,sp,16
    8000193c:	00009797          	auipc	a5,0x9
    80001940:	8a478793          	addi	a5,a5,-1884 # 8000a1e0 <_ZTV9Semaphore+0x10>
    80001944:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle,init);
    80001948:	00850513          	addi	a0,a0,8
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	b6c080e7          	jalr	-1172(ra) # 800014b8 <_Z8sem_openPP5MySemj>
}
    80001954:	00813083          	ld	ra,8(sp)
    80001958:	00013403          	ld	s0,0(sp)
    8000195c:	01010113          	addi	sp,sp,16
    80001960:	00008067          	ret

0000000080001964 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80001964:	ff010113          	addi	sp,sp,-16
    80001968:	00113423          	sd	ra,8(sp)
    8000196c:	00813023          	sd	s0,0(sp)
    80001970:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001974:	00853503          	ld	a0,8(a0)
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	b9c080e7          	jalr	-1124(ra) # 80001514 <_Z8sem_waitP5MySem>
}
    80001980:	00813083          	ld	ra,8(sp)
    80001984:	00013403          	ld	s0,0(sp)
    80001988:	01010113          	addi	sp,sp,16
    8000198c:	00008067          	ret

0000000080001990 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001990:	ff010113          	addi	sp,sp,-16
    80001994:	00113423          	sd	ra,8(sp)
    80001998:	00813023          	sd	s0,0(sp)
    8000199c:	01010413          	addi	s0,sp,16
   return sem_signal(myHandle);
    800019a0:	00853503          	ld	a0,8(a0)
    800019a4:	00000097          	auipc	ra,0x0
    800019a8:	b9c080e7          	jalr	-1124(ra) # 80001540 <_Z10sem_signalP5MySem>
}
    800019ac:	00813083          	ld	ra,8(sp)
    800019b0:	00013403          	ld	s0,0(sp)
    800019b4:	01010113          	addi	sp,sp,16
    800019b8:	00008067          	ret

00000000800019bc <_ZN7Console4getcEv>:

PeriodicThread::PeriodicThread(time_t period) {

}
*/
char Console::getc() {
    800019bc:	ff010113          	addi	sp,sp,-16
    800019c0:	00113423          	sd	ra,8(sp)
    800019c4:	00813023          	sd	s0,0(sp)
    800019c8:	01010413          	addi	s0,sp,16
    return ::getc();
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	bdc080e7          	jalr	-1060(ra) # 800015a8 <_Z4getcv>
}
    800019d4:	00813083          	ld	ra,8(sp)
    800019d8:	00013403          	ld	s0,0(sp)
    800019dc:	01010113          	addi	sp,sp,16
    800019e0:	00008067          	ret

00000000800019e4 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800019e4:	ff010113          	addi	sp,sp,-16
    800019e8:	00113423          	sd	ra,8(sp)
    800019ec:	00813023          	sd	s0,0(sp)
    800019f0:	01010413          	addi	s0,sp,16
    ::putc(c);
    800019f4:	00000097          	auipc	ra,0x0
    800019f8:	bdc080e7          	jalr	-1060(ra) # 800015d0 <_Z4putcc>
}
    800019fc:	00813083          	ld	ra,8(sp)
    80001a00:	00013403          	ld	s0,0(sp)
    80001a04:	01010113          	addi	sp,sp,16
    80001a08:	00008067          	ret

0000000080001a0c <_Znwm>:

void *operator new(size_t size) {
    80001a0c:	ff010113          	addi	sp,sp,-16
    80001a10:	00113423          	sd	ra,8(sp)
    80001a14:	00813023          	sd	s0,0(sp)
    80001a18:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001a1c:	00000097          	auipc	ra,0x0
    80001a20:	950080e7          	jalr	-1712(ra) # 8000136c <_Z9mem_allocm>
}
    80001a24:	00813083          	ld	ra,8(sp)
    80001a28:	00013403          	ld	s0,0(sp)
    80001a2c:	01010113          	addi	sp,sp,16
    80001a30:	00008067          	ret

0000000080001a34 <_Znam>:
void *operator new[](size_t size) {
    80001a34:	ff010113          	addi	sp,sp,-16
    80001a38:	00113423          	sd	ra,8(sp)
    80001a3c:	00813023          	sd	s0,0(sp)
    80001a40:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001a44:	00000097          	auipc	ra,0x0
    80001a48:	928080e7          	jalr	-1752(ra) # 8000136c <_Z9mem_allocm>
}
    80001a4c:	00813083          	ld	ra,8(sp)
    80001a50:	00013403          	ld	s0,0(sp)
    80001a54:	01010113          	addi	sp,sp,16
    80001a58:	00008067          	ret

0000000080001a5c <_ZdlPv>:

void operator delete(void *ptr) {
    80001a5c:	ff010113          	addi	sp,sp,-16
    80001a60:	00113423          	sd	ra,8(sp)
    80001a64:	00813023          	sd	s0,0(sp)
    80001a68:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001a6c:	00000097          	auipc	ra,0x0
    80001a70:	938080e7          	jalr	-1736(ra) # 800013a4 <_Z8mem_freePv>
}
    80001a74:	00813083          	ld	ra,8(sp)
    80001a78:	00013403          	ld	s0,0(sp)
    80001a7c:	01010113          	addi	sp,sp,16
    80001a80:	00008067          	ret

0000000080001a84 <_ZN6ThreadD1Ev>:
Thread::~Thread(){
    80001a84:	fe010113          	addi	sp,sp,-32
    80001a88:	00113c23          	sd	ra,24(sp)
    80001a8c:	00813823          	sd	s0,16(sp)
    80001a90:	00913423          	sd	s1,8(sp)
    80001a94:	02010413          	addi	s0,sp,32
    80001a98:	00050493          	mv	s1,a0
    80001a9c:	00008797          	auipc	a5,0x8
    80001aa0:	71c78793          	addi	a5,a5,1820 # 8000a1b8 <_ZTV6Thread+0x10>
    80001aa4:	00f53023          	sd	a5,0(a0)
    join();
    80001aa8:	00000097          	auipc	ra,0x0
    80001aac:	e08080e7          	jalr	-504(ra) # 800018b0 <_ZN6Thread4joinEv>
    delete myHandle;
    80001ab0:	0084b483          	ld	s1,8(s1)
    80001ab4:	02048263          	beqz	s1,80001ad8 <_ZN6ThreadD1Ev+0x54>
    80001ab8:	00000097          	auipc	ra,0x0
    80001abc:	6d0080e7          	jalr	1744(ra) # 80002188 <_ZN15MemoryAllocator11getInstanceEv>
    80001ac0:	0084b583          	ld	a1,8(s1)
    80001ac4:	00000097          	auipc	ra,0x0
    80001ac8:	730080e7          	jalr	1840(ra) # 800021f4 <_ZN15MemoryAllocator9_mem_freeEPv>
    80001acc:	00048513          	mv	a0,s1
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	f8c080e7          	jalr	-116(ra) # 80001a5c <_ZdlPv>
}
    80001ad8:	01813083          	ld	ra,24(sp)
    80001adc:	01013403          	ld	s0,16(sp)
    80001ae0:	00813483          	ld	s1,8(sp)
    80001ae4:	02010113          	addi	sp,sp,32
    80001ae8:	00008067          	ret

0000000080001aec <_ZN6ThreadD0Ev>:
Thread::~Thread(){
    80001aec:	fe010113          	addi	sp,sp,-32
    80001af0:	00113c23          	sd	ra,24(sp)
    80001af4:	00813823          	sd	s0,16(sp)
    80001af8:	00913423          	sd	s1,8(sp)
    80001afc:	02010413          	addi	s0,sp,32
    80001b00:	00050493          	mv	s1,a0
}
    80001b04:	00000097          	auipc	ra,0x0
    80001b08:	f80080e7          	jalr	-128(ra) # 80001a84 <_ZN6ThreadD1Ev>
    80001b0c:	00048513          	mv	a0,s1
    80001b10:	00000097          	auipc	ra,0x0
    80001b14:	f4c080e7          	jalr	-180(ra) # 80001a5c <_ZdlPv>
    80001b18:	01813083          	ld	ra,24(sp)
    80001b1c:	01013403          	ld	s0,16(sp)
    80001b20:	00813483          	ld	s1,8(sp)
    80001b24:	02010113          	addi	sp,sp,32
    80001b28:	00008067          	ret

0000000080001b2c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001b2c:	fe010113          	addi	sp,sp,-32
    80001b30:	00113c23          	sd	ra,24(sp)
    80001b34:	00813823          	sd	s0,16(sp)
    80001b38:	00913423          	sd	s1,8(sp)
    80001b3c:	02010413          	addi	s0,sp,32
    80001b40:	00050493          	mv	s1,a0
}
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	c70080e7          	jalr	-912(ra) # 800017b4 <_ZN9SemaphoreD1Ev>
    80001b4c:	00048513          	mv	a0,s1
    80001b50:	00000097          	auipc	ra,0x0
    80001b54:	f0c080e7          	jalr	-244(ra) # 80001a5c <_ZdlPv>
    80001b58:	01813083          	ld	ra,24(sp)
    80001b5c:	01013403          	ld	s0,16(sp)
    80001b60:	00813483          	ld	s1,8(sp)
    80001b64:	02010113          	addi	sp,sp,32
    80001b68:	00008067          	ret

0000000080001b6c <_ZdaPv>:
void operator delete[](void *ptr) {
    80001b6c:	ff010113          	addi	sp,sp,-16
    80001b70:	00113423          	sd	ra,8(sp)
    80001b74:	00813023          	sd	s0,0(sp)
    80001b78:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001b7c:	00000097          	auipc	ra,0x0
    80001b80:	828080e7          	jalr	-2008(ra) # 800013a4 <_Z8mem_freePv>
}
    80001b84:	00813083          	ld	ra,8(sp)
    80001b88:	00013403          	ld	s0,0(sp)
    80001b8c:	01010113          	addi	sp,sp,16
    80001b90:	00008067          	ret

0000000080001b94 <_ZN6Thread3runEv>:
    static int sleep(time_t);
    static void wrapper(void* arg);

protected:
    Thread();
    virtual void run(){}
    80001b94:	ff010113          	addi	sp,sp,-16
    80001b98:	00813423          	sd	s0,8(sp)
    80001b9c:	01010413          	addi	s0,sp,16
    80001ba0:	00813403          	ld	s0,8(sp)
    80001ba4:	01010113          	addi	sp,sp,16
    80001ba8:	00008067          	ret

0000000080001bac <_ZN5Riscv10popSppSpieEv>:
#include "../h/TCB.hpp"
#include "../test/printing.hpp"
#include "../h/MySem.hpp"


void Riscv::popSppSpie() {
    80001bac:	ff010113          	addi	sp,sp,-16
    80001bb0:	00813423          	sd	s0,8(sp)
    80001bb4:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001bb8:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001bbc:	10200073          	sret
}
    80001bc0:	00813403          	ld	s0,8(sp)
    80001bc4:	01010113          	addi	sp,sp,16
    80001bc8:	00008067          	ret

0000000080001bcc <_ZN5Riscv10handleTrapEv>:

void Riscv::handleTrap() {
    80001bcc:	fc010113          	addi	sp,sp,-64
    80001bd0:	02113c23          	sd	ra,56(sp)
    80001bd4:	02813823          	sd	s0,48(sp)
    80001bd8:	02913423          	sd	s1,40(sp)
    80001bdc:	04010413          	addi	s0,sp,64


public:
    uint64 getCode(){
        uint64 rez;
        __asm__ volatile("mv %0, a0":"=r"(rez));
    80001be0:	00050793          	mv	a5,a0
    uint64 volatile code = getCode();
    80001be4:	fcf43c23          	sd	a5,-40(s0)
        return rez;
    }

    uint64 getFirstArgument(){
        uint64 rez;
        __asm__ volatile("mv %0, a1":"=r"(rez));
    80001be8:	00058493          	mv	s1,a1
        return rez;
    }

    uint64 getSecondArgument(){
        uint64 rez;
        __asm__ volatile("mv %0, a2":"=r"(rez));
    80001bec:	00060593          	mv	a1,a2
        return rez;
    }

    uint64 getThirdArgument(){
        uint64 rez;
        __asm__ volatile("mv %0, a3":"=r"(rez));
    80001bf0:	00068613          	mv	a2,a3
        return rez;
    }

    uint64 getFourthArgument(){
        uint64 rez;
        __asm__ volatile("mv %0, a4":"=r"(rez));
    80001bf4:	00070693          	mv	a3,a4
        return rez;
    }
    uint64 getSepc(){
        uint64 rez;
        __asm__ volatile("csrr %0, sepc":"=r"(rez));
    80001bf8:	141027f3          	csrr	a5,sepc
    uint64 reg1 = getFirstArgument();
    uint64 reg2 = getSecondArgument();
    uint64 reg3 = getThirdArgument();
    uint64 reg6 = getFourthArgument();

    uint64 volatile mysepc = getSepc();
    80001bfc:	fcf43823          	sd	a5,-48(s0)
        return rez;
    }

    uint64 getScause(){
        uint64 rez;
        __asm__ volatile("csrr %0, scause":"=r"(rez));
    80001c00:	142027f3          	csrr	a5,scause

    uint64 volatile cause = getScause();
    80001c04:	fcf43423          	sd	a5,-56(s0)

    if(cause == 0x08 || cause == 0x09){
    80001c08:	fc843703          	ld	a4,-56(s0)
    80001c0c:	00800793          	li	a5,8
    80001c10:	00f70863          	beq	a4,a5,80001c20 <_ZN5Riscv10handleTrapEv+0x54>
    80001c14:	fc843703          	ld	a4,-56(s0)
    80001c18:	00900793          	li	a5,9
    80001c1c:	0af71c63          	bne	a4,a5,80001cd4 <_ZN5Riscv10handleTrapEv+0x108>
        return rez;
    }

    uint64 getSstatus(){
        uint64 rez;
        __asm__ volatile("csrr %0,sstatus":"=r"(rez));
    80001c20:	100027f3          	csrr	a5,sstatus
        uint64 volatile status = getSstatus();
    80001c24:	fcf43023          	sd	a5,-64(s0)
        if(code == 0x01){
    80001c28:	fd843703          	ld	a4,-40(s0)
    80001c2c:	00100793          	li	a5,1
    80001c30:	0cf70863          	beq	a4,a5,80001d00 <_ZN5Riscv10handleTrapEv+0x134>
            void* ptr;
            ptr = MemoryAllocator::getInstance()._mem_alloc(arg);
            __asm__ volatile("mv a0, %0"::"r"(ptr));

        }
        else if(code == 0x02){
    80001c34:	fd843703          	ld	a4,-40(s0)
    80001c38:	00200793          	li	a5,2
    80001c3c:	10f70663          	beq	a4,a5,80001d48 <_ZN5Riscv10handleTrapEv+0x17c>
            int rez;
            rez = MemoryAllocator::getInstance()._mem_free((void*)arg);
            __asm__ volatile("mv a0, %0"::"r"(rez));

        }
        else if(code == 0x11){
    80001c40:	fd843703          	ld	a4,-40(s0)
    80001c44:	01100793          	li	a5,17
    80001c48:	10f70e63          	beq	a4,a5,80001d64 <_ZN5Riscv10handleTrapEv+0x198>
                r = -1;
            }
            __asm__ volatile("mv a0, %0"::"r"(r));

        }
        else if(code == 0x12){
    80001c4c:	fd843703          	ld	a4,-40(s0)
    80001c50:	01200793          	li	a5,18
    80001c54:	12f70a63          	beq	a4,a5,80001d88 <_ZN5Riscv10handleTrapEv+0x1bc>
            //thread_exit
            //samo postavis polje da je nit ugasena i promenis da neka druga postane running
            TCB::running->finished = true;
            TCB::dispatch();
        }
        else if(code == 0x13){
    80001c58:	fd843703          	ld	a4,-40(s0)
    80001c5c:	01300793          	li	a5,19
    80001c60:	14f70463          	beq	a4,a5,80001da8 <_ZN5Riscv10handleTrapEv+0x1dc>
            //dispatch
            TCB::dispatch();
        }
        else if(code == 0x14){
    80001c64:	fd843703          	ld	a4,-40(s0)
    80001c68:	01400793          	li	a5,20
    80001c6c:	14f70463          	beq	a4,a5,80001db4 <_ZN5Riscv10handleTrapEv+0x1e8>
            uint64 handle;
            handle = (uint64)reg1;
            TCB* h = (TCB*)handle;
            TCB::join(h);
        }
        else if(code == 0x21){
    80001c70:	fd843703          	ld	a4,-40(s0)
    80001c74:	02100793          	li	a5,33
    80001c78:	14f70663          	beq	a4,a5,80001dc4 <_ZN5Riscv10handleTrapEv+0x1f8>
            }

            __asm__ volatile("mv a0, %0"::"r"(rez));

        }
        else if(code == 0x22){
    80001c7c:	fd843703          	ld	a4,-40(s0)
    80001c80:	02200793          	li	a5,34
    80001c84:	16f70263          	beq	a4,a5,80001de8 <_ZN5Riscv10handleTrapEv+0x21c>
            uint64 rez;
            rez = MySem::semClose(h);
            __asm__ volatile("mv a0, %0"::"r"(rez));

        }
        else if(code == 0x23){
    80001c88:	fd843703          	ld	a4,-40(s0)
    80001c8c:	02300793          	li	a5,35
    80001c90:	16f70663          	beq	a4,a5,80001dfc <_ZN5Riscv10handleTrapEv+0x230>

            uint64 rez;
            rez = MySem::semWait(id);
            __asm__ volatile("mv a0, %0"::"r"(rez));
        }
        else if(code == 0x24){
    80001c94:	fd843703          	ld	a4,-40(s0)
    80001c98:	02400793          	li	a5,36
    80001c9c:	16f70a63          	beq	a4,a5,80001e10 <_ZN5Riscv10handleTrapEv+0x244>
            uint64 rez;
            rez = MySem::semSignal(id);
            __asm__ volatile("mv a0, %0"::"r"(rez));

        }
        else if(code ==0x25){
    80001ca0:	fd843703          	ld	a4,-40(s0)
    80001ca4:	02500793          	li	a5,37
    80001ca8:	16f70e63          	beq	a4,a5,80001e24 <_ZN5Riscv10handleTrapEv+0x258>
            __asm__ volatile("csrw sepc,%0"::"r"(mysepc+4));
            __asm__ volatile("csrc sip,%0"::"r"(1<<1));
            return;

        }
        else if(code == 0x41){
    80001cac:	fd843703          	ld	a4,-40(s0)
    80001cb0:	04100793          	li	a5,65
    80001cb4:	18f70c63          	beq	a4,a5,80001e4c <_ZN5Riscv10handleTrapEv+0x280>
            //getc
            char c =  __getc();

            __asm__ volatile("mv a0, %0"::"r"(c));
        }
        else if(code == 0x42){
    80001cb8:	fd843703          	ld	a4,-40(s0)
    80001cbc:	04200793          	li	a5,66
    80001cc0:	04f71c63          	bne	a4,a5,80001d18 <_ZN5Riscv10handleTrapEv+0x14c>
            //putc
            char c = (char)reg1;

            __putc(c);
    80001cc4:	0ff4f513          	andi	a0,s1,255
    80001cc8:	00006097          	auipc	ra,0x6
    80001ccc:	0a4080e7          	jalr	164(ra) # 80007d6c <__putc>
    80001cd0:	0480006f          	j	80001d18 <_ZN5Riscv10handleTrapEv+0x14c>

    }


    else{
        printString("greska: ");
    80001cd4:	00006517          	auipc	a0,0x6
    80001cd8:	34c50513          	addi	a0,a0,844 # 80008020 <CONSOLE_STATUS+0x10>
    80001cdc:	00003097          	auipc	ra,0x3
    80001ce0:	d84080e7          	jalr	-636(ra) # 80004a60 <_Z11printStringPKc>
        printInt(cause);
    80001ce4:	fc843503          	ld	a0,-56(s0)
    80001ce8:	00000613          	li	a2,0
    80001cec:	00a00593          	li	a1,10
    80001cf0:	0005051b          	sext.w	a0,a0
    80001cf4:	00003097          	auipc	ra,0x3
    80001cf8:	f1c080e7          	jalr	-228(ra) # 80004c10 <_Z8printIntiii>
    80001cfc:	0380006f          	j	80001d34 <_ZN5Riscv10handleTrapEv+0x168>
            ptr = MemoryAllocator::getInstance()._mem_alloc(arg);
    80001d00:	00000097          	auipc	ra,0x0
    80001d04:	488080e7          	jalr	1160(ra) # 80002188 <_ZN15MemoryAllocator11getInstanceEv>
    80001d08:	00048593          	mv	a1,s1
    80001d0c:	00000097          	auipc	ra,0x0
    80001d10:	36c080e7          	jalr	876(ra) # 80002078 <_ZN15MemoryAllocator10_mem_allocEm>
            __asm__ volatile("mv a0, %0"::"r"(ptr));
    80001d14:	00050513          	mv	a0,a0
        __asm__ volatile("csrw sstatus,%[status]"::[status]"r"(status));
    80001d18:	fc043783          	ld	a5,-64(s0)
    80001d1c:	10079073          	csrw	sstatus,a5
        __asm__ volatile("csrw sepc, %0"::"r"(mysepc+4));
    80001d20:	fd043783          	ld	a5,-48(s0)
    80001d24:	00478793          	addi	a5,a5,4
    80001d28:	14179073          	csrw	sepc,a5
        __asm__ volatile("csrc sip,%0"::"r"(1<<1));
    80001d2c:	00200793          	li	a5,2
    80001d30:	1447b073          	csrc	sip,a5
    }


}
    80001d34:	03813083          	ld	ra,56(sp)
    80001d38:	03013403          	ld	s0,48(sp)
    80001d3c:	02813483          	ld	s1,40(sp)
    80001d40:	04010113          	addi	sp,sp,64
    80001d44:	00008067          	ret
            rez = MemoryAllocator::getInstance()._mem_free((void*)arg);
    80001d48:	00000097          	auipc	ra,0x0
    80001d4c:	440080e7          	jalr	1088(ra) # 80002188 <_ZN15MemoryAllocator11getInstanceEv>
    80001d50:	00048593          	mv	a1,s1
    80001d54:	00000097          	auipc	ra,0x0
    80001d58:	4a0080e7          	jalr	1184(ra) # 800021f4 <_ZN15MemoryAllocator9_mem_freeEPv>
            __asm__ volatile("mv a0, %0"::"r"(rez));
    80001d5c:	00050513          	mv	a0,a0
    80001d60:	fb9ff06f          	j	80001d18 <_ZN5Riscv10handleTrapEv+0x14c>
            rez = TCB::createThread(handle1, sr1, arg1, st);
    80001d64:	00048513          	mv	a0,s1
    80001d68:	00000097          	auipc	ra,0x0
    80001d6c:	180080e7          	jalr	384(ra) # 80001ee8 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm>
            if(rez == nullptr){
    80001d70:	00050863          	beqz	a0,80001d80 <_ZN5Riscv10handleTrapEv+0x1b4>
            uint64 r = 0;
    80001d74:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(r));
    80001d78:	00078513          	mv	a0,a5
    80001d7c:	f9dff06f          	j	80001d18 <_ZN5Riscv10handleTrapEv+0x14c>
                r = -1;
    80001d80:	fff00793          	li	a5,-1
    80001d84:	ff5ff06f          	j	80001d78 <_ZN5Riscv10handleTrapEv+0x1ac>
            TCB::running->finished = true;
    80001d88:	00008797          	auipc	a5,0x8
    80001d8c:	6387b783          	ld	a5,1592(a5) # 8000a3c0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001d90:	0007b783          	ld	a5,0(a5)
    80001d94:	00100713          	li	a4,1
    80001d98:	02e78023          	sb	a4,32(a5)
            TCB::dispatch();
    80001d9c:	00000097          	auipc	ra,0x0
    80001da0:	22c080e7          	jalr	556(ra) # 80001fc8 <_ZN3TCB8dispatchEv>
    80001da4:	f75ff06f          	j	80001d18 <_ZN5Riscv10handleTrapEv+0x14c>
            TCB::dispatch();
    80001da8:	00000097          	auipc	ra,0x0
    80001dac:	220080e7          	jalr	544(ra) # 80001fc8 <_ZN3TCB8dispatchEv>
    80001db0:	f69ff06f          	j	80001d18 <_ZN5Riscv10handleTrapEv+0x14c>
            TCB::join(h);
    80001db4:	00048513          	mv	a0,s1
    80001db8:	00000097          	auipc	ra,0x0
    80001dbc:	280080e7          	jalr	640(ra) # 80002038 <_ZN3TCB4joinEPS_>
    80001dc0:	f59ff06f          	j	80001d18 <_ZN5Riscv10handleTrapEv+0x14c>
            MySem::semOpen(h, i);
    80001dc4:	00048513          	mv	a0,s1
    80001dc8:	00000097          	auipc	ra,0x0
    80001dcc:	52c080e7          	jalr	1324(ra) # 800022f4 <_ZN5MySem7semOpenEPPS_m>
            if(h == nullptr){
    80001dd0:	00048863          	beqz	s1,80001de0 <_ZN5Riscv10handleTrapEv+0x214>
            uint64 rez = 0;
    80001dd4:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(rez));
    80001dd8:	00078513          	mv	a0,a5
    80001ddc:	f3dff06f          	j	80001d18 <_ZN5Riscv10handleTrapEv+0x14c>
                rez = -1;
    80001de0:	fff00793          	li	a5,-1
    80001de4:	ff5ff06f          	j	80001dd8 <_ZN5Riscv10handleTrapEv+0x20c>
            rez = MySem::semClose(h);
    80001de8:	00048513          	mv	a0,s1
    80001dec:	00000097          	auipc	ra,0x0
    80001df0:	620080e7          	jalr	1568(ra) # 8000240c <_ZN5MySem8semCloseEPS_>
            __asm__ volatile("mv a0, %0"::"r"(rez));
    80001df4:	00050513          	mv	a0,a0
    80001df8:	f21ff06f          	j	80001d18 <_ZN5Riscv10handleTrapEv+0x14c>
            rez = MySem::semWait(id);
    80001dfc:	00048513          	mv	a0,s1
    80001e00:	00000097          	auipc	ra,0x0
    80001e04:	768080e7          	jalr	1896(ra) # 80002568 <_ZN5MySem7semWaitEPS_>
            __asm__ volatile("mv a0, %0"::"r"(rez));
    80001e08:	00050513          	mv	a0,a0
    80001e0c:	f0dff06f          	j	80001d18 <_ZN5Riscv10handleTrapEv+0x14c>
            rez = MySem::semSignal(id);
    80001e10:	00048513          	mv	a0,s1
    80001e14:	00000097          	auipc	ra,0x0
    80001e18:	674080e7          	jalr	1652(ra) # 80002488 <_ZN5MySem9semSignalEPS_>
            __asm__ volatile("mv a0, %0"::"r"(rez));
    80001e1c:	00050513          	mv	a0,a0
    80001e20:	ef9ff06f          	j	80001d18 <_ZN5Riscv10handleTrapEv+0x14c>
            __asm__ volatile("csrw sstatus,%0"::"r"(status));
    80001e24:	fc043783          	ld	a5,-64(s0)
    80001e28:	10079073          	csrw	sstatus,a5
            __asm__ volatile("csrc sstatus, %0"::"r"(1<<8));
    80001e2c:	10000793          	li	a5,256
    80001e30:	1007b073          	csrc	sstatus,a5
            __asm__ volatile("csrw sepc,%0"::"r"(mysepc+4));
    80001e34:	fd043783          	ld	a5,-48(s0)
    80001e38:	00478793          	addi	a5,a5,4
    80001e3c:	14179073          	csrw	sepc,a5
            __asm__ volatile("csrc sip,%0"::"r"(1<<1));
    80001e40:	00200793          	li	a5,2
    80001e44:	1447b073          	csrc	sip,a5
            return;
    80001e48:	eedff06f          	j	80001d34 <_ZN5Riscv10handleTrapEv+0x168>
            char c =  __getc();
    80001e4c:	00006097          	auipc	ra,0x6
    80001e50:	f5c080e7          	jalr	-164(ra) # 80007da8 <__getc>
            __asm__ volatile("mv a0, %0"::"r"(c));
    80001e54:	00050513          	mv	a0,a0
    80001e58:	ec1ff06f          	j	80001d18 <_ZN5Riscv10handleTrapEv+0x14c>

0000000080001e5c <_ZN5Riscv11handleTimerEv>:

void Riscv::handleTimer() {
    80001e5c:	ff010113          	addi	sp,sp,-16
    80001e60:	00813423          	sd	s0,8(sp)
    80001e64:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrc sip,%0"::"r"(1<<1));
    80001e68:	00200793          	li	a5,2
    80001e6c:	1447b073          	csrc	sip,a5
}
    80001e70:	00813403          	ld	s0,8(sp)
    80001e74:	01010113          	addi	sp,sp,16
    80001e78:	00008067          	ret

0000000080001e7c <_ZN5Riscv13handleConsoleEv>:

void Riscv::handleConsole() {
    80001e7c:	ff010113          	addi	sp,sp,-16
    80001e80:	00113423          	sd	ra,8(sp)
    80001e84:	00813023          	sd	s0,0(sp)
    80001e88:	01010413          	addi	s0,sp,16

    console_handler();
    80001e8c:	00006097          	auipc	ra,0x6
    80001e90:	f54080e7          	jalr	-172(ra) # 80007de0 <console_handler>

}
    80001e94:	00813083          	ld	ra,8(sp)
    80001e98:	00013403          	ld	s0,0(sp)
    80001e9c:	01010113          	addi	sp,sp,16
    80001ea0:	00008067          	ret

0000000080001ea4 <_ZN3TCB13threadWrapperEv>:
    __asm__ volatile("ecall");
}

TCB* TCB::running = nullptr;

void TCB::threadWrapper() {
    80001ea4:	ff010113          	addi	sp,sp,-16
    80001ea8:	00113423          	sd	ra,8(sp)
    80001eac:	00813023          	sd	s0,0(sp)
    80001eb0:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80001eb4:	00000097          	auipc	ra,0x0
    80001eb8:	cf8080e7          	jalr	-776(ra) # 80001bac <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001ebc:	00008797          	auipc	a5,0x8
    80001ec0:	5647b783          	ld	a5,1380(a5) # 8000a420 <_ZN3TCB7runningE>
    80001ec4:	0007b703          	ld	a4,0(a5)
    80001ec8:	0287b503          	ld	a0,40(a5)
    80001ecc:	000700e7          	jalr	a4
    thread_exit();
    80001ed0:	fffff097          	auipc	ra,0xfffff
    80001ed4:	580080e7          	jalr	1408(ra) # 80001450 <_Z11thread_exitv>
}
    80001ed8:	00813083          	ld	ra,8(sp)
    80001edc:	00013403          	ld	s0,0(sp)
    80001ee0:	01010113          	addi	sp,sp,16
    80001ee4:	00008067          	ret

0000000080001ee8 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm>:
TCB *TCB::createThread(TCB** handle, TCB::Body body, void* arg, uint64* stack_space) {
    80001ee8:	fc010113          	addi	sp,sp,-64
    80001eec:	02113c23          	sd	ra,56(sp)
    80001ef0:	02813823          	sd	s0,48(sp)
    80001ef4:	02913423          	sd	s1,40(sp)
    80001ef8:	03213023          	sd	s2,32(sp)
    80001efc:	01313c23          	sd	s3,24(sp)
    80001f00:	01413823          	sd	s4,16(sp)
    80001f04:	01513423          	sd	s5,8(sp)
    80001f08:	04010413          	addi	s0,sp,64
    80001f0c:	00050993          	mv	s3,a0
    80001f10:	00058a93          	mv	s5,a1
    80001f14:	00060a13          	mv	s4,a2
    80001f18:	00068913          	mv	s2,a3
    TCB* newT = (TCB*)MemoryAllocator::getInstance()._mem_alloc(sizeof(TCB) / MEM_BLOCK_SIZE + (sizeof(TCB) % MEM_BLOCK_SIZE > 0 ? 1 : 0));
    80001f1c:	00000097          	auipc	ra,0x0
    80001f20:	26c080e7          	jalr	620(ra) # 80002188 <_ZN15MemoryAllocator11getInstanceEv>
    80001f24:	00100593          	li	a1,1
    80001f28:	00000097          	auipc	ra,0x0
    80001f2c:	150080e7          	jalr	336(ra) # 80002078 <_ZN15MemoryAllocator10_mem_allocEm>
    80001f30:	00050493          	mv	s1,a0
    newT->body = body;
    80001f34:	01553023          	sd	s5,0(a0)
    newT->finished = false;
    80001f38:	02050023          	sb	zero,32(a0)
    newT->blocked = false;
    80001f3c:	02050123          	sb	zero,34(a0)
    newT->closed = false;
    80001f40:	020500a3          	sb	zero,33(a0)
    newT->stack = stack_space;
    80001f44:	01253423          	sd	s2,8(a0)
    newT->context = {(uint64)&threadWrapper, stack_space != nullptr ? (uint64)&stack_space[DEFAULT_STACK_SIZE] : 0};
    80001f48:	04090c63          	beqz	s2,80001fa0 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0xb8>
    80001f4c:	000086b7          	lui	a3,0x8
    80001f50:	00d90933          	add	s2,s2,a3
    80001f54:	00000797          	auipc	a5,0x0
    80001f58:	f5078793          	addi	a5,a5,-176 # 80001ea4 <_ZN3TCB13threadWrapperEv>
    80001f5c:	00f4b823          	sd	a5,16(s1)
    80001f60:	0124bc23          	sd	s2,24(s1)
    newT->arg = arg;
    80001f64:	0344b423          	sd	s4,40(s1)
    *handle = newT;
    80001f68:	0099b023          	sd	s1,0(s3)
    Scheduler::put(*handle);
    80001f6c:	00048513          	mv	a0,s1
    80001f70:	fffff097          	auipc	ra,0xfffff
    80001f74:	700080e7          	jalr	1792(ra) # 80001670 <_ZN9Scheduler3putEP3TCB>
}
    80001f78:	00048513          	mv	a0,s1
    80001f7c:	03813083          	ld	ra,56(sp)
    80001f80:	03013403          	ld	s0,48(sp)
    80001f84:	02813483          	ld	s1,40(sp)
    80001f88:	02013903          	ld	s2,32(sp)
    80001f8c:	01813983          	ld	s3,24(sp)
    80001f90:	01013a03          	ld	s4,16(sp)
    80001f94:	00813a83          	ld	s5,8(sp)
    80001f98:	04010113          	addi	sp,sp,64
    80001f9c:	00008067          	ret
    newT->context = {(uint64)&threadWrapper, stack_space != nullptr ? (uint64)&stack_space[DEFAULT_STACK_SIZE] : 0};
    80001fa0:	00000913          	li	s2,0
    80001fa4:	fb1ff06f          	j	80001f54 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0x6c>

0000000080001fa8 <_ZN3TCB5yieldEv>:
void TCB::yield() {
    80001fa8:	ff010113          	addi	sp,sp,-16
    80001fac:	00813423          	sd	s0,8(sp)
    80001fb0:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001fb4:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001fb8:	00000073          	ecall
}
    80001fbc:	00813403          	ld	s0,8(sp)
    80001fc0:	01010113          	addi	sp,sp,16
    80001fc4:	00008067          	ret

0000000080001fc8 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    80001fc8:	fe010113          	addi	sp,sp,-32
    80001fcc:	00113c23          	sd	ra,24(sp)
    80001fd0:	00813823          	sd	s0,16(sp)
    80001fd4:	00913423          	sd	s1,8(sp)
    80001fd8:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001fdc:	00008497          	auipc	s1,0x8
    80001fe0:	4444b483          	ld	s1,1092(s1) # 8000a420 <_ZN3TCB7runningE>
    }
    friend class MySem;

    bool isFinished() const {
        return finished;
    80001fe4:	0204c783          	lbu	a5,32(s1)
    if(!old->isFinished() && !old->blocked){
    80001fe8:	00079663          	bnez	a5,80001ff4 <_ZN3TCB8dispatchEv+0x2c>
    80001fec:	0224c783          	lbu	a5,34(s1)
    80001ff0:	02078c63          	beqz	a5,80002028 <_ZN3TCB8dispatchEv+0x60>
        Scheduler::put(old);
    }
    //contextSwitch se radi u asm
    running = Scheduler::get();
    80001ff4:	fffff097          	auipc	ra,0xfffff
    80001ff8:	600080e7          	jalr	1536(ra) # 800015f4 <_ZN9Scheduler3getEv>
    80001ffc:	00008797          	auipc	a5,0x8
    80002000:	42a7b223          	sd	a0,1060(a5) # 8000a420 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80002004:	01050593          	addi	a1,a0,16
    80002008:	01048513          	addi	a0,s1,16
    8000200c:	fffff097          	auipc	ra,0xfffff
    80002010:	32c080e7          	jalr	812(ra) # 80001338 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002014:	01813083          	ld	ra,24(sp)
    80002018:	01013403          	ld	s0,16(sp)
    8000201c:	00813483          	ld	s1,8(sp)
    80002020:	02010113          	addi	sp,sp,32
    80002024:	00008067          	ret
        Scheduler::put(old);
    80002028:	00048513          	mv	a0,s1
    8000202c:	fffff097          	auipc	ra,0xfffff
    80002030:	644080e7          	jalr	1604(ra) # 80001670 <_ZN9Scheduler3putEP3TCB>
    80002034:	fc1ff06f          	j	80001ff4 <_ZN3TCB8dispatchEv+0x2c>

0000000080002038 <_ZN3TCB4joinEPS_>:

void TCB::join(TCB* handle){
    80002038:	fe010113          	addi	sp,sp,-32
    8000203c:	00113c23          	sd	ra,24(sp)
    80002040:	00813823          	sd	s0,16(sp)
    80002044:	00913423          	sd	s1,8(sp)
    80002048:	02010413          	addi	s0,sp,32
    8000204c:	00050493          	mv	s1,a0
    80002050:	0204c783          	lbu	a5,32(s1)
    while(!handle->isFinished()){
    80002054:	00079863          	bnez	a5,80002064 <_ZN3TCB4joinEPS_+0x2c>
        TCB::dispatch();
    80002058:	00000097          	auipc	ra,0x0
    8000205c:	f70080e7          	jalr	-144(ra) # 80001fc8 <_ZN3TCB8dispatchEv>
    while(!handle->isFinished()){
    80002060:	ff1ff06f          	j	80002050 <_ZN3TCB4joinEPS_+0x18>
    }
}
    80002064:	01813083          	ld	ra,24(sp)
    80002068:	01013403          	ld	s0,16(sp)
    8000206c:	00813483          	ld	s1,8(sp)
    80002070:	02010113          	addi	sp,sp,32
    80002074:	00008067          	ret

0000000080002078 <_ZN15MemoryAllocator10_mem_allocEm>:

#include "../h/MemoryAllocator.hpp"


//size je u blokovima
void *MemoryAllocator::_mem_alloc(size_t size) {
    80002078:	ff010113          	addi	sp,sp,-16
    8000207c:	00813423          	sd	s0,8(sp)
    80002080:	01010413          	addi	s0,sp,16
    80002084:	00050713          	mv	a4,a0
    static bool first = true;
   if(first){
    80002088:	00008797          	auipc	a5,0x8
    8000208c:	1687c783          	lbu	a5,360(a5) # 8000a1f0 <_ZZN15MemoryAllocator10_mem_allocEmE5first>
    80002090:	04078263          	beqz	a5,800020d4 <_ZN15MemoryAllocator10_mem_allocEm+0x5c>
       FreeMem* block = (FreeMem*)((uint64*)HEAP_START_ADDR);
    80002094:	00008797          	auipc	a5,0x8
    80002098:	3147b783          	ld	a5,788(a5) # 8000a3a8 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000209c:	0007b683          	ld	a3,0(a5)
       block->size = ((uint64)((uint64*)HEAP_END_ADDR - (uint64*)HEAP_START_ADDR)-sizeof(MemoryAllocator))/MEM_BLOCK_SIZE;
    800020a0:	00008797          	auipc	a5,0x8
    800020a4:	3287b783          	ld	a5,808(a5) # 8000a3c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800020a8:	0007b783          	ld	a5,0(a5)
    800020ac:	40d787b3          	sub	a5,a5,a3
    800020b0:	4037d793          	srai	a5,a5,0x3
    800020b4:	ff878793          	addi	a5,a5,-8
    800020b8:	0067d793          	srli	a5,a5,0x6
    800020bc:	00f6b823          	sd	a5,16(a3) # 8010 <_entry-0x7fff7ff0>
       block->next = nullptr;
    800020c0:	0006b023          	sd	zero,0(a3)
       block->prev = nullptr;
    800020c4:	0006b423          	sd	zero,8(a3)
       head = block;
    800020c8:	00d53023          	sd	a3,0(a0)
       first = false;
    800020cc:	00008797          	auipc	a5,0x8
    800020d0:	12078223          	sb	zero,292(a5) # 8000a1f0 <_ZZN15MemoryAllocator10_mem_allocEmE5first>
   }
    FreeMem* pom = head;
    800020d4:	00073503          	ld	a0,0(a4)
   while(pom!= nullptr && pom->size< size){
    800020d8:	00050a63          	beqz	a0,800020ec <_ZN15MemoryAllocator10_mem_allocEm+0x74>
    800020dc:	01053783          	ld	a5,16(a0)
    800020e0:	00b7f663          	bgeu	a5,a1,800020ec <_ZN15MemoryAllocator10_mem_allocEm+0x74>
       pom = pom->next;
    800020e4:	00053503          	ld	a0,0(a0)
   while(pom!= nullptr && pom->size< size){
    800020e8:	ff1ff06f          	j	800020d8 <_ZN15MemoryAllocator10_mem_allocEm+0x60>
   }
   if(pom == nullptr){
    800020ec:	04050c63          	beqz	a0,80002144 <_ZN15MemoryAllocator10_mem_allocEm+0xcc>
       return nullptr;
   }
   if(pom->size - size == 0) {
    800020f0:	01053783          	ld	a5,16(a0)
    800020f4:	04b78e63          	beq	a5,a1,80002150 <_ZN15MemoryAllocator10_mem_allocEm+0xd8>
       if (pom->next) {
           pom->next->prev = pom->prev;
       }
   }

   if(pom->size - size > 0){
    800020f8:	01053783          	ld	a5,16(a0)
    800020fc:	04b78263          	beq	a5,a1,80002140 <_ZN15MemoryAllocator10_mem_allocEm+0xc8>
       FreeMem* newBlk = (FreeMem*)((uint64*)pom + size*MEM_BLOCK_SIZE);
    80002100:	00959793          	slli	a5,a1,0x9
    80002104:	00f507b3          	add	a5,a0,a5
       if(pom->prev){
    80002108:	00853683          	ld	a3,8(a0)
    8000210c:	06068a63          	beqz	a3,80002180 <_ZN15MemoryAllocator10_mem_allocEm+0x108>
           pom->prev->next = newBlk;
    80002110:	00f6b023          	sd	a5,0(a3)
       }else{
           head = newBlk;
       }
       if(pom->next){
    80002114:	00053703          	ld	a4,0(a0)
    80002118:	00070463          	beqz	a4,80002120 <_ZN15MemoryAllocator10_mem_allocEm+0xa8>
           pom->next->prev = newBlk;
    8000211c:	00f73423          	sd	a5,8(a4)
       }
       newBlk->next = pom->next;
    80002120:	00053703          	ld	a4,0(a0)
    80002124:	00e7b023          	sd	a4,0(a5)
       newBlk->prev = pom->prev;
    80002128:	00853703          	ld	a4,8(a0)
    8000212c:	00e7b423          	sd	a4,8(a5)
       newBlk->size = pom->size - size;
    80002130:	01053703          	ld	a4,16(a0)
    80002134:	40b70733          	sub	a4,a4,a1
    80002138:	00e7b823          	sd	a4,16(a5)
       pom->size = size;
    8000213c:	00b53823          	sd	a1,16(a0)
   }

   return (uint64*)pom + sizeof(FreeMem);
    80002140:	0c050513          	addi	a0,a0,192
}
    80002144:	00813403          	ld	s0,8(sp)
    80002148:	01010113          	addi	sp,sp,16
    8000214c:	00008067          	ret
       if (pom->prev) {
    80002150:	00853783          	ld	a5,8(a0)
    80002154:	02078063          	beqz	a5,80002174 <_ZN15MemoryAllocator10_mem_allocEm+0xfc>
           pom->prev->next = pom->next;
    80002158:	00053683          	ld	a3,0(a0)
    8000215c:	00d7b023          	sd	a3,0(a5)
       if (pom->next) {
    80002160:	00053783          	ld	a5,0(a0)
    80002164:	f8078ae3          	beqz	a5,800020f8 <_ZN15MemoryAllocator10_mem_allocEm+0x80>
           pom->next->prev = pom->prev;
    80002168:	00853683          	ld	a3,8(a0)
    8000216c:	00d7b423          	sd	a3,8(a5)
    80002170:	f89ff06f          	j	800020f8 <_ZN15MemoryAllocator10_mem_allocEm+0x80>
           head = pom->next;
    80002174:	00053783          	ld	a5,0(a0)
    80002178:	00f73023          	sd	a5,0(a4)
    8000217c:	fe5ff06f          	j	80002160 <_ZN15MemoryAllocator10_mem_allocEm+0xe8>
           head = newBlk;
    80002180:	00f73023          	sd	a5,0(a4)
    80002184:	f91ff06f          	j	80002114 <_ZN15MemoryAllocator10_mem_allocEm+0x9c>

0000000080002188 <_ZN15MemoryAllocator11getInstanceEv>:

MemoryAllocator& MemoryAllocator::getInstance() {
    80002188:	ff010113          	addi	sp,sp,-16
    8000218c:	00813423          	sd	s0,8(sp)
    80002190:	01010413          	addi	s0,sp,16
    static MemoryAllocator singleton;
    return singleton;
}
    80002194:	00008517          	auipc	a0,0x8
    80002198:	29450513          	addi	a0,a0,660 # 8000a428 <_ZZN15MemoryAllocator11getInstanceEvE9singleton>
    8000219c:	00813403          	ld	s0,8(sp)
    800021a0:	01010113          	addi	sp,sp,16
    800021a4:	00008067          	ret

00000000800021a8 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>:
    if(cur != nullptr) {
        tryToJoin(cur);
    }
    return 0;
}
void MemoryAllocator::tryToJoin(FreeMem *cur) {
    800021a8:	ff010113          	addi	sp,sp,-16
    800021ac:	00813423          	sd	s0,8(sp)
    800021b0:	01010413          	addi	s0,sp,16
    if(cur->next == nullptr){
    800021b4:	0005b783          	ld	a5,0(a1)
    800021b8:	00078a63          	beqz	a5,800021cc <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x24>
        return;
    }
    if(((char*)cur + cur->size*MEM_BLOCK_SIZE) == (char*)cur->next){
    800021bc:	0105b683          	ld	a3,16(a1)
    800021c0:	00669713          	slli	a4,a3,0x6
    800021c4:	00e58733          	add	a4,a1,a4
    800021c8:	00e78863          	beq	a5,a4,800021d8 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x30>
        cur->size = cur->size + cur->next->size;
        cur->next = cur->next->next;
        cur->next->prev = cur;
    }
}
    800021cc:	00813403          	ld	s0,8(sp)
    800021d0:	01010113          	addi	sp,sp,16
    800021d4:	00008067          	ret
        cur->size = cur->size + cur->next->size;
    800021d8:	0107b703          	ld	a4,16(a5)
    800021dc:	00e686b3          	add	a3,a3,a4
    800021e0:	00d5b823          	sd	a3,16(a1)
        cur->next = cur->next->next;
    800021e4:	0007b783          	ld	a5,0(a5)
    800021e8:	00f5b023          	sd	a5,0(a1)
        cur->next->prev = cur;
    800021ec:	00b7b423          	sd	a1,8(a5)
    800021f0:	fddff06f          	j	800021cc <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x24>

00000000800021f4 <_ZN15MemoryAllocator9_mem_freeEPv>:
    if((uint64*)ptr > (uint64*)HEAP_END_ADDR || (uint64*)ptr < (uint64*)HEAP_START_ADDR){
    800021f4:	00008797          	auipc	a5,0x8
    800021f8:	1d47b783          	ld	a5,468(a5) # 8000a3c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800021fc:	0007b783          	ld	a5,0(a5)
    80002200:	0cb7ee63          	bltu	a5,a1,800022dc <_ZN15MemoryAllocator9_mem_freeEPv+0xe8>
int MemoryAllocator::_mem_free(void *ptr) {
    80002204:	fe010113          	addi	sp,sp,-32
    80002208:	00113c23          	sd	ra,24(sp)
    8000220c:	00813823          	sd	s0,16(sp)
    80002210:	00913423          	sd	s1,8(sp)
    80002214:	01213023          	sd	s2,0(sp)
    80002218:	02010413          	addi	s0,sp,32
    8000221c:	00050913          	mv	s2,a0
    80002220:	00058713          	mv	a4,a1
    if((uint64*)ptr > (uint64*)HEAP_END_ADDR || (uint64*)ptr < (uint64*)HEAP_START_ADDR){
    80002224:	00008797          	auipc	a5,0x8
    80002228:	1847b783          	ld	a5,388(a5) # 8000a3a8 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000222c:	0007b783          	ld	a5,0(a5)
    80002230:	0af5ea63          	bltu	a1,a5,800022e4 <_ZN15MemoryAllocator9_mem_freeEPv+0xf0>
    if(!head || ptr < (char*)head){
    80002234:	00053783          	ld	a5,0(a0)
    80002238:	00078e63          	beqz	a5,80002254 <_ZN15MemoryAllocator9_mem_freeEPv+0x60>
    8000223c:	02f5e063          	bltu	a1,a5,8000225c <_ZN15MemoryAllocator9_mem_freeEPv+0x68>
        for(cur = head; cur->next != 0 && (char*)ptr > (char*)(cur->next); cur=cur->next);
    80002240:	00078493          	mv	s1,a5
    80002244:	0007b783          	ld	a5,0(a5)
    80002248:	00078c63          	beqz	a5,80002260 <_ZN15MemoryAllocator9_mem_freeEPv+0x6c>
    8000224c:	fee7eae3          	bltu	a5,a4,80002240 <_ZN15MemoryAllocator9_mem_freeEPv+0x4c>
    80002250:	0100006f          	j	80002260 <_ZN15MemoryAllocator9_mem_freeEPv+0x6c>
        cur = 0;
    80002254:	00078493          	mv	s1,a5
    80002258:	0080006f          	j	80002260 <_ZN15MemoryAllocator9_mem_freeEPv+0x6c>
    8000225c:	00000493          	li	s1,0
    FreeMem* newSeg = (FreeMem*)((uint64*)ptr - sizeof(FreeMem));
    80002260:	f4070593          	addi	a1,a4,-192
    newSeg->prev = cur;
    80002264:	f4973423          	sd	s1,-184(a4)
    if(cur) newSeg->next = cur->next;
    80002268:	06048063          	beqz	s1,800022c8 <_ZN15MemoryAllocator9_mem_freeEPv+0xd4>
    8000226c:	0004b783          	ld	a5,0(s1)
    80002270:	f4f73023          	sd	a5,-192(a4)
    if(newSeg->next) newSeg->next->prev = newSeg;
    80002274:	f4073783          	ld	a5,-192(a4)
    80002278:	00078463          	beqz	a5,80002280 <_ZN15MemoryAllocator9_mem_freeEPv+0x8c>
    8000227c:	00b7b423          	sd	a1,8(a5)
    if(cur) cur->next = newSeg;
    80002280:	04048a63          	beqz	s1,800022d4 <_ZN15MemoryAllocator9_mem_freeEPv+0xe0>
    80002284:	00b4b023          	sd	a1,0(s1)
    if(newSeg != nullptr) {
    80002288:	00058863          	beqz	a1,80002298 <_ZN15MemoryAllocator9_mem_freeEPv+0xa4>
        tryToJoin(newSeg);
    8000228c:	00090513          	mv	a0,s2
    80002290:	00000097          	auipc	ra,0x0
    80002294:	f18080e7          	jalr	-232(ra) # 800021a8 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>
    if(cur != nullptr) {
    80002298:	04048a63          	beqz	s1,800022ec <_ZN15MemoryAllocator9_mem_freeEPv+0xf8>
        tryToJoin(cur);
    8000229c:	00048593          	mv	a1,s1
    800022a0:	00090513          	mv	a0,s2
    800022a4:	00000097          	auipc	ra,0x0
    800022a8:	f04080e7          	jalr	-252(ra) # 800021a8 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>
    return 0;
    800022ac:	00000513          	li	a0,0
}
    800022b0:	01813083          	ld	ra,24(sp)
    800022b4:	01013403          	ld	s0,16(sp)
    800022b8:	00813483          	ld	s1,8(sp)
    800022bc:	00013903          	ld	s2,0(sp)
    800022c0:	02010113          	addi	sp,sp,32
    800022c4:	00008067          	ret
    else newSeg->next = head;
    800022c8:	00093783          	ld	a5,0(s2)
    800022cc:	f4f73023          	sd	a5,-192(a4)
    800022d0:	fa5ff06f          	j	80002274 <_ZN15MemoryAllocator9_mem_freeEPv+0x80>
    else head = newSeg;
    800022d4:	00b93023          	sd	a1,0(s2)
    800022d8:	fb1ff06f          	j	80002288 <_ZN15MemoryAllocator9_mem_freeEPv+0x94>
        return -1;
    800022dc:	fff00513          	li	a0,-1
}
    800022e0:	00008067          	ret
        return -1;
    800022e4:	fff00513          	li	a0,-1
    800022e8:	fc9ff06f          	j	800022b0 <_ZN15MemoryAllocator9_mem_freeEPv+0xbc>
    return 0;
    800022ec:	00000513          	li	a0,0
    800022f0:	fc1ff06f          	j	800022b0 <_ZN15MemoryAllocator9_mem_freeEPv+0xbc>

00000000800022f4 <_ZN5MySem7semOpenEPPS_m>:
#include "../h/MySem.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Scheduler.hpp"
#include "../h/syscall_c.h"

void MySem::semOpen(MySem **handle, uint64 k) {
    800022f4:	fe010113          	addi	sp,sp,-32
    800022f8:	00113c23          	sd	ra,24(sp)
    800022fc:	00813823          	sd	s0,16(sp)
    80002300:	00913423          	sd	s1,8(sp)
    80002304:	01213023          	sd	s2,0(sp)
    80002308:	02010413          	addi	s0,sp,32
    8000230c:	00050493          	mv	s1,a0
    80002310:	00058913          	mv	s2,a1

    MySem* sem = (MySem*)MemoryAllocator::getInstance()._mem_alloc(sizeof(MySem)/MEM_BLOCK_SIZE + (sizeof(MySem)%MEM_BLOCK_SIZE > 0 ? 1:0 ));
    80002314:	00000097          	auipc	ra,0x0
    80002318:	e74080e7          	jalr	-396(ra) # 80002188 <_ZN15MemoryAllocator11getInstanceEv>
    8000231c:	00100593          	li	a1,1
    80002320:	00000097          	auipc	ra,0x0
    80002324:	d58080e7          	jalr	-680(ra) # 80002078 <_ZN15MemoryAllocator10_mem_allocEm>
    sem->n = k;
    80002328:	01252823          	sw	s2,16(a0)
    sem->tail = nullptr;
    8000232c:	00053423          	sd	zero,8(a0)
    sem->head = nullptr;
    80002330:	00053023          	sd	zero,0(a0)
    *handle = sem;
    80002334:	00a4b023          	sd	a0,0(s1)
}
    80002338:	01813083          	ld	ra,24(sp)
    8000233c:	01013403          	ld	s0,16(sp)
    80002340:	00813483          	ld	s1,8(sp)
    80002344:	00013903          	ld	s2,0(sp)
    80002348:	02010113          	addi	sp,sp,32
    8000234c:	00008067          	ret

0000000080002350 <_ZN5MySem9semCreateEm>:

MySem* MySem::semCreate(uint64 k) {
    80002350:	fe010113          	addi	sp,sp,-32
    80002354:	00113c23          	sd	ra,24(sp)
    80002358:	00813823          	sd	s0,16(sp)
    8000235c:	00913423          	sd	s1,8(sp)
    80002360:	02010413          	addi	s0,sp,32
    80002364:	00050493          	mv	s1,a0

    MySem* sem = (MySem*)MemoryAllocator::getInstance()._mem_alloc(sizeof(MySem)/MEM_BLOCK_SIZE + (sizeof(MySem)%MEM_BLOCK_SIZE > 0 ? 1:0 ));
    80002368:	00000097          	auipc	ra,0x0
    8000236c:	e20080e7          	jalr	-480(ra) # 80002188 <_ZN15MemoryAllocator11getInstanceEv>
    80002370:	00100593          	li	a1,1
    80002374:	00000097          	auipc	ra,0x0
    80002378:	d04080e7          	jalr	-764(ra) # 80002078 <_ZN15MemoryAllocator10_mem_allocEm>
    sem->n = k;
    8000237c:	00952823          	sw	s1,16(a0)
    sem->tail = nullptr;
    80002380:	00053423          	sd	zero,8(a0)
    sem->head = nullptr;
    80002384:	00053023          	sd	zero,0(a0)
    return sem;
}
    80002388:	01813083          	ld	ra,24(sp)
    8000238c:	01013403          	ld	s0,16(sp)
    80002390:	00813483          	ld	s1,8(sp)
    80002394:	02010113          	addi	sp,sp,32
    80002398:	00008067          	ret

000000008000239c <_ZN5MySem9getThreadEv>:

    return 0;

}

TCB *MySem::getThread() {
    8000239c:	fe010113          	addi	sp,sp,-32
    800023a0:	00113c23          	sd	ra,24(sp)
    800023a4:	00813823          	sd	s0,16(sp)
    800023a8:	00913423          	sd	s1,8(sp)
    800023ac:	01213023          	sd	s2,0(sp)
    800023b0:	02010413          	addi	s0,sp,32

    Blocked* getB = head;
    800023b4:	00053483          	ld	s1,0(a0)
    if(getB == nullptr)return nullptr;
    800023b8:	04048663          	beqz	s1,80002404 <_ZN5MySem9getThreadEv+0x68>
    TCB* t = getB->blocked;
    800023bc:	0004b903          	ld	s2,0(s1)
    head = head->next;
    800023c0:	0084b783          	ld	a5,8(s1)
    800023c4:	00f53023          	sd	a5,0(a0)
    if(head == nullptr){
    800023c8:	02078a63          	beqz	a5,800023fc <_ZN5MySem9getThreadEv+0x60>
        tail = nullptr;
    }
    MemoryAllocator::getInstance()._mem_free(getB);
    800023cc:	00000097          	auipc	ra,0x0
    800023d0:	dbc080e7          	jalr	-580(ra) # 80002188 <_ZN15MemoryAllocator11getInstanceEv>
    800023d4:	00048593          	mv	a1,s1
    800023d8:	00000097          	auipc	ra,0x0
    800023dc:	e1c080e7          	jalr	-484(ra) # 800021f4 <_ZN15MemoryAllocator9_mem_freeEPv>
    return t;
}
    800023e0:	00090513          	mv	a0,s2
    800023e4:	01813083          	ld	ra,24(sp)
    800023e8:	01013403          	ld	s0,16(sp)
    800023ec:	00813483          	ld	s1,8(sp)
    800023f0:	00013903          	ld	s2,0(sp)
    800023f4:	02010113          	addi	sp,sp,32
    800023f8:	00008067          	ret
        tail = nullptr;
    800023fc:	00053423          	sd	zero,8(a0)
    80002400:	fcdff06f          	j	800023cc <_ZN5MySem9getThreadEv+0x30>
    if(getB == nullptr)return nullptr;
    80002404:	00048913          	mv	s2,s1
    80002408:	fd9ff06f          	j	800023e0 <_ZN5MySem9getThreadEv+0x44>

000000008000240c <_ZN5MySem8semCloseEPS_>:
    if(handle == nullptr){
    8000240c:	06050a63          	beqz	a0,80002480 <_ZN5MySem8semCloseEPS_+0x74>
int MySem::semClose(MySem* handle) {
    80002410:	fe010113          	addi	sp,sp,-32
    80002414:	00113c23          	sd	ra,24(sp)
    80002418:	00813823          	sd	s0,16(sp)
    8000241c:	00913423          	sd	s1,8(sp)
    80002420:	02010413          	addi	s0,sp,32
    80002424:	00050493          	mv	s1,a0
    TCB* pom = handle->getThread();
    80002428:	00000097          	auipc	ra,0x0
    8000242c:	f74080e7          	jalr	-140(ra) # 8000239c <_ZN5MySem9getThreadEv>
    while(pom!= nullptr){
    80002430:	02050463          	beqz	a0,80002458 <_ZN5MySem8semCloseEPS_+0x4c>
        pom->closed = true;
    80002434:	00100793          	li	a5,1
    80002438:	02f500a3          	sb	a5,33(a0)
        pom->blocked = false;
    8000243c:	02050123          	sb	zero,34(a0)
        Scheduler::put(pom);
    80002440:	fffff097          	auipc	ra,0xfffff
    80002444:	230080e7          	jalr	560(ra) # 80001670 <_ZN9Scheduler3putEP3TCB>
        pom = handle->getThread();
    80002448:	00048513          	mv	a0,s1
    8000244c:	00000097          	auipc	ra,0x0
    80002450:	f50080e7          	jalr	-176(ra) # 8000239c <_ZN5MySem9getThreadEv>
    while(pom!= nullptr){
    80002454:	fddff06f          	j	80002430 <_ZN5MySem8semCloseEPS_+0x24>
    int rez = MemoryAllocator::getInstance()._mem_free(handle);
    80002458:	00000097          	auipc	ra,0x0
    8000245c:	d30080e7          	jalr	-720(ra) # 80002188 <_ZN15MemoryAllocator11getInstanceEv>
    80002460:	00048593          	mv	a1,s1
    80002464:	00000097          	auipc	ra,0x0
    80002468:	d90080e7          	jalr	-624(ra) # 800021f4 <_ZN15MemoryAllocator9_mem_freeEPv>
}
    8000246c:	01813083          	ld	ra,24(sp)
    80002470:	01013403          	ld	s0,16(sp)
    80002474:	00813483          	ld	s1,8(sp)
    80002478:	02010113          	addi	sp,sp,32
    8000247c:	00008067          	ret
        return -1;
    80002480:	fff00513          	li	a0,-1
}
    80002484:	00008067          	ret

0000000080002488 <_ZN5MySem9semSignalEPS_>:
    if(handle == nullptr){
    80002488:	04050e63          	beqz	a0,800024e4 <_ZN5MySem9semSignalEPS_+0x5c>
    handle->n++;
    8000248c:	01052783          	lw	a5,16(a0)
    80002490:	0017879b          	addiw	a5,a5,1
    80002494:	0007871b          	sext.w	a4,a5
    80002498:	00f52823          	sw	a5,16(a0)
    if(handle->n <= 0){
    8000249c:	00e05663          	blez	a4,800024a8 <_ZN5MySem9semSignalEPS_+0x20>
    return 0;
    800024a0:	00000513          	li	a0,0
}
    800024a4:	00008067          	ret
int MySem::semSignal(MySem* handle) {
    800024a8:	ff010113          	addi	sp,sp,-16
    800024ac:	00113423          	sd	ra,8(sp)
    800024b0:	00813023          	sd	s0,0(sp)
    800024b4:	01010413          	addi	s0,sp,16
        TCB* t = handle->getThread();
    800024b8:	00000097          	auipc	ra,0x0
    800024bc:	ee4080e7          	jalr	-284(ra) # 8000239c <_ZN5MySem9getThreadEv>
        t->blocked = false;
    800024c0:	02050123          	sb	zero,34(a0)
        if(t != nullptr) {
    800024c4:	02050463          	beqz	a0,800024ec <_ZN5MySem9semSignalEPS_+0x64>
            Scheduler::put(t);
    800024c8:	fffff097          	auipc	ra,0xfffff
    800024cc:	1a8080e7          	jalr	424(ra) # 80001670 <_ZN9Scheduler3putEP3TCB>
    return 0;
    800024d0:	00000513          	li	a0,0
}
    800024d4:	00813083          	ld	ra,8(sp)
    800024d8:	00013403          	ld	s0,0(sp)
    800024dc:	01010113          	addi	sp,sp,16
    800024e0:	00008067          	ret
        return -1;
    800024e4:	fff00513          	li	a0,-1
    800024e8:	00008067          	ret
    return 0;
    800024ec:	00000513          	li	a0,0
    800024f0:	fe5ff06f          	j	800024d4 <_ZN5MySem9semSignalEPS_+0x4c>

00000000800024f4 <_ZN5MySem9putThreadEP3TCB>:

void MySem::putThread(TCB *t) {
    800024f4:	fe010113          	addi	sp,sp,-32
    800024f8:	00113c23          	sd	ra,24(sp)
    800024fc:	00813823          	sd	s0,16(sp)
    80002500:	00913423          	sd	s1,8(sp)
    80002504:	01213023          	sd	s2,0(sp)
    80002508:	02010413          	addi	s0,sp,32
    8000250c:	00050493          	mv	s1,a0
    80002510:	00058913          	mv	s2,a1
    Blocked* newB =(Blocked*) MemoryAllocator::getInstance()._mem_alloc(sizeof(Blocked)/MEM_BLOCK_SIZE + (sizeof(Blocked)%MEM_BLOCK_SIZE > 0 ? 1:0));
    80002514:	00000097          	auipc	ra,0x0
    80002518:	c74080e7          	jalr	-908(ra) # 80002188 <_ZN15MemoryAllocator11getInstanceEv>
    8000251c:	00100593          	li	a1,1
    80002520:	00000097          	auipc	ra,0x0
    80002524:	b58080e7          	jalr	-1192(ra) # 80002078 <_ZN15MemoryAllocator10_mem_allocEm>
    newB->blocked = t;
    80002528:	01253023          	sd	s2,0(a0)
    newB->next = nullptr;
    8000252c:	00053423          	sd	zero,8(a0)

    if(head == nullptr){
    80002530:	0004b783          	ld	a5,0(s1)
    80002534:	02078463          	beqz	a5,8000255c <_ZN5MySem9putThreadEP3TCB+0x68>
        head = tail = newB;
    }else{
        tail->next = newB;
    80002538:	0084b783          	ld	a5,8(s1)
    8000253c:	00a7b423          	sd	a0,8(a5)
        tail = newB;
    80002540:	00a4b423          	sd	a0,8(s1)
    }
}
    80002544:	01813083          	ld	ra,24(sp)
    80002548:	01013403          	ld	s0,16(sp)
    8000254c:	00813483          	ld	s1,8(sp)
    80002550:	00013903          	ld	s2,0(sp)
    80002554:	02010113          	addi	sp,sp,32
    80002558:	00008067          	ret
        head = tail = newB;
    8000255c:	00a4b423          	sd	a0,8(s1)
    80002560:	00a4b023          	sd	a0,0(s1)
    80002564:	fe1ff06f          	j	80002544 <_ZN5MySem9putThreadEP3TCB+0x50>

0000000080002568 <_ZN5MySem7semWaitEPS_>:
    if(handle == nullptr){
    80002568:	06050863          	beqz	a0,800025d8 <_ZN5MySem7semWaitEPS_+0x70>
    if(--handle->n< 0){
    8000256c:	01052783          	lw	a5,16(a0)
    80002570:	fff7879b          	addiw	a5,a5,-1
    80002574:	00f52823          	sw	a5,16(a0)
    80002578:	02079713          	slli	a4,a5,0x20
    8000257c:	00074663          	bltz	a4,80002588 <_ZN5MySem7semWaitEPS_+0x20>
    return 0;
    80002580:	00000513          	li	a0,0
    80002584:	00008067          	ret
        if(TCB::running->closed) return -1;
    80002588:	00008797          	auipc	a5,0x8
    8000258c:	e387b783          	ld	a5,-456(a5) # 8000a3c0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002590:	0007b583          	ld	a1,0(a5)
    80002594:	0215c783          	lbu	a5,33(a1)
    80002598:	04079463          	bnez	a5,800025e0 <_ZN5MySem7semWaitEPS_+0x78>
int MySem::semWait(MySem* handle) {
    8000259c:	ff010113          	addi	sp,sp,-16
    800025a0:	00113423          	sd	ra,8(sp)
    800025a4:	00813023          	sd	s0,0(sp)
    800025a8:	01010413          	addi	s0,sp,16
        TCB::running->blocked = true;
    800025ac:	00100793          	li	a5,1
    800025b0:	02f58123          	sb	a5,34(a1)
        handle->putThread(TCB::running);
    800025b4:	00000097          	auipc	ra,0x0
    800025b8:	f40080e7          	jalr	-192(ra) # 800024f4 <_ZN5MySem9putThreadEP3TCB>
        TCB::dispatch();
    800025bc:	00000097          	auipc	ra,0x0
    800025c0:	a0c080e7          	jalr	-1524(ra) # 80001fc8 <_ZN3TCB8dispatchEv>
    return 0;
    800025c4:	00000513          	li	a0,0
}
    800025c8:	00813083          	ld	ra,8(sp)
    800025cc:	00013403          	ld	s0,0(sp)
    800025d0:	01010113          	addi	sp,sp,16
    800025d4:	00008067          	ret
        return -1;
    800025d8:	fff00513          	li	a0,-1
    800025dc:	00008067          	ret
        if(TCB::running->closed) return -1;
    800025e0:	fff00513          	li	a0,-1
}
    800025e4:	00008067          	ret

00000000800025e8 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800025e8:	fe010113          	addi	sp,sp,-32
    800025ec:	00113c23          	sd	ra,24(sp)
    800025f0:	00813823          	sd	s0,16(sp)
    800025f4:	00913423          	sd	s1,8(sp)
    800025f8:	01213023          	sd	s2,0(sp)
    800025fc:	02010413          	addi	s0,sp,32
    80002600:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002604:	00000913          	li	s2,0
    80002608:	00c0006f          	j	80002614 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000260c:	fffff097          	auipc	ra,0xfffff
    80002610:	e68080e7          	jalr	-408(ra) # 80001474 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002614:	fffff097          	auipc	ra,0xfffff
    80002618:	f94080e7          	jalr	-108(ra) # 800015a8 <_Z4getcv>
    8000261c:	0005059b          	sext.w	a1,a0
    80002620:	01b00793          	li	a5,27
    80002624:	02f58a63          	beq	a1,a5,80002658 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002628:	0084b503          	ld	a0,8(s1)
    8000262c:	00003097          	auipc	ra,0x3
    80002630:	3f4080e7          	jalr	1012(ra) # 80005a20 <_ZN6Buffer3putEi>
        i++;
    80002634:	0019071b          	addiw	a4,s2,1
    80002638:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000263c:	0004a683          	lw	a3,0(s1)
    80002640:	0026979b          	slliw	a5,a3,0x2
    80002644:	00d787bb          	addw	a5,a5,a3
    80002648:	0017979b          	slliw	a5,a5,0x1
    8000264c:	02f767bb          	remw	a5,a4,a5
    80002650:	fc0792e3          	bnez	a5,80002614 <_ZL16producerKeyboardPv+0x2c>
    80002654:	fb9ff06f          	j	8000260c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002658:	00100793          	li	a5,1
    8000265c:	00008717          	auipc	a4,0x8
    80002660:	dcf72a23          	sw	a5,-556(a4) # 8000a430 <_ZL9threadEnd>
    data->buffer->put('!');
    80002664:	02100593          	li	a1,33
    80002668:	0084b503          	ld	a0,8(s1)
    8000266c:	00003097          	auipc	ra,0x3
    80002670:	3b4080e7          	jalr	948(ra) # 80005a20 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002674:	0104b503          	ld	a0,16(s1)
    80002678:	fffff097          	auipc	ra,0xfffff
    8000267c:	ec8080e7          	jalr	-312(ra) # 80001540 <_Z10sem_signalP5MySem>
}
    80002680:	01813083          	ld	ra,24(sp)
    80002684:	01013403          	ld	s0,16(sp)
    80002688:	00813483          	ld	s1,8(sp)
    8000268c:	00013903          	ld	s2,0(sp)
    80002690:	02010113          	addi	sp,sp,32
    80002694:	00008067          	ret

0000000080002698 <_ZL8producerPv>:

static void producer(void *arg) {
    80002698:	fe010113          	addi	sp,sp,-32
    8000269c:	00113c23          	sd	ra,24(sp)
    800026a0:	00813823          	sd	s0,16(sp)
    800026a4:	00913423          	sd	s1,8(sp)
    800026a8:	01213023          	sd	s2,0(sp)
    800026ac:	02010413          	addi	s0,sp,32
    800026b0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800026b4:	00000913          	li	s2,0
    800026b8:	00c0006f          	j	800026c4 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800026bc:	fffff097          	auipc	ra,0xfffff
    800026c0:	db8080e7          	jalr	-584(ra) # 80001474 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800026c4:	00008797          	auipc	a5,0x8
    800026c8:	d6c7a783          	lw	a5,-660(a5) # 8000a430 <_ZL9threadEnd>
    800026cc:	02079e63          	bnez	a5,80002708 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800026d0:	0004a583          	lw	a1,0(s1)
    800026d4:	0305859b          	addiw	a1,a1,48
    800026d8:	0084b503          	ld	a0,8(s1)
    800026dc:	00003097          	auipc	ra,0x3
    800026e0:	344080e7          	jalr	836(ra) # 80005a20 <_ZN6Buffer3putEi>
        i++;
    800026e4:	0019071b          	addiw	a4,s2,1
    800026e8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800026ec:	0004a683          	lw	a3,0(s1)
    800026f0:	0026979b          	slliw	a5,a3,0x2
    800026f4:	00d787bb          	addw	a5,a5,a3
    800026f8:	0017979b          	slliw	a5,a5,0x1
    800026fc:	02f767bb          	remw	a5,a4,a5
    80002700:	fc0792e3          	bnez	a5,800026c4 <_ZL8producerPv+0x2c>
    80002704:	fb9ff06f          	j	800026bc <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002708:	0104b503          	ld	a0,16(s1)
    8000270c:	fffff097          	auipc	ra,0xfffff
    80002710:	e34080e7          	jalr	-460(ra) # 80001540 <_Z10sem_signalP5MySem>
}
    80002714:	01813083          	ld	ra,24(sp)
    80002718:	01013403          	ld	s0,16(sp)
    8000271c:	00813483          	ld	s1,8(sp)
    80002720:	00013903          	ld	s2,0(sp)
    80002724:	02010113          	addi	sp,sp,32
    80002728:	00008067          	ret

000000008000272c <_ZL8consumerPv>:

static void consumer(void *arg) {
    8000272c:	fd010113          	addi	sp,sp,-48
    80002730:	02113423          	sd	ra,40(sp)
    80002734:	02813023          	sd	s0,32(sp)
    80002738:	00913c23          	sd	s1,24(sp)
    8000273c:	01213823          	sd	s2,16(sp)
    80002740:	01313423          	sd	s3,8(sp)
    80002744:	03010413          	addi	s0,sp,48
    80002748:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000274c:	00000993          	li	s3,0
    80002750:	01c0006f          	j	8000276c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002754:	fffff097          	auipc	ra,0xfffff
    80002758:	d20080e7          	jalr	-736(ra) # 80001474 <_Z15thread_dispatchv>
    8000275c:	0500006f          	j	800027ac <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002760:	00a00513          	li	a0,10
    80002764:	fffff097          	auipc	ra,0xfffff
    80002768:	e6c080e7          	jalr	-404(ra) # 800015d0 <_Z4putcc>
    while (!threadEnd) {
    8000276c:	00008797          	auipc	a5,0x8
    80002770:	cc47a783          	lw	a5,-828(a5) # 8000a430 <_ZL9threadEnd>
    80002774:	06079063          	bnez	a5,800027d4 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002778:	00893503          	ld	a0,8(s2)
    8000277c:	00003097          	auipc	ra,0x3
    80002780:	334080e7          	jalr	820(ra) # 80005ab0 <_ZN6Buffer3getEv>
        i++;
    80002784:	0019849b          	addiw	s1,s3,1
    80002788:	0004899b          	sext.w	s3,s1
        putc(key);
    8000278c:	0ff57513          	andi	a0,a0,255
    80002790:	fffff097          	auipc	ra,0xfffff
    80002794:	e40080e7          	jalr	-448(ra) # 800015d0 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002798:	00092703          	lw	a4,0(s2)
    8000279c:	0027179b          	slliw	a5,a4,0x2
    800027a0:	00e787bb          	addw	a5,a5,a4
    800027a4:	02f4e7bb          	remw	a5,s1,a5
    800027a8:	fa0786e3          	beqz	a5,80002754 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800027ac:	05000793          	li	a5,80
    800027b0:	02f4e4bb          	remw	s1,s1,a5
    800027b4:	fa049ce3          	bnez	s1,8000276c <_ZL8consumerPv+0x40>
    800027b8:	fa9ff06f          	j	80002760 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800027bc:	00893503          	ld	a0,8(s2)
    800027c0:	00003097          	auipc	ra,0x3
    800027c4:	2f0080e7          	jalr	752(ra) # 80005ab0 <_ZN6Buffer3getEv>
        putc(key);
    800027c8:	0ff57513          	andi	a0,a0,255
    800027cc:	fffff097          	auipc	ra,0xfffff
    800027d0:	e04080e7          	jalr	-508(ra) # 800015d0 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800027d4:	00893503          	ld	a0,8(s2)
    800027d8:	00003097          	auipc	ra,0x3
    800027dc:	364080e7          	jalr	868(ra) # 80005b3c <_ZN6Buffer6getCntEv>
    800027e0:	fca04ee3          	bgtz	a0,800027bc <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800027e4:	01093503          	ld	a0,16(s2)
    800027e8:	fffff097          	auipc	ra,0xfffff
    800027ec:	d58080e7          	jalr	-680(ra) # 80001540 <_Z10sem_signalP5MySem>
}
    800027f0:	02813083          	ld	ra,40(sp)
    800027f4:	02013403          	ld	s0,32(sp)
    800027f8:	01813483          	ld	s1,24(sp)
    800027fc:	01013903          	ld	s2,16(sp)
    80002800:	00813983          	ld	s3,8(sp)
    80002804:	03010113          	addi	sp,sp,48
    80002808:	00008067          	ret

000000008000280c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    8000280c:	f9010113          	addi	sp,sp,-112
    80002810:	06113423          	sd	ra,104(sp)
    80002814:	06813023          	sd	s0,96(sp)
    80002818:	04913c23          	sd	s1,88(sp)
    8000281c:	05213823          	sd	s2,80(sp)
    80002820:	05313423          	sd	s3,72(sp)
    80002824:	05413023          	sd	s4,64(sp)
    80002828:	03513c23          	sd	s5,56(sp)
    8000282c:	03613823          	sd	s6,48(sp)
    80002830:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002834:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002838:	00005517          	auipc	a0,0x5
    8000283c:	7f850513          	addi	a0,a0,2040 # 80008030 <CONSOLE_STATUS+0x20>
    80002840:	00002097          	auipc	ra,0x2
    80002844:	220080e7          	jalr	544(ra) # 80004a60 <_Z11printStringPKc>
    getString(input, 30);
    80002848:	01e00593          	li	a1,30
    8000284c:	fa040493          	addi	s1,s0,-96
    80002850:	00048513          	mv	a0,s1
    80002854:	00002097          	auipc	ra,0x2
    80002858:	294080e7          	jalr	660(ra) # 80004ae8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000285c:	00048513          	mv	a0,s1
    80002860:	00002097          	auipc	ra,0x2
    80002864:	360080e7          	jalr	864(ra) # 80004bc0 <_Z11stringToIntPKc>
    80002868:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000286c:	00005517          	auipc	a0,0x5
    80002870:	7e450513          	addi	a0,a0,2020 # 80008050 <CONSOLE_STATUS+0x40>
    80002874:	00002097          	auipc	ra,0x2
    80002878:	1ec080e7          	jalr	492(ra) # 80004a60 <_Z11printStringPKc>
    getString(input, 30);
    8000287c:	01e00593          	li	a1,30
    80002880:	00048513          	mv	a0,s1
    80002884:	00002097          	auipc	ra,0x2
    80002888:	264080e7          	jalr	612(ra) # 80004ae8 <_Z9getStringPci>
    n = stringToInt(input);
    8000288c:	00048513          	mv	a0,s1
    80002890:	00002097          	auipc	ra,0x2
    80002894:	330080e7          	jalr	816(ra) # 80004bc0 <_Z11stringToIntPKc>
    80002898:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000289c:	00005517          	auipc	a0,0x5
    800028a0:	7d450513          	addi	a0,a0,2004 # 80008070 <CONSOLE_STATUS+0x60>
    800028a4:	00002097          	auipc	ra,0x2
    800028a8:	1bc080e7          	jalr	444(ra) # 80004a60 <_Z11printStringPKc>
    800028ac:	00000613          	li	a2,0
    800028b0:	00a00593          	li	a1,10
    800028b4:	00090513          	mv	a0,s2
    800028b8:	00002097          	auipc	ra,0x2
    800028bc:	358080e7          	jalr	856(ra) # 80004c10 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800028c0:	00005517          	auipc	a0,0x5
    800028c4:	7c850513          	addi	a0,a0,1992 # 80008088 <CONSOLE_STATUS+0x78>
    800028c8:	00002097          	auipc	ra,0x2
    800028cc:	198080e7          	jalr	408(ra) # 80004a60 <_Z11printStringPKc>
    800028d0:	00000613          	li	a2,0
    800028d4:	00a00593          	li	a1,10
    800028d8:	00048513          	mv	a0,s1
    800028dc:	00002097          	auipc	ra,0x2
    800028e0:	334080e7          	jalr	820(ra) # 80004c10 <_Z8printIntiii>
    printString(".\n");
    800028e4:	00005517          	auipc	a0,0x5
    800028e8:	7bc50513          	addi	a0,a0,1980 # 800080a0 <CONSOLE_STATUS+0x90>
    800028ec:	00002097          	auipc	ra,0x2
    800028f0:	174080e7          	jalr	372(ra) # 80004a60 <_Z11printStringPKc>
    if(threadNum > n) {
    800028f4:	0324c463          	blt	s1,s2,8000291c <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800028f8:	03205c63          	blez	s2,80002930 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800028fc:	03800513          	li	a0,56
    80002900:	fffff097          	auipc	ra,0xfffff
    80002904:	10c080e7          	jalr	268(ra) # 80001a0c <_Znwm>
    80002908:	00050a13          	mv	s4,a0
    8000290c:	00048593          	mv	a1,s1
    80002910:	00003097          	auipc	ra,0x3
    80002914:	074080e7          	jalr	116(ra) # 80005984 <_ZN6BufferC1Ei>
    80002918:	0300006f          	j	80002948 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000291c:	00005517          	auipc	a0,0x5
    80002920:	78c50513          	addi	a0,a0,1932 # 800080a8 <CONSOLE_STATUS+0x98>
    80002924:	00002097          	auipc	ra,0x2
    80002928:	13c080e7          	jalr	316(ra) # 80004a60 <_Z11printStringPKc>
        return;
    8000292c:	0140006f          	j	80002940 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002930:	00005517          	auipc	a0,0x5
    80002934:	7b850513          	addi	a0,a0,1976 # 800080e8 <CONSOLE_STATUS+0xd8>
    80002938:	00002097          	auipc	ra,0x2
    8000293c:	128080e7          	jalr	296(ra) # 80004a60 <_Z11printStringPKc>
        return;
    80002940:	000b0113          	mv	sp,s6
    80002944:	1500006f          	j	80002a94 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002948:	00000593          	li	a1,0
    8000294c:	00008517          	auipc	a0,0x8
    80002950:	aec50513          	addi	a0,a0,-1300 # 8000a438 <_ZL10waitForAll>
    80002954:	fffff097          	auipc	ra,0xfffff
    80002958:	b64080e7          	jalr	-1180(ra) # 800014b8 <_Z8sem_openPP5MySemj>
    thread_t threads[threadNum];
    8000295c:	00391793          	slli	a5,s2,0x3
    80002960:	00f78793          	addi	a5,a5,15
    80002964:	ff07f793          	andi	a5,a5,-16
    80002968:	40f10133          	sub	sp,sp,a5
    8000296c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002970:	0019071b          	addiw	a4,s2,1
    80002974:	00171793          	slli	a5,a4,0x1
    80002978:	00e787b3          	add	a5,a5,a4
    8000297c:	00379793          	slli	a5,a5,0x3
    80002980:	00f78793          	addi	a5,a5,15
    80002984:	ff07f793          	andi	a5,a5,-16
    80002988:	40f10133          	sub	sp,sp,a5
    8000298c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002990:	00191613          	slli	a2,s2,0x1
    80002994:	012607b3          	add	a5,a2,s2
    80002998:	00379793          	slli	a5,a5,0x3
    8000299c:	00f987b3          	add	a5,s3,a5
    800029a0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800029a4:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800029a8:	00008717          	auipc	a4,0x8
    800029ac:	a9073703          	ld	a4,-1392(a4) # 8000a438 <_ZL10waitForAll>
    800029b0:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800029b4:	00078613          	mv	a2,a5
    800029b8:	00000597          	auipc	a1,0x0
    800029bc:	d7458593          	addi	a1,a1,-652 # 8000272c <_ZL8consumerPv>
    800029c0:	f9840513          	addi	a0,s0,-104
    800029c4:	fffff097          	auipc	ra,0xfffff
    800029c8:	a10080e7          	jalr	-1520(ra) # 800013d4 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800029cc:	00000493          	li	s1,0
    800029d0:	0280006f          	j	800029f8 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800029d4:	00000597          	auipc	a1,0x0
    800029d8:	c1458593          	addi	a1,a1,-1004 # 800025e8 <_ZL16producerKeyboardPv>
                      data + i);
    800029dc:	00179613          	slli	a2,a5,0x1
    800029e0:	00f60633          	add	a2,a2,a5
    800029e4:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800029e8:	00c98633          	add	a2,s3,a2
    800029ec:	fffff097          	auipc	ra,0xfffff
    800029f0:	9e8080e7          	jalr	-1560(ra) # 800013d4 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800029f4:	0014849b          	addiw	s1,s1,1
    800029f8:	0524d263          	bge	s1,s2,80002a3c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800029fc:	00149793          	slli	a5,s1,0x1
    80002a00:	009787b3          	add	a5,a5,s1
    80002a04:	00379793          	slli	a5,a5,0x3
    80002a08:	00f987b3          	add	a5,s3,a5
    80002a0c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002a10:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80002a14:	00008717          	auipc	a4,0x8
    80002a18:	a2473703          	ld	a4,-1500(a4) # 8000a438 <_ZL10waitForAll>
    80002a1c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002a20:	00048793          	mv	a5,s1
    80002a24:	00349513          	slli	a0,s1,0x3
    80002a28:	00aa8533          	add	a0,s5,a0
    80002a2c:	fa9054e3          	blez	s1,800029d4 <_Z22producerConsumer_C_APIv+0x1c8>
    80002a30:	00000597          	auipc	a1,0x0
    80002a34:	c6858593          	addi	a1,a1,-920 # 80002698 <_ZL8producerPv>
    80002a38:	fa5ff06f          	j	800029dc <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80002a3c:	fffff097          	auipc	ra,0xfffff
    80002a40:	a38080e7          	jalr	-1480(ra) # 80001474 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80002a44:	00000493          	li	s1,0
    80002a48:	00994e63          	blt	s2,s1,80002a64 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80002a4c:	00008517          	auipc	a0,0x8
    80002a50:	9ec53503          	ld	a0,-1556(a0) # 8000a438 <_ZL10waitForAll>
    80002a54:	fffff097          	auipc	ra,0xfffff
    80002a58:	ac0080e7          	jalr	-1344(ra) # 80001514 <_Z8sem_waitP5MySem>
    for (int i = 0; i <= threadNum; i++) {
    80002a5c:	0014849b          	addiw	s1,s1,1
    80002a60:	fe9ff06f          	j	80002a48 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80002a64:	00008517          	auipc	a0,0x8
    80002a68:	9d453503          	ld	a0,-1580(a0) # 8000a438 <_ZL10waitForAll>
    80002a6c:	fffff097          	auipc	ra,0xfffff
    80002a70:	a7c080e7          	jalr	-1412(ra) # 800014e8 <_Z9sem_closeP5MySem>
    delete buffer;
    80002a74:	000a0e63          	beqz	s4,80002a90 <_Z22producerConsumer_C_APIv+0x284>
    80002a78:	000a0513          	mv	a0,s4
    80002a7c:	00003097          	auipc	ra,0x3
    80002a80:	148080e7          	jalr	328(ra) # 80005bc4 <_ZN6BufferD1Ev>
    80002a84:	000a0513          	mv	a0,s4
    80002a88:	fffff097          	auipc	ra,0xfffff
    80002a8c:	fd4080e7          	jalr	-44(ra) # 80001a5c <_ZdlPv>
    80002a90:	000b0113          	mv	sp,s6

}
    80002a94:	f9040113          	addi	sp,s0,-112
    80002a98:	06813083          	ld	ra,104(sp)
    80002a9c:	06013403          	ld	s0,96(sp)
    80002aa0:	05813483          	ld	s1,88(sp)
    80002aa4:	05013903          	ld	s2,80(sp)
    80002aa8:	04813983          	ld	s3,72(sp)
    80002aac:	04013a03          	ld	s4,64(sp)
    80002ab0:	03813a83          	ld	s5,56(sp)
    80002ab4:	03013b03          	ld	s6,48(sp)
    80002ab8:	07010113          	addi	sp,sp,112
    80002abc:	00008067          	ret
    80002ac0:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80002ac4:	000a0513          	mv	a0,s4
    80002ac8:	fffff097          	auipc	ra,0xfffff
    80002acc:	f94080e7          	jalr	-108(ra) # 80001a5c <_ZdlPv>
    80002ad0:	00048513          	mv	a0,s1
    80002ad4:	00009097          	auipc	ra,0x9
    80002ad8:	a74080e7          	jalr	-1420(ra) # 8000b548 <_Unwind_Resume>

0000000080002adc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002adc:	fe010113          	addi	sp,sp,-32
    80002ae0:	00113c23          	sd	ra,24(sp)
    80002ae4:	00813823          	sd	s0,16(sp)
    80002ae8:	00913423          	sd	s1,8(sp)
    80002aec:	01213023          	sd	s2,0(sp)
    80002af0:	02010413          	addi	s0,sp,32
    80002af4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002af8:	00100793          	li	a5,1
    80002afc:	02a7f863          	bgeu	a5,a0,80002b2c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002b00:	00a00793          	li	a5,10
    80002b04:	02f577b3          	remu	a5,a0,a5
    80002b08:	02078e63          	beqz	a5,80002b44 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002b0c:	fff48513          	addi	a0,s1,-1
    80002b10:	00000097          	auipc	ra,0x0
    80002b14:	fcc080e7          	jalr	-52(ra) # 80002adc <_ZL9fibonaccim>
    80002b18:	00050913          	mv	s2,a0
    80002b1c:	ffe48513          	addi	a0,s1,-2
    80002b20:	00000097          	auipc	ra,0x0
    80002b24:	fbc080e7          	jalr	-68(ra) # 80002adc <_ZL9fibonaccim>
    80002b28:	00a90533          	add	a0,s2,a0
}
    80002b2c:	01813083          	ld	ra,24(sp)
    80002b30:	01013403          	ld	s0,16(sp)
    80002b34:	00813483          	ld	s1,8(sp)
    80002b38:	00013903          	ld	s2,0(sp)
    80002b3c:	02010113          	addi	sp,sp,32
    80002b40:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002b44:	fffff097          	auipc	ra,0xfffff
    80002b48:	930080e7          	jalr	-1744(ra) # 80001474 <_Z15thread_dispatchv>
    80002b4c:	fc1ff06f          	j	80002b0c <_ZL9fibonaccim+0x30>

0000000080002b50 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002b50:	fe010113          	addi	sp,sp,-32
    80002b54:	00113c23          	sd	ra,24(sp)
    80002b58:	00813823          	sd	s0,16(sp)
    80002b5c:	00913423          	sd	s1,8(sp)
    80002b60:	01213023          	sd	s2,0(sp)
    80002b64:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002b68:	00000913          	li	s2,0
    80002b6c:	0380006f          	j	80002ba4 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002b70:	fffff097          	auipc	ra,0xfffff
    80002b74:	904080e7          	jalr	-1788(ra) # 80001474 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002b78:	00148493          	addi	s1,s1,1
    80002b7c:	000027b7          	lui	a5,0x2
    80002b80:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002b84:	0097ee63          	bltu	a5,s1,80002ba0 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002b88:	00000713          	li	a4,0
    80002b8c:	000077b7          	lui	a5,0x7
    80002b90:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002b94:	fce7eee3          	bltu	a5,a4,80002b70 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002b98:	00170713          	addi	a4,a4,1
    80002b9c:	ff1ff06f          	j	80002b8c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002ba0:	00190913          	addi	s2,s2,1
    80002ba4:	00900793          	li	a5,9
    80002ba8:	0527e063          	bltu	a5,s2,80002be8 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002bac:	00005517          	auipc	a0,0x5
    80002bb0:	56c50513          	addi	a0,a0,1388 # 80008118 <CONSOLE_STATUS+0x108>
    80002bb4:	00002097          	auipc	ra,0x2
    80002bb8:	eac080e7          	jalr	-340(ra) # 80004a60 <_Z11printStringPKc>
    80002bbc:	00000613          	li	a2,0
    80002bc0:	00a00593          	li	a1,10
    80002bc4:	0009051b          	sext.w	a0,s2
    80002bc8:	00002097          	auipc	ra,0x2
    80002bcc:	048080e7          	jalr	72(ra) # 80004c10 <_Z8printIntiii>
    80002bd0:	00005517          	auipc	a0,0x5
    80002bd4:	7c850513          	addi	a0,a0,1992 # 80008398 <CONSOLE_STATUS+0x388>
    80002bd8:	00002097          	auipc	ra,0x2
    80002bdc:	e88080e7          	jalr	-376(ra) # 80004a60 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002be0:	00000493          	li	s1,0
    80002be4:	f99ff06f          	j	80002b7c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002be8:	00005517          	auipc	a0,0x5
    80002bec:	53850513          	addi	a0,a0,1336 # 80008120 <CONSOLE_STATUS+0x110>
    80002bf0:	00002097          	auipc	ra,0x2
    80002bf4:	e70080e7          	jalr	-400(ra) # 80004a60 <_Z11printStringPKc>
    finishedA = true;
    80002bf8:	00100793          	li	a5,1
    80002bfc:	00008717          	auipc	a4,0x8
    80002c00:	84f70223          	sb	a5,-1980(a4) # 8000a440 <_ZL9finishedA>
}
    80002c04:	01813083          	ld	ra,24(sp)
    80002c08:	01013403          	ld	s0,16(sp)
    80002c0c:	00813483          	ld	s1,8(sp)
    80002c10:	00013903          	ld	s2,0(sp)
    80002c14:	02010113          	addi	sp,sp,32
    80002c18:	00008067          	ret

0000000080002c1c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002c1c:	fe010113          	addi	sp,sp,-32
    80002c20:	00113c23          	sd	ra,24(sp)
    80002c24:	00813823          	sd	s0,16(sp)
    80002c28:	00913423          	sd	s1,8(sp)
    80002c2c:	01213023          	sd	s2,0(sp)
    80002c30:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002c34:	00000913          	li	s2,0
    80002c38:	0380006f          	j	80002c70 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002c3c:	fffff097          	auipc	ra,0xfffff
    80002c40:	838080e7          	jalr	-1992(ra) # 80001474 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002c44:	00148493          	addi	s1,s1,1
    80002c48:	000027b7          	lui	a5,0x2
    80002c4c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002c50:	0097ee63          	bltu	a5,s1,80002c6c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002c54:	00000713          	li	a4,0
    80002c58:	000077b7          	lui	a5,0x7
    80002c5c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002c60:	fce7eee3          	bltu	a5,a4,80002c3c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002c64:	00170713          	addi	a4,a4,1
    80002c68:	ff1ff06f          	j	80002c58 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002c6c:	00190913          	addi	s2,s2,1
    80002c70:	00f00793          	li	a5,15
    80002c74:	0527e063          	bltu	a5,s2,80002cb4 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002c78:	00005517          	auipc	a0,0x5
    80002c7c:	4b850513          	addi	a0,a0,1208 # 80008130 <CONSOLE_STATUS+0x120>
    80002c80:	00002097          	auipc	ra,0x2
    80002c84:	de0080e7          	jalr	-544(ra) # 80004a60 <_Z11printStringPKc>
    80002c88:	00000613          	li	a2,0
    80002c8c:	00a00593          	li	a1,10
    80002c90:	0009051b          	sext.w	a0,s2
    80002c94:	00002097          	auipc	ra,0x2
    80002c98:	f7c080e7          	jalr	-132(ra) # 80004c10 <_Z8printIntiii>
    80002c9c:	00005517          	auipc	a0,0x5
    80002ca0:	6fc50513          	addi	a0,a0,1788 # 80008398 <CONSOLE_STATUS+0x388>
    80002ca4:	00002097          	auipc	ra,0x2
    80002ca8:	dbc080e7          	jalr	-580(ra) # 80004a60 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002cac:	00000493          	li	s1,0
    80002cb0:	f99ff06f          	j	80002c48 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002cb4:	00005517          	auipc	a0,0x5
    80002cb8:	48450513          	addi	a0,a0,1156 # 80008138 <CONSOLE_STATUS+0x128>
    80002cbc:	00002097          	auipc	ra,0x2
    80002cc0:	da4080e7          	jalr	-604(ra) # 80004a60 <_Z11printStringPKc>
    finishedB = true;
    80002cc4:	00100793          	li	a5,1
    80002cc8:	00007717          	auipc	a4,0x7
    80002ccc:	76f70ca3          	sb	a5,1913(a4) # 8000a441 <_ZL9finishedB>
    thread_dispatch();
    80002cd0:	ffffe097          	auipc	ra,0xffffe
    80002cd4:	7a4080e7          	jalr	1956(ra) # 80001474 <_Z15thread_dispatchv>
}
    80002cd8:	01813083          	ld	ra,24(sp)
    80002cdc:	01013403          	ld	s0,16(sp)
    80002ce0:	00813483          	ld	s1,8(sp)
    80002ce4:	00013903          	ld	s2,0(sp)
    80002ce8:	02010113          	addi	sp,sp,32
    80002cec:	00008067          	ret

0000000080002cf0 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002cf0:	fe010113          	addi	sp,sp,-32
    80002cf4:	00113c23          	sd	ra,24(sp)
    80002cf8:	00813823          	sd	s0,16(sp)
    80002cfc:	00913423          	sd	s1,8(sp)
    80002d00:	01213023          	sd	s2,0(sp)
    80002d04:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002d08:	00000493          	li	s1,0
    80002d0c:	0400006f          	j	80002d4c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002d10:	00005517          	auipc	a0,0x5
    80002d14:	43850513          	addi	a0,a0,1080 # 80008148 <CONSOLE_STATUS+0x138>
    80002d18:	00002097          	auipc	ra,0x2
    80002d1c:	d48080e7          	jalr	-696(ra) # 80004a60 <_Z11printStringPKc>
    80002d20:	00000613          	li	a2,0
    80002d24:	00a00593          	li	a1,10
    80002d28:	00048513          	mv	a0,s1
    80002d2c:	00002097          	auipc	ra,0x2
    80002d30:	ee4080e7          	jalr	-284(ra) # 80004c10 <_Z8printIntiii>
    80002d34:	00005517          	auipc	a0,0x5
    80002d38:	66450513          	addi	a0,a0,1636 # 80008398 <CONSOLE_STATUS+0x388>
    80002d3c:	00002097          	auipc	ra,0x2
    80002d40:	d24080e7          	jalr	-732(ra) # 80004a60 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002d44:	0014849b          	addiw	s1,s1,1
    80002d48:	0ff4f493          	andi	s1,s1,255
    80002d4c:	00200793          	li	a5,2
    80002d50:	fc97f0e3          	bgeu	a5,s1,80002d10 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002d54:	00005517          	auipc	a0,0x5
    80002d58:	3fc50513          	addi	a0,a0,1020 # 80008150 <CONSOLE_STATUS+0x140>
    80002d5c:	00002097          	auipc	ra,0x2
    80002d60:	d04080e7          	jalr	-764(ra) # 80004a60 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002d64:	00700313          	li	t1,7
    thread_dispatch();
    80002d68:	ffffe097          	auipc	ra,0xffffe
    80002d6c:	70c080e7          	jalr	1804(ra) # 80001474 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002d70:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002d74:	00005517          	auipc	a0,0x5
    80002d78:	3ec50513          	addi	a0,a0,1004 # 80008160 <CONSOLE_STATUS+0x150>
    80002d7c:	00002097          	auipc	ra,0x2
    80002d80:	ce4080e7          	jalr	-796(ra) # 80004a60 <_Z11printStringPKc>
    80002d84:	00000613          	li	a2,0
    80002d88:	00a00593          	li	a1,10
    80002d8c:	0009051b          	sext.w	a0,s2
    80002d90:	00002097          	auipc	ra,0x2
    80002d94:	e80080e7          	jalr	-384(ra) # 80004c10 <_Z8printIntiii>
    80002d98:	00005517          	auipc	a0,0x5
    80002d9c:	60050513          	addi	a0,a0,1536 # 80008398 <CONSOLE_STATUS+0x388>
    80002da0:	00002097          	auipc	ra,0x2
    80002da4:	cc0080e7          	jalr	-832(ra) # 80004a60 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002da8:	00c00513          	li	a0,12
    80002dac:	00000097          	auipc	ra,0x0
    80002db0:	d30080e7          	jalr	-720(ra) # 80002adc <_ZL9fibonaccim>
    80002db4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002db8:	00005517          	auipc	a0,0x5
    80002dbc:	3b050513          	addi	a0,a0,944 # 80008168 <CONSOLE_STATUS+0x158>
    80002dc0:	00002097          	auipc	ra,0x2
    80002dc4:	ca0080e7          	jalr	-864(ra) # 80004a60 <_Z11printStringPKc>
    80002dc8:	00000613          	li	a2,0
    80002dcc:	00a00593          	li	a1,10
    80002dd0:	0009051b          	sext.w	a0,s2
    80002dd4:	00002097          	auipc	ra,0x2
    80002dd8:	e3c080e7          	jalr	-452(ra) # 80004c10 <_Z8printIntiii>
    80002ddc:	00005517          	auipc	a0,0x5
    80002de0:	5bc50513          	addi	a0,a0,1468 # 80008398 <CONSOLE_STATUS+0x388>
    80002de4:	00002097          	auipc	ra,0x2
    80002de8:	c7c080e7          	jalr	-900(ra) # 80004a60 <_Z11printStringPKc>
    80002dec:	0400006f          	j	80002e2c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002df0:	00005517          	auipc	a0,0x5
    80002df4:	35850513          	addi	a0,a0,856 # 80008148 <CONSOLE_STATUS+0x138>
    80002df8:	00002097          	auipc	ra,0x2
    80002dfc:	c68080e7          	jalr	-920(ra) # 80004a60 <_Z11printStringPKc>
    80002e00:	00000613          	li	a2,0
    80002e04:	00a00593          	li	a1,10
    80002e08:	00048513          	mv	a0,s1
    80002e0c:	00002097          	auipc	ra,0x2
    80002e10:	e04080e7          	jalr	-508(ra) # 80004c10 <_Z8printIntiii>
    80002e14:	00005517          	auipc	a0,0x5
    80002e18:	58450513          	addi	a0,a0,1412 # 80008398 <CONSOLE_STATUS+0x388>
    80002e1c:	00002097          	auipc	ra,0x2
    80002e20:	c44080e7          	jalr	-956(ra) # 80004a60 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002e24:	0014849b          	addiw	s1,s1,1
    80002e28:	0ff4f493          	andi	s1,s1,255
    80002e2c:	00500793          	li	a5,5
    80002e30:	fc97f0e3          	bgeu	a5,s1,80002df0 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80002e34:	00005517          	auipc	a0,0x5
    80002e38:	2ec50513          	addi	a0,a0,748 # 80008120 <CONSOLE_STATUS+0x110>
    80002e3c:	00002097          	auipc	ra,0x2
    80002e40:	c24080e7          	jalr	-988(ra) # 80004a60 <_Z11printStringPKc>
    finishedC = true;
    80002e44:	00100793          	li	a5,1
    80002e48:	00007717          	auipc	a4,0x7
    80002e4c:	5ef70d23          	sb	a5,1530(a4) # 8000a442 <_ZL9finishedC>
    thread_dispatch();
    80002e50:	ffffe097          	auipc	ra,0xffffe
    80002e54:	624080e7          	jalr	1572(ra) # 80001474 <_Z15thread_dispatchv>
}
    80002e58:	01813083          	ld	ra,24(sp)
    80002e5c:	01013403          	ld	s0,16(sp)
    80002e60:	00813483          	ld	s1,8(sp)
    80002e64:	00013903          	ld	s2,0(sp)
    80002e68:	02010113          	addi	sp,sp,32
    80002e6c:	00008067          	ret

0000000080002e70 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002e70:	fe010113          	addi	sp,sp,-32
    80002e74:	00113c23          	sd	ra,24(sp)
    80002e78:	00813823          	sd	s0,16(sp)
    80002e7c:	00913423          	sd	s1,8(sp)
    80002e80:	01213023          	sd	s2,0(sp)
    80002e84:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002e88:	00a00493          	li	s1,10
    80002e8c:	0400006f          	j	80002ecc <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002e90:	00005517          	auipc	a0,0x5
    80002e94:	2e850513          	addi	a0,a0,744 # 80008178 <CONSOLE_STATUS+0x168>
    80002e98:	00002097          	auipc	ra,0x2
    80002e9c:	bc8080e7          	jalr	-1080(ra) # 80004a60 <_Z11printStringPKc>
    80002ea0:	00000613          	li	a2,0
    80002ea4:	00a00593          	li	a1,10
    80002ea8:	00048513          	mv	a0,s1
    80002eac:	00002097          	auipc	ra,0x2
    80002eb0:	d64080e7          	jalr	-668(ra) # 80004c10 <_Z8printIntiii>
    80002eb4:	00005517          	auipc	a0,0x5
    80002eb8:	4e450513          	addi	a0,a0,1252 # 80008398 <CONSOLE_STATUS+0x388>
    80002ebc:	00002097          	auipc	ra,0x2
    80002ec0:	ba4080e7          	jalr	-1116(ra) # 80004a60 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002ec4:	0014849b          	addiw	s1,s1,1
    80002ec8:	0ff4f493          	andi	s1,s1,255
    80002ecc:	00c00793          	li	a5,12
    80002ed0:	fc97f0e3          	bgeu	a5,s1,80002e90 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002ed4:	00005517          	auipc	a0,0x5
    80002ed8:	2ac50513          	addi	a0,a0,684 # 80008180 <CONSOLE_STATUS+0x170>
    80002edc:	00002097          	auipc	ra,0x2
    80002ee0:	b84080e7          	jalr	-1148(ra) # 80004a60 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002ee4:	00500313          	li	t1,5
    thread_dispatch();
    80002ee8:	ffffe097          	auipc	ra,0xffffe
    80002eec:	58c080e7          	jalr	1420(ra) # 80001474 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002ef0:	01000513          	li	a0,16
    80002ef4:	00000097          	auipc	ra,0x0
    80002ef8:	be8080e7          	jalr	-1048(ra) # 80002adc <_ZL9fibonaccim>
    80002efc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002f00:	00005517          	auipc	a0,0x5
    80002f04:	29050513          	addi	a0,a0,656 # 80008190 <CONSOLE_STATUS+0x180>
    80002f08:	00002097          	auipc	ra,0x2
    80002f0c:	b58080e7          	jalr	-1192(ra) # 80004a60 <_Z11printStringPKc>
    80002f10:	00000613          	li	a2,0
    80002f14:	00a00593          	li	a1,10
    80002f18:	0009051b          	sext.w	a0,s2
    80002f1c:	00002097          	auipc	ra,0x2
    80002f20:	cf4080e7          	jalr	-780(ra) # 80004c10 <_Z8printIntiii>
    80002f24:	00005517          	auipc	a0,0x5
    80002f28:	47450513          	addi	a0,a0,1140 # 80008398 <CONSOLE_STATUS+0x388>
    80002f2c:	00002097          	auipc	ra,0x2
    80002f30:	b34080e7          	jalr	-1228(ra) # 80004a60 <_Z11printStringPKc>
    80002f34:	0400006f          	j	80002f74 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002f38:	00005517          	auipc	a0,0x5
    80002f3c:	24050513          	addi	a0,a0,576 # 80008178 <CONSOLE_STATUS+0x168>
    80002f40:	00002097          	auipc	ra,0x2
    80002f44:	b20080e7          	jalr	-1248(ra) # 80004a60 <_Z11printStringPKc>
    80002f48:	00000613          	li	a2,0
    80002f4c:	00a00593          	li	a1,10
    80002f50:	00048513          	mv	a0,s1
    80002f54:	00002097          	auipc	ra,0x2
    80002f58:	cbc080e7          	jalr	-836(ra) # 80004c10 <_Z8printIntiii>
    80002f5c:	00005517          	auipc	a0,0x5
    80002f60:	43c50513          	addi	a0,a0,1084 # 80008398 <CONSOLE_STATUS+0x388>
    80002f64:	00002097          	auipc	ra,0x2
    80002f68:	afc080e7          	jalr	-1284(ra) # 80004a60 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002f6c:	0014849b          	addiw	s1,s1,1
    80002f70:	0ff4f493          	andi	s1,s1,255
    80002f74:	00f00793          	li	a5,15
    80002f78:	fc97f0e3          	bgeu	a5,s1,80002f38 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80002f7c:	00005517          	auipc	a0,0x5
    80002f80:	22450513          	addi	a0,a0,548 # 800081a0 <CONSOLE_STATUS+0x190>
    80002f84:	00002097          	auipc	ra,0x2
    80002f88:	adc080e7          	jalr	-1316(ra) # 80004a60 <_Z11printStringPKc>
    finishedD = true;
    80002f8c:	00100793          	li	a5,1
    80002f90:	00007717          	auipc	a4,0x7
    80002f94:	4af709a3          	sb	a5,1203(a4) # 8000a443 <_ZL9finishedD>
    thread_dispatch();
    80002f98:	ffffe097          	auipc	ra,0xffffe
    80002f9c:	4dc080e7          	jalr	1244(ra) # 80001474 <_Z15thread_dispatchv>
}
    80002fa0:	01813083          	ld	ra,24(sp)
    80002fa4:	01013403          	ld	s0,16(sp)
    80002fa8:	00813483          	ld	s1,8(sp)
    80002fac:	00013903          	ld	s2,0(sp)
    80002fb0:	02010113          	addi	sp,sp,32
    80002fb4:	00008067          	ret

0000000080002fb8 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002fb8:	fc010113          	addi	sp,sp,-64
    80002fbc:	02113c23          	sd	ra,56(sp)
    80002fc0:	02813823          	sd	s0,48(sp)
    80002fc4:	02913423          	sd	s1,40(sp)
    80002fc8:	03213023          	sd	s2,32(sp)
    80002fcc:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002fd0:	02000513          	li	a0,32
    80002fd4:	fffff097          	auipc	ra,0xfffff
    80002fd8:	a38080e7          	jalr	-1480(ra) # 80001a0c <_Znwm>
    80002fdc:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002fe0:	fffff097          	auipc	ra,0xfffff
    80002fe4:	834080e7          	jalr	-1996(ra) # 80001814 <_ZN6ThreadC1Ev>
    80002fe8:	00007797          	auipc	a5,0x7
    80002fec:	22078793          	addi	a5,a5,544 # 8000a208 <_ZTV7WorkerA+0x10>
    80002ff0:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002ff4:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002ff8:	00005517          	auipc	a0,0x5
    80002ffc:	1b850513          	addi	a0,a0,440 # 800081b0 <CONSOLE_STATUS+0x1a0>
    80003000:	00002097          	auipc	ra,0x2
    80003004:	a60080e7          	jalr	-1440(ra) # 80004a60 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003008:	02000513          	li	a0,32
    8000300c:	fffff097          	auipc	ra,0xfffff
    80003010:	a00080e7          	jalr	-1536(ra) # 80001a0c <_Znwm>
    80003014:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003018:	ffffe097          	auipc	ra,0xffffe
    8000301c:	7fc080e7          	jalr	2044(ra) # 80001814 <_ZN6ThreadC1Ev>
    80003020:	00007797          	auipc	a5,0x7
    80003024:	21078793          	addi	a5,a5,528 # 8000a230 <_ZTV7WorkerB+0x10>
    80003028:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    8000302c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003030:	00005517          	auipc	a0,0x5
    80003034:	19850513          	addi	a0,a0,408 # 800081c8 <CONSOLE_STATUS+0x1b8>
    80003038:	00002097          	auipc	ra,0x2
    8000303c:	a28080e7          	jalr	-1496(ra) # 80004a60 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003040:	02000513          	li	a0,32
    80003044:	fffff097          	auipc	ra,0xfffff
    80003048:	9c8080e7          	jalr	-1592(ra) # 80001a0c <_Znwm>
    8000304c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003050:	ffffe097          	auipc	ra,0xffffe
    80003054:	7c4080e7          	jalr	1988(ra) # 80001814 <_ZN6ThreadC1Ev>
    80003058:	00007797          	auipc	a5,0x7
    8000305c:	20078793          	addi	a5,a5,512 # 8000a258 <_ZTV7WorkerC+0x10>
    80003060:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003064:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003068:	00005517          	auipc	a0,0x5
    8000306c:	17850513          	addi	a0,a0,376 # 800081e0 <CONSOLE_STATUS+0x1d0>
    80003070:	00002097          	auipc	ra,0x2
    80003074:	9f0080e7          	jalr	-1552(ra) # 80004a60 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003078:	02000513          	li	a0,32
    8000307c:	fffff097          	auipc	ra,0xfffff
    80003080:	990080e7          	jalr	-1648(ra) # 80001a0c <_Znwm>
    80003084:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003088:	ffffe097          	auipc	ra,0xffffe
    8000308c:	78c080e7          	jalr	1932(ra) # 80001814 <_ZN6ThreadC1Ev>
    80003090:	00007797          	auipc	a5,0x7
    80003094:	1f078793          	addi	a5,a5,496 # 8000a280 <_ZTV7WorkerD+0x10>
    80003098:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8000309c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800030a0:	00005517          	auipc	a0,0x5
    800030a4:	15850513          	addi	a0,a0,344 # 800081f8 <CONSOLE_STATUS+0x1e8>
    800030a8:	00002097          	auipc	ra,0x2
    800030ac:	9b8080e7          	jalr	-1608(ra) # 80004a60 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800030b0:	00000493          	li	s1,0
    800030b4:	00300793          	li	a5,3
    800030b8:	0297c663          	blt	a5,s1,800030e4 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800030bc:	00349793          	slli	a5,s1,0x3
    800030c0:	fe040713          	addi	a4,s0,-32
    800030c4:	00f707b3          	add	a5,a4,a5
    800030c8:	fe07b503          	ld	a0,-32(a5)
    800030cc:	ffffe097          	auipc	ra,0xffffe
    800030d0:	7b0080e7          	jalr	1968(ra) # 8000187c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800030d4:	0014849b          	addiw	s1,s1,1
    800030d8:	fddff06f          	j	800030b4 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800030dc:	fffff097          	auipc	ra,0xfffff
    800030e0:	800080e7          	jalr	-2048(ra) # 800018dc <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800030e4:	00007797          	auipc	a5,0x7
    800030e8:	35c7c783          	lbu	a5,860(a5) # 8000a440 <_ZL9finishedA>
    800030ec:	fe0788e3          	beqz	a5,800030dc <_Z20Threads_CPP_API_testv+0x124>
    800030f0:	00007797          	auipc	a5,0x7
    800030f4:	3517c783          	lbu	a5,849(a5) # 8000a441 <_ZL9finishedB>
    800030f8:	fe0782e3          	beqz	a5,800030dc <_Z20Threads_CPP_API_testv+0x124>
    800030fc:	00007797          	auipc	a5,0x7
    80003100:	3467c783          	lbu	a5,838(a5) # 8000a442 <_ZL9finishedC>
    80003104:	fc078ce3          	beqz	a5,800030dc <_Z20Threads_CPP_API_testv+0x124>
    80003108:	00007797          	auipc	a5,0x7
    8000310c:	33b7c783          	lbu	a5,827(a5) # 8000a443 <_ZL9finishedD>
    80003110:	fc0786e3          	beqz	a5,800030dc <_Z20Threads_CPP_API_testv+0x124>
    80003114:	fc040493          	addi	s1,s0,-64
    80003118:	0080006f          	j	80003120 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    8000311c:	00848493          	addi	s1,s1,8
    80003120:	fe040793          	addi	a5,s0,-32
    80003124:	08f48663          	beq	s1,a5,800031b0 <_Z20Threads_CPP_API_testv+0x1f8>
    80003128:	0004b503          	ld	a0,0(s1)
    8000312c:	fe0508e3          	beqz	a0,8000311c <_Z20Threads_CPP_API_testv+0x164>
    80003130:	00053783          	ld	a5,0(a0)
    80003134:	0087b783          	ld	a5,8(a5)
    80003138:	000780e7          	jalr	a5
    8000313c:	fe1ff06f          	j	8000311c <_Z20Threads_CPP_API_testv+0x164>
    80003140:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003144:	00048513          	mv	a0,s1
    80003148:	fffff097          	auipc	ra,0xfffff
    8000314c:	914080e7          	jalr	-1772(ra) # 80001a5c <_ZdlPv>
    80003150:	00090513          	mv	a0,s2
    80003154:	00008097          	auipc	ra,0x8
    80003158:	3f4080e7          	jalr	1012(ra) # 8000b548 <_Unwind_Resume>
    8000315c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003160:	00048513          	mv	a0,s1
    80003164:	fffff097          	auipc	ra,0xfffff
    80003168:	8f8080e7          	jalr	-1800(ra) # 80001a5c <_ZdlPv>
    8000316c:	00090513          	mv	a0,s2
    80003170:	00008097          	auipc	ra,0x8
    80003174:	3d8080e7          	jalr	984(ra) # 8000b548 <_Unwind_Resume>
    80003178:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000317c:	00048513          	mv	a0,s1
    80003180:	fffff097          	auipc	ra,0xfffff
    80003184:	8dc080e7          	jalr	-1828(ra) # 80001a5c <_ZdlPv>
    80003188:	00090513          	mv	a0,s2
    8000318c:	00008097          	auipc	ra,0x8
    80003190:	3bc080e7          	jalr	956(ra) # 8000b548 <_Unwind_Resume>
    80003194:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003198:	00048513          	mv	a0,s1
    8000319c:	fffff097          	auipc	ra,0xfffff
    800031a0:	8c0080e7          	jalr	-1856(ra) # 80001a5c <_ZdlPv>
    800031a4:	00090513          	mv	a0,s2
    800031a8:	00008097          	auipc	ra,0x8
    800031ac:	3a0080e7          	jalr	928(ra) # 8000b548 <_Unwind_Resume>
}
    800031b0:	03813083          	ld	ra,56(sp)
    800031b4:	03013403          	ld	s0,48(sp)
    800031b8:	02813483          	ld	s1,40(sp)
    800031bc:	02013903          	ld	s2,32(sp)
    800031c0:	04010113          	addi	sp,sp,64
    800031c4:	00008067          	ret

00000000800031c8 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800031c8:	ff010113          	addi	sp,sp,-16
    800031cc:	00113423          	sd	ra,8(sp)
    800031d0:	00813023          	sd	s0,0(sp)
    800031d4:	01010413          	addi	s0,sp,16
    800031d8:	00007797          	auipc	a5,0x7
    800031dc:	03078793          	addi	a5,a5,48 # 8000a208 <_ZTV7WorkerA+0x10>
    800031e0:	00f53023          	sd	a5,0(a0)
    800031e4:	fffff097          	auipc	ra,0xfffff
    800031e8:	8a0080e7          	jalr	-1888(ra) # 80001a84 <_ZN6ThreadD1Ev>
    800031ec:	00813083          	ld	ra,8(sp)
    800031f0:	00013403          	ld	s0,0(sp)
    800031f4:	01010113          	addi	sp,sp,16
    800031f8:	00008067          	ret

00000000800031fc <_ZN7WorkerAD0Ev>:
    800031fc:	fe010113          	addi	sp,sp,-32
    80003200:	00113c23          	sd	ra,24(sp)
    80003204:	00813823          	sd	s0,16(sp)
    80003208:	00913423          	sd	s1,8(sp)
    8000320c:	02010413          	addi	s0,sp,32
    80003210:	00050493          	mv	s1,a0
    80003214:	00007797          	auipc	a5,0x7
    80003218:	ff478793          	addi	a5,a5,-12 # 8000a208 <_ZTV7WorkerA+0x10>
    8000321c:	00f53023          	sd	a5,0(a0)
    80003220:	fffff097          	auipc	ra,0xfffff
    80003224:	864080e7          	jalr	-1948(ra) # 80001a84 <_ZN6ThreadD1Ev>
    80003228:	00048513          	mv	a0,s1
    8000322c:	fffff097          	auipc	ra,0xfffff
    80003230:	830080e7          	jalr	-2000(ra) # 80001a5c <_ZdlPv>
    80003234:	01813083          	ld	ra,24(sp)
    80003238:	01013403          	ld	s0,16(sp)
    8000323c:	00813483          	ld	s1,8(sp)
    80003240:	02010113          	addi	sp,sp,32
    80003244:	00008067          	ret

0000000080003248 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003248:	ff010113          	addi	sp,sp,-16
    8000324c:	00113423          	sd	ra,8(sp)
    80003250:	00813023          	sd	s0,0(sp)
    80003254:	01010413          	addi	s0,sp,16
    80003258:	00007797          	auipc	a5,0x7
    8000325c:	fd878793          	addi	a5,a5,-40 # 8000a230 <_ZTV7WorkerB+0x10>
    80003260:	00f53023          	sd	a5,0(a0)
    80003264:	fffff097          	auipc	ra,0xfffff
    80003268:	820080e7          	jalr	-2016(ra) # 80001a84 <_ZN6ThreadD1Ev>
    8000326c:	00813083          	ld	ra,8(sp)
    80003270:	00013403          	ld	s0,0(sp)
    80003274:	01010113          	addi	sp,sp,16
    80003278:	00008067          	ret

000000008000327c <_ZN7WorkerBD0Ev>:
    8000327c:	fe010113          	addi	sp,sp,-32
    80003280:	00113c23          	sd	ra,24(sp)
    80003284:	00813823          	sd	s0,16(sp)
    80003288:	00913423          	sd	s1,8(sp)
    8000328c:	02010413          	addi	s0,sp,32
    80003290:	00050493          	mv	s1,a0
    80003294:	00007797          	auipc	a5,0x7
    80003298:	f9c78793          	addi	a5,a5,-100 # 8000a230 <_ZTV7WorkerB+0x10>
    8000329c:	00f53023          	sd	a5,0(a0)
    800032a0:	ffffe097          	auipc	ra,0xffffe
    800032a4:	7e4080e7          	jalr	2020(ra) # 80001a84 <_ZN6ThreadD1Ev>
    800032a8:	00048513          	mv	a0,s1
    800032ac:	ffffe097          	auipc	ra,0xffffe
    800032b0:	7b0080e7          	jalr	1968(ra) # 80001a5c <_ZdlPv>
    800032b4:	01813083          	ld	ra,24(sp)
    800032b8:	01013403          	ld	s0,16(sp)
    800032bc:	00813483          	ld	s1,8(sp)
    800032c0:	02010113          	addi	sp,sp,32
    800032c4:	00008067          	ret

00000000800032c8 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800032c8:	ff010113          	addi	sp,sp,-16
    800032cc:	00113423          	sd	ra,8(sp)
    800032d0:	00813023          	sd	s0,0(sp)
    800032d4:	01010413          	addi	s0,sp,16
    800032d8:	00007797          	auipc	a5,0x7
    800032dc:	f8078793          	addi	a5,a5,-128 # 8000a258 <_ZTV7WorkerC+0x10>
    800032e0:	00f53023          	sd	a5,0(a0)
    800032e4:	ffffe097          	auipc	ra,0xffffe
    800032e8:	7a0080e7          	jalr	1952(ra) # 80001a84 <_ZN6ThreadD1Ev>
    800032ec:	00813083          	ld	ra,8(sp)
    800032f0:	00013403          	ld	s0,0(sp)
    800032f4:	01010113          	addi	sp,sp,16
    800032f8:	00008067          	ret

00000000800032fc <_ZN7WorkerCD0Ev>:
    800032fc:	fe010113          	addi	sp,sp,-32
    80003300:	00113c23          	sd	ra,24(sp)
    80003304:	00813823          	sd	s0,16(sp)
    80003308:	00913423          	sd	s1,8(sp)
    8000330c:	02010413          	addi	s0,sp,32
    80003310:	00050493          	mv	s1,a0
    80003314:	00007797          	auipc	a5,0x7
    80003318:	f4478793          	addi	a5,a5,-188 # 8000a258 <_ZTV7WorkerC+0x10>
    8000331c:	00f53023          	sd	a5,0(a0)
    80003320:	ffffe097          	auipc	ra,0xffffe
    80003324:	764080e7          	jalr	1892(ra) # 80001a84 <_ZN6ThreadD1Ev>
    80003328:	00048513          	mv	a0,s1
    8000332c:	ffffe097          	auipc	ra,0xffffe
    80003330:	730080e7          	jalr	1840(ra) # 80001a5c <_ZdlPv>
    80003334:	01813083          	ld	ra,24(sp)
    80003338:	01013403          	ld	s0,16(sp)
    8000333c:	00813483          	ld	s1,8(sp)
    80003340:	02010113          	addi	sp,sp,32
    80003344:	00008067          	ret

0000000080003348 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003348:	ff010113          	addi	sp,sp,-16
    8000334c:	00113423          	sd	ra,8(sp)
    80003350:	00813023          	sd	s0,0(sp)
    80003354:	01010413          	addi	s0,sp,16
    80003358:	00007797          	auipc	a5,0x7
    8000335c:	f2878793          	addi	a5,a5,-216 # 8000a280 <_ZTV7WorkerD+0x10>
    80003360:	00f53023          	sd	a5,0(a0)
    80003364:	ffffe097          	auipc	ra,0xffffe
    80003368:	720080e7          	jalr	1824(ra) # 80001a84 <_ZN6ThreadD1Ev>
    8000336c:	00813083          	ld	ra,8(sp)
    80003370:	00013403          	ld	s0,0(sp)
    80003374:	01010113          	addi	sp,sp,16
    80003378:	00008067          	ret

000000008000337c <_ZN7WorkerDD0Ev>:
    8000337c:	fe010113          	addi	sp,sp,-32
    80003380:	00113c23          	sd	ra,24(sp)
    80003384:	00813823          	sd	s0,16(sp)
    80003388:	00913423          	sd	s1,8(sp)
    8000338c:	02010413          	addi	s0,sp,32
    80003390:	00050493          	mv	s1,a0
    80003394:	00007797          	auipc	a5,0x7
    80003398:	eec78793          	addi	a5,a5,-276 # 8000a280 <_ZTV7WorkerD+0x10>
    8000339c:	00f53023          	sd	a5,0(a0)
    800033a0:	ffffe097          	auipc	ra,0xffffe
    800033a4:	6e4080e7          	jalr	1764(ra) # 80001a84 <_ZN6ThreadD1Ev>
    800033a8:	00048513          	mv	a0,s1
    800033ac:	ffffe097          	auipc	ra,0xffffe
    800033b0:	6b0080e7          	jalr	1712(ra) # 80001a5c <_ZdlPv>
    800033b4:	01813083          	ld	ra,24(sp)
    800033b8:	01013403          	ld	s0,16(sp)
    800033bc:	00813483          	ld	s1,8(sp)
    800033c0:	02010113          	addi	sp,sp,32
    800033c4:	00008067          	ret

00000000800033c8 <_ZN7WorkerA3runEv>:
    void run() override {
    800033c8:	ff010113          	addi	sp,sp,-16
    800033cc:	00113423          	sd	ra,8(sp)
    800033d0:	00813023          	sd	s0,0(sp)
    800033d4:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800033d8:	00000593          	li	a1,0
    800033dc:	fffff097          	auipc	ra,0xfffff
    800033e0:	774080e7          	jalr	1908(ra) # 80002b50 <_ZN7WorkerA11workerBodyAEPv>
    }
    800033e4:	00813083          	ld	ra,8(sp)
    800033e8:	00013403          	ld	s0,0(sp)
    800033ec:	01010113          	addi	sp,sp,16
    800033f0:	00008067          	ret

00000000800033f4 <_ZN7WorkerB3runEv>:
    void run() override {
    800033f4:	ff010113          	addi	sp,sp,-16
    800033f8:	00113423          	sd	ra,8(sp)
    800033fc:	00813023          	sd	s0,0(sp)
    80003400:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003404:	00000593          	li	a1,0
    80003408:	00000097          	auipc	ra,0x0
    8000340c:	814080e7          	jalr	-2028(ra) # 80002c1c <_ZN7WorkerB11workerBodyBEPv>
    }
    80003410:	00813083          	ld	ra,8(sp)
    80003414:	00013403          	ld	s0,0(sp)
    80003418:	01010113          	addi	sp,sp,16
    8000341c:	00008067          	ret

0000000080003420 <_ZN7WorkerC3runEv>:
    void run() override {
    80003420:	ff010113          	addi	sp,sp,-16
    80003424:	00113423          	sd	ra,8(sp)
    80003428:	00813023          	sd	s0,0(sp)
    8000342c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003430:	00000593          	li	a1,0
    80003434:	00000097          	auipc	ra,0x0
    80003438:	8bc080e7          	jalr	-1860(ra) # 80002cf0 <_ZN7WorkerC11workerBodyCEPv>
    }
    8000343c:	00813083          	ld	ra,8(sp)
    80003440:	00013403          	ld	s0,0(sp)
    80003444:	01010113          	addi	sp,sp,16
    80003448:	00008067          	ret

000000008000344c <_ZN7WorkerD3runEv>:
    void run() override {
    8000344c:	ff010113          	addi	sp,sp,-16
    80003450:	00113423          	sd	ra,8(sp)
    80003454:	00813023          	sd	s0,0(sp)
    80003458:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    8000345c:	00000593          	li	a1,0
    80003460:	00000097          	auipc	ra,0x0
    80003464:	a10080e7          	jalr	-1520(ra) # 80002e70 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003468:	00813083          	ld	ra,8(sp)
    8000346c:	00013403          	ld	s0,0(sp)
    80003470:	01010113          	addi	sp,sp,16
    80003474:	00008067          	ret

0000000080003478 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003478:	f8010113          	addi	sp,sp,-128
    8000347c:	06113c23          	sd	ra,120(sp)
    80003480:	06813823          	sd	s0,112(sp)
    80003484:	06913423          	sd	s1,104(sp)
    80003488:	07213023          	sd	s2,96(sp)
    8000348c:	05313c23          	sd	s3,88(sp)
    80003490:	05413823          	sd	s4,80(sp)
    80003494:	05513423          	sd	s5,72(sp)
    80003498:	05613023          	sd	s6,64(sp)
    8000349c:	03713c23          	sd	s7,56(sp)
    800034a0:	03813823          	sd	s8,48(sp)
    800034a4:	03913423          	sd	s9,40(sp)
    800034a8:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800034ac:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800034b0:	00005517          	auipc	a0,0x5
    800034b4:	b8050513          	addi	a0,a0,-1152 # 80008030 <CONSOLE_STATUS+0x20>
    800034b8:	00001097          	auipc	ra,0x1
    800034bc:	5a8080e7          	jalr	1448(ra) # 80004a60 <_Z11printStringPKc>
    getString(input, 30);
    800034c0:	01e00593          	li	a1,30
    800034c4:	f8040493          	addi	s1,s0,-128
    800034c8:	00048513          	mv	a0,s1
    800034cc:	00001097          	auipc	ra,0x1
    800034d0:	61c080e7          	jalr	1564(ra) # 80004ae8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800034d4:	00048513          	mv	a0,s1
    800034d8:	00001097          	auipc	ra,0x1
    800034dc:	6e8080e7          	jalr	1768(ra) # 80004bc0 <_Z11stringToIntPKc>
    800034e0:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800034e4:	00005517          	auipc	a0,0x5
    800034e8:	b6c50513          	addi	a0,a0,-1172 # 80008050 <CONSOLE_STATUS+0x40>
    800034ec:	00001097          	auipc	ra,0x1
    800034f0:	574080e7          	jalr	1396(ra) # 80004a60 <_Z11printStringPKc>
    getString(input, 30);
    800034f4:	01e00593          	li	a1,30
    800034f8:	00048513          	mv	a0,s1
    800034fc:	00001097          	auipc	ra,0x1
    80003500:	5ec080e7          	jalr	1516(ra) # 80004ae8 <_Z9getStringPci>
    n = stringToInt(input);
    80003504:	00048513          	mv	a0,s1
    80003508:	00001097          	auipc	ra,0x1
    8000350c:	6b8080e7          	jalr	1720(ra) # 80004bc0 <_Z11stringToIntPKc>
    80003510:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003514:	00005517          	auipc	a0,0x5
    80003518:	b5c50513          	addi	a0,a0,-1188 # 80008070 <CONSOLE_STATUS+0x60>
    8000351c:	00001097          	auipc	ra,0x1
    80003520:	544080e7          	jalr	1348(ra) # 80004a60 <_Z11printStringPKc>
    printInt(threadNum);
    80003524:	00000613          	li	a2,0
    80003528:	00a00593          	li	a1,10
    8000352c:	00098513          	mv	a0,s3
    80003530:	00001097          	auipc	ra,0x1
    80003534:	6e0080e7          	jalr	1760(ra) # 80004c10 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003538:	00005517          	auipc	a0,0x5
    8000353c:	b5050513          	addi	a0,a0,-1200 # 80008088 <CONSOLE_STATUS+0x78>
    80003540:	00001097          	auipc	ra,0x1
    80003544:	520080e7          	jalr	1312(ra) # 80004a60 <_Z11printStringPKc>
    printInt(n);
    80003548:	00000613          	li	a2,0
    8000354c:	00a00593          	li	a1,10
    80003550:	00048513          	mv	a0,s1
    80003554:	00001097          	auipc	ra,0x1
    80003558:	6bc080e7          	jalr	1724(ra) # 80004c10 <_Z8printIntiii>
    printString(".\n");
    8000355c:	00005517          	auipc	a0,0x5
    80003560:	b4450513          	addi	a0,a0,-1212 # 800080a0 <CONSOLE_STATUS+0x90>
    80003564:	00001097          	auipc	ra,0x1
    80003568:	4fc080e7          	jalr	1276(ra) # 80004a60 <_Z11printStringPKc>
    if (threadNum > n) {
    8000356c:	0334c463          	blt	s1,s3,80003594 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003570:	03305c63          	blez	s3,800035a8 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003574:	03800513          	li	a0,56
    80003578:	ffffe097          	auipc	ra,0xffffe
    8000357c:	494080e7          	jalr	1172(ra) # 80001a0c <_Znwm>
    80003580:	00050a93          	mv	s5,a0
    80003584:	00048593          	mv	a1,s1
    80003588:	00001097          	auipc	ra,0x1
    8000358c:	7a8080e7          	jalr	1960(ra) # 80004d30 <_ZN9BufferCPPC1Ei>
    80003590:	0300006f          	j	800035c0 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003594:	00005517          	auipc	a0,0x5
    80003598:	b1450513          	addi	a0,a0,-1260 # 800080a8 <CONSOLE_STATUS+0x98>
    8000359c:	00001097          	auipc	ra,0x1
    800035a0:	4c4080e7          	jalr	1220(ra) # 80004a60 <_Z11printStringPKc>
        return;
    800035a4:	0140006f          	j	800035b8 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800035a8:	00005517          	auipc	a0,0x5
    800035ac:	b4050513          	addi	a0,a0,-1216 # 800080e8 <CONSOLE_STATUS+0xd8>
    800035b0:	00001097          	auipc	ra,0x1
    800035b4:	4b0080e7          	jalr	1200(ra) # 80004a60 <_Z11printStringPKc>
        return;
    800035b8:	000c0113          	mv	sp,s8
    800035bc:	2140006f          	j	800037d0 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800035c0:	01000513          	li	a0,16
    800035c4:	ffffe097          	auipc	ra,0xffffe
    800035c8:	448080e7          	jalr	1096(ra) # 80001a0c <_Znwm>
    800035cc:	00050913          	mv	s2,a0
    800035d0:	00000593          	li	a1,0
    800035d4:	ffffe097          	auipc	ra,0xffffe
    800035d8:	358080e7          	jalr	856(ra) # 8000192c <_ZN9SemaphoreC1Ej>
    800035dc:	00007797          	auipc	a5,0x7
    800035e0:	e727ba23          	sd	s2,-396(a5) # 8000a450 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800035e4:	00399793          	slli	a5,s3,0x3
    800035e8:	00f78793          	addi	a5,a5,15
    800035ec:	ff07f793          	andi	a5,a5,-16
    800035f0:	40f10133          	sub	sp,sp,a5
    800035f4:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800035f8:	0019871b          	addiw	a4,s3,1
    800035fc:	00171793          	slli	a5,a4,0x1
    80003600:	00e787b3          	add	a5,a5,a4
    80003604:	00379793          	slli	a5,a5,0x3
    80003608:	00f78793          	addi	a5,a5,15
    8000360c:	ff07f793          	andi	a5,a5,-16
    80003610:	40f10133          	sub	sp,sp,a5
    80003614:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003618:	00199493          	slli	s1,s3,0x1
    8000361c:	013484b3          	add	s1,s1,s3
    80003620:	00349493          	slli	s1,s1,0x3
    80003624:	009b04b3          	add	s1,s6,s1
    80003628:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    8000362c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003630:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003634:	02800513          	li	a0,40
    80003638:	ffffe097          	auipc	ra,0xffffe
    8000363c:	3d4080e7          	jalr	980(ra) # 80001a0c <_Znwm>
    80003640:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003644:	ffffe097          	auipc	ra,0xffffe
    80003648:	1d0080e7          	jalr	464(ra) # 80001814 <_ZN6ThreadC1Ev>
    8000364c:	00007797          	auipc	a5,0x7
    80003650:	cac78793          	addi	a5,a5,-852 # 8000a2f8 <_ZTV8Consumer+0x10>
    80003654:	00fbb023          	sd	a5,0(s7)
    80003658:	029bb023          	sd	s1,32(s7)
    consumer->start();
    8000365c:	000b8513          	mv	a0,s7
    80003660:	ffffe097          	auipc	ra,0xffffe
    80003664:	21c080e7          	jalr	540(ra) # 8000187c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003668:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    8000366c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003670:	00007797          	auipc	a5,0x7
    80003674:	de07b783          	ld	a5,-544(a5) # 8000a450 <_ZL10waitForAll>
    80003678:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000367c:	02800513          	li	a0,40
    80003680:	ffffe097          	auipc	ra,0xffffe
    80003684:	38c080e7          	jalr	908(ra) # 80001a0c <_Znwm>
    80003688:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    8000368c:	ffffe097          	auipc	ra,0xffffe
    80003690:	188080e7          	jalr	392(ra) # 80001814 <_ZN6ThreadC1Ev>
    80003694:	00007797          	auipc	a5,0x7
    80003698:	c1478793          	addi	a5,a5,-1004 # 8000a2a8 <_ZTV16ProducerKeyborad+0x10>
    8000369c:	00f4b023          	sd	a5,0(s1)
    800036a0:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800036a4:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800036a8:	00048513          	mv	a0,s1
    800036ac:	ffffe097          	auipc	ra,0xffffe
    800036b0:	1d0080e7          	jalr	464(ra) # 8000187c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800036b4:	00100913          	li	s2,1
    800036b8:	0300006f          	j	800036e8 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800036bc:	00007797          	auipc	a5,0x7
    800036c0:	c1478793          	addi	a5,a5,-1004 # 8000a2d0 <_ZTV8Producer+0x10>
    800036c4:	00fcb023          	sd	a5,0(s9)
    800036c8:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800036cc:	00391793          	slli	a5,s2,0x3
    800036d0:	00fa07b3          	add	a5,s4,a5
    800036d4:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800036d8:	000c8513          	mv	a0,s9
    800036dc:	ffffe097          	auipc	ra,0xffffe
    800036e0:	1a0080e7          	jalr	416(ra) # 8000187c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800036e4:	0019091b          	addiw	s2,s2,1
    800036e8:	05395263          	bge	s2,s3,8000372c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800036ec:	00191493          	slli	s1,s2,0x1
    800036f0:	012484b3          	add	s1,s1,s2
    800036f4:	00349493          	slli	s1,s1,0x3
    800036f8:	009b04b3          	add	s1,s6,s1
    800036fc:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003700:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003704:	00007797          	auipc	a5,0x7
    80003708:	d4c7b783          	ld	a5,-692(a5) # 8000a450 <_ZL10waitForAll>
    8000370c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003710:	02800513          	li	a0,40
    80003714:	ffffe097          	auipc	ra,0xffffe
    80003718:	2f8080e7          	jalr	760(ra) # 80001a0c <_Znwm>
    8000371c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003720:	ffffe097          	auipc	ra,0xffffe
    80003724:	0f4080e7          	jalr	244(ra) # 80001814 <_ZN6ThreadC1Ev>
    80003728:	f95ff06f          	j	800036bc <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    8000372c:	ffffe097          	auipc	ra,0xffffe
    80003730:	1b0080e7          	jalr	432(ra) # 800018dc <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003734:	00000493          	li	s1,0
    80003738:	0099ce63          	blt	s3,s1,80003754 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    8000373c:	00007517          	auipc	a0,0x7
    80003740:	d1453503          	ld	a0,-748(a0) # 8000a450 <_ZL10waitForAll>
    80003744:	ffffe097          	auipc	ra,0xffffe
    80003748:	220080e7          	jalr	544(ra) # 80001964 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000374c:	0014849b          	addiw	s1,s1,1
    80003750:	fe9ff06f          	j	80003738 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003754:	00007517          	auipc	a0,0x7
    80003758:	cfc53503          	ld	a0,-772(a0) # 8000a450 <_ZL10waitForAll>
    8000375c:	00050863          	beqz	a0,8000376c <_Z20testConsumerProducerv+0x2f4>
    80003760:	00053783          	ld	a5,0(a0)
    80003764:	0087b783          	ld	a5,8(a5)
    80003768:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    8000376c:	00000493          	li	s1,0
    80003770:	0080006f          	j	80003778 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003774:	0014849b          	addiw	s1,s1,1
    80003778:	0334d263          	bge	s1,s3,8000379c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    8000377c:	00349793          	slli	a5,s1,0x3
    80003780:	00fa07b3          	add	a5,s4,a5
    80003784:	0007b503          	ld	a0,0(a5)
    80003788:	fe0506e3          	beqz	a0,80003774 <_Z20testConsumerProducerv+0x2fc>
    8000378c:	00053783          	ld	a5,0(a0)
    80003790:	0087b783          	ld	a5,8(a5)
    80003794:	000780e7          	jalr	a5
    80003798:	fddff06f          	j	80003774 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    8000379c:	000b8a63          	beqz	s7,800037b0 <_Z20testConsumerProducerv+0x338>
    800037a0:	000bb783          	ld	a5,0(s7)
    800037a4:	0087b783          	ld	a5,8(a5)
    800037a8:	000b8513          	mv	a0,s7
    800037ac:	000780e7          	jalr	a5
    delete buffer;
    800037b0:	000a8e63          	beqz	s5,800037cc <_Z20testConsumerProducerv+0x354>
    800037b4:	000a8513          	mv	a0,s5
    800037b8:	00002097          	auipc	ra,0x2
    800037bc:	870080e7          	jalr	-1936(ra) # 80005028 <_ZN9BufferCPPD1Ev>
    800037c0:	000a8513          	mv	a0,s5
    800037c4:	ffffe097          	auipc	ra,0xffffe
    800037c8:	298080e7          	jalr	664(ra) # 80001a5c <_ZdlPv>
    800037cc:	000c0113          	mv	sp,s8
}
    800037d0:	f8040113          	addi	sp,s0,-128
    800037d4:	07813083          	ld	ra,120(sp)
    800037d8:	07013403          	ld	s0,112(sp)
    800037dc:	06813483          	ld	s1,104(sp)
    800037e0:	06013903          	ld	s2,96(sp)
    800037e4:	05813983          	ld	s3,88(sp)
    800037e8:	05013a03          	ld	s4,80(sp)
    800037ec:	04813a83          	ld	s5,72(sp)
    800037f0:	04013b03          	ld	s6,64(sp)
    800037f4:	03813b83          	ld	s7,56(sp)
    800037f8:	03013c03          	ld	s8,48(sp)
    800037fc:	02813c83          	ld	s9,40(sp)
    80003800:	08010113          	addi	sp,sp,128
    80003804:	00008067          	ret
    80003808:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000380c:	000a8513          	mv	a0,s5
    80003810:	ffffe097          	auipc	ra,0xffffe
    80003814:	24c080e7          	jalr	588(ra) # 80001a5c <_ZdlPv>
    80003818:	00048513          	mv	a0,s1
    8000381c:	00008097          	auipc	ra,0x8
    80003820:	d2c080e7          	jalr	-724(ra) # 8000b548 <_Unwind_Resume>
    80003824:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003828:	00090513          	mv	a0,s2
    8000382c:	ffffe097          	auipc	ra,0xffffe
    80003830:	230080e7          	jalr	560(ra) # 80001a5c <_ZdlPv>
    80003834:	00048513          	mv	a0,s1
    80003838:	00008097          	auipc	ra,0x8
    8000383c:	d10080e7          	jalr	-752(ra) # 8000b548 <_Unwind_Resume>
    80003840:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003844:	000b8513          	mv	a0,s7
    80003848:	ffffe097          	auipc	ra,0xffffe
    8000384c:	214080e7          	jalr	532(ra) # 80001a5c <_ZdlPv>
    80003850:	00048513          	mv	a0,s1
    80003854:	00008097          	auipc	ra,0x8
    80003858:	cf4080e7          	jalr	-780(ra) # 8000b548 <_Unwind_Resume>
    8000385c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003860:	00048513          	mv	a0,s1
    80003864:	ffffe097          	auipc	ra,0xffffe
    80003868:	1f8080e7          	jalr	504(ra) # 80001a5c <_ZdlPv>
    8000386c:	00090513          	mv	a0,s2
    80003870:	00008097          	auipc	ra,0x8
    80003874:	cd8080e7          	jalr	-808(ra) # 8000b548 <_Unwind_Resume>
    80003878:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    8000387c:	000c8513          	mv	a0,s9
    80003880:	ffffe097          	auipc	ra,0xffffe
    80003884:	1dc080e7          	jalr	476(ra) # 80001a5c <_ZdlPv>
    80003888:	00048513          	mv	a0,s1
    8000388c:	00008097          	auipc	ra,0x8
    80003890:	cbc080e7          	jalr	-836(ra) # 8000b548 <_Unwind_Resume>

0000000080003894 <_ZN8Consumer3runEv>:
    void run() override {
    80003894:	fd010113          	addi	sp,sp,-48
    80003898:	02113423          	sd	ra,40(sp)
    8000389c:	02813023          	sd	s0,32(sp)
    800038a0:	00913c23          	sd	s1,24(sp)
    800038a4:	01213823          	sd	s2,16(sp)
    800038a8:	01313423          	sd	s3,8(sp)
    800038ac:	03010413          	addi	s0,sp,48
    800038b0:	00050913          	mv	s2,a0
        int i = 0;
    800038b4:	00000993          	li	s3,0
    800038b8:	0100006f          	j	800038c8 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800038bc:	00a00513          	li	a0,10
    800038c0:	ffffe097          	auipc	ra,0xffffe
    800038c4:	124080e7          	jalr	292(ra) # 800019e4 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800038c8:	00007797          	auipc	a5,0x7
    800038cc:	b807a783          	lw	a5,-1152(a5) # 8000a448 <_ZL9threadEnd>
    800038d0:	04079a63          	bnez	a5,80003924 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800038d4:	02093783          	ld	a5,32(s2)
    800038d8:	0087b503          	ld	a0,8(a5)
    800038dc:	00001097          	auipc	ra,0x1
    800038e0:	638080e7          	jalr	1592(ra) # 80004f14 <_ZN9BufferCPP3getEv>
            i++;
    800038e4:	0019849b          	addiw	s1,s3,1
    800038e8:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800038ec:	0ff57513          	andi	a0,a0,255
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	0f4080e7          	jalr	244(ra) # 800019e4 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800038f8:	05000793          	li	a5,80
    800038fc:	02f4e4bb          	remw	s1,s1,a5
    80003900:	fc0494e3          	bnez	s1,800038c8 <_ZN8Consumer3runEv+0x34>
    80003904:	fb9ff06f          	j	800038bc <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80003908:	02093783          	ld	a5,32(s2)
    8000390c:	0087b503          	ld	a0,8(a5)
    80003910:	00001097          	auipc	ra,0x1
    80003914:	604080e7          	jalr	1540(ra) # 80004f14 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80003918:	0ff57513          	andi	a0,a0,255
    8000391c:	ffffe097          	auipc	ra,0xffffe
    80003920:	0c8080e7          	jalr	200(ra) # 800019e4 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80003924:	02093783          	ld	a5,32(s2)
    80003928:	0087b503          	ld	a0,8(a5)
    8000392c:	00001097          	auipc	ra,0x1
    80003930:	674080e7          	jalr	1652(ra) # 80004fa0 <_ZN9BufferCPP6getCntEv>
    80003934:	fca04ae3          	bgtz	a0,80003908 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80003938:	02093783          	ld	a5,32(s2)
    8000393c:	0107b503          	ld	a0,16(a5)
    80003940:	ffffe097          	auipc	ra,0xffffe
    80003944:	050080e7          	jalr	80(ra) # 80001990 <_ZN9Semaphore6signalEv>
    }
    80003948:	02813083          	ld	ra,40(sp)
    8000394c:	02013403          	ld	s0,32(sp)
    80003950:	01813483          	ld	s1,24(sp)
    80003954:	01013903          	ld	s2,16(sp)
    80003958:	00813983          	ld	s3,8(sp)
    8000395c:	03010113          	addi	sp,sp,48
    80003960:	00008067          	ret

0000000080003964 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003964:	ff010113          	addi	sp,sp,-16
    80003968:	00113423          	sd	ra,8(sp)
    8000396c:	00813023          	sd	s0,0(sp)
    80003970:	01010413          	addi	s0,sp,16
    80003974:	00007797          	auipc	a5,0x7
    80003978:	98478793          	addi	a5,a5,-1660 # 8000a2f8 <_ZTV8Consumer+0x10>
    8000397c:	00f53023          	sd	a5,0(a0)
    80003980:	ffffe097          	auipc	ra,0xffffe
    80003984:	104080e7          	jalr	260(ra) # 80001a84 <_ZN6ThreadD1Ev>
    80003988:	00813083          	ld	ra,8(sp)
    8000398c:	00013403          	ld	s0,0(sp)
    80003990:	01010113          	addi	sp,sp,16
    80003994:	00008067          	ret

0000000080003998 <_ZN8ConsumerD0Ev>:
    80003998:	fe010113          	addi	sp,sp,-32
    8000399c:	00113c23          	sd	ra,24(sp)
    800039a0:	00813823          	sd	s0,16(sp)
    800039a4:	00913423          	sd	s1,8(sp)
    800039a8:	02010413          	addi	s0,sp,32
    800039ac:	00050493          	mv	s1,a0
    800039b0:	00007797          	auipc	a5,0x7
    800039b4:	94878793          	addi	a5,a5,-1720 # 8000a2f8 <_ZTV8Consumer+0x10>
    800039b8:	00f53023          	sd	a5,0(a0)
    800039bc:	ffffe097          	auipc	ra,0xffffe
    800039c0:	0c8080e7          	jalr	200(ra) # 80001a84 <_ZN6ThreadD1Ev>
    800039c4:	00048513          	mv	a0,s1
    800039c8:	ffffe097          	auipc	ra,0xffffe
    800039cc:	094080e7          	jalr	148(ra) # 80001a5c <_ZdlPv>
    800039d0:	01813083          	ld	ra,24(sp)
    800039d4:	01013403          	ld	s0,16(sp)
    800039d8:	00813483          	ld	s1,8(sp)
    800039dc:	02010113          	addi	sp,sp,32
    800039e0:	00008067          	ret

00000000800039e4 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800039e4:	ff010113          	addi	sp,sp,-16
    800039e8:	00113423          	sd	ra,8(sp)
    800039ec:	00813023          	sd	s0,0(sp)
    800039f0:	01010413          	addi	s0,sp,16
    800039f4:	00007797          	auipc	a5,0x7
    800039f8:	8b478793          	addi	a5,a5,-1868 # 8000a2a8 <_ZTV16ProducerKeyborad+0x10>
    800039fc:	00f53023          	sd	a5,0(a0)
    80003a00:	ffffe097          	auipc	ra,0xffffe
    80003a04:	084080e7          	jalr	132(ra) # 80001a84 <_ZN6ThreadD1Ev>
    80003a08:	00813083          	ld	ra,8(sp)
    80003a0c:	00013403          	ld	s0,0(sp)
    80003a10:	01010113          	addi	sp,sp,16
    80003a14:	00008067          	ret

0000000080003a18 <_ZN16ProducerKeyboradD0Ev>:
    80003a18:	fe010113          	addi	sp,sp,-32
    80003a1c:	00113c23          	sd	ra,24(sp)
    80003a20:	00813823          	sd	s0,16(sp)
    80003a24:	00913423          	sd	s1,8(sp)
    80003a28:	02010413          	addi	s0,sp,32
    80003a2c:	00050493          	mv	s1,a0
    80003a30:	00007797          	auipc	a5,0x7
    80003a34:	87878793          	addi	a5,a5,-1928 # 8000a2a8 <_ZTV16ProducerKeyborad+0x10>
    80003a38:	00f53023          	sd	a5,0(a0)
    80003a3c:	ffffe097          	auipc	ra,0xffffe
    80003a40:	048080e7          	jalr	72(ra) # 80001a84 <_ZN6ThreadD1Ev>
    80003a44:	00048513          	mv	a0,s1
    80003a48:	ffffe097          	auipc	ra,0xffffe
    80003a4c:	014080e7          	jalr	20(ra) # 80001a5c <_ZdlPv>
    80003a50:	01813083          	ld	ra,24(sp)
    80003a54:	01013403          	ld	s0,16(sp)
    80003a58:	00813483          	ld	s1,8(sp)
    80003a5c:	02010113          	addi	sp,sp,32
    80003a60:	00008067          	ret

0000000080003a64 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80003a64:	ff010113          	addi	sp,sp,-16
    80003a68:	00113423          	sd	ra,8(sp)
    80003a6c:	00813023          	sd	s0,0(sp)
    80003a70:	01010413          	addi	s0,sp,16
    80003a74:	00007797          	auipc	a5,0x7
    80003a78:	85c78793          	addi	a5,a5,-1956 # 8000a2d0 <_ZTV8Producer+0x10>
    80003a7c:	00f53023          	sd	a5,0(a0)
    80003a80:	ffffe097          	auipc	ra,0xffffe
    80003a84:	004080e7          	jalr	4(ra) # 80001a84 <_ZN6ThreadD1Ev>
    80003a88:	00813083          	ld	ra,8(sp)
    80003a8c:	00013403          	ld	s0,0(sp)
    80003a90:	01010113          	addi	sp,sp,16
    80003a94:	00008067          	ret

0000000080003a98 <_ZN8ProducerD0Ev>:
    80003a98:	fe010113          	addi	sp,sp,-32
    80003a9c:	00113c23          	sd	ra,24(sp)
    80003aa0:	00813823          	sd	s0,16(sp)
    80003aa4:	00913423          	sd	s1,8(sp)
    80003aa8:	02010413          	addi	s0,sp,32
    80003aac:	00050493          	mv	s1,a0
    80003ab0:	00007797          	auipc	a5,0x7
    80003ab4:	82078793          	addi	a5,a5,-2016 # 8000a2d0 <_ZTV8Producer+0x10>
    80003ab8:	00f53023          	sd	a5,0(a0)
    80003abc:	ffffe097          	auipc	ra,0xffffe
    80003ac0:	fc8080e7          	jalr	-56(ra) # 80001a84 <_ZN6ThreadD1Ev>
    80003ac4:	00048513          	mv	a0,s1
    80003ac8:	ffffe097          	auipc	ra,0xffffe
    80003acc:	f94080e7          	jalr	-108(ra) # 80001a5c <_ZdlPv>
    80003ad0:	01813083          	ld	ra,24(sp)
    80003ad4:	01013403          	ld	s0,16(sp)
    80003ad8:	00813483          	ld	s1,8(sp)
    80003adc:	02010113          	addi	sp,sp,32
    80003ae0:	00008067          	ret

0000000080003ae4 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003ae4:	fe010113          	addi	sp,sp,-32
    80003ae8:	00113c23          	sd	ra,24(sp)
    80003aec:	00813823          	sd	s0,16(sp)
    80003af0:	00913423          	sd	s1,8(sp)
    80003af4:	02010413          	addi	s0,sp,32
    80003af8:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80003afc:	ffffe097          	auipc	ra,0xffffe
    80003b00:	aac080e7          	jalr	-1364(ra) # 800015a8 <_Z4getcv>
    80003b04:	0005059b          	sext.w	a1,a0
    80003b08:	01b00793          	li	a5,27
    80003b0c:	00f58c63          	beq	a1,a5,80003b24 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80003b10:	0204b783          	ld	a5,32(s1)
    80003b14:	0087b503          	ld	a0,8(a5)
    80003b18:	00001097          	auipc	ra,0x1
    80003b1c:	36c080e7          	jalr	876(ra) # 80004e84 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80003b20:	fddff06f          	j	80003afc <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80003b24:	00100793          	li	a5,1
    80003b28:	00007717          	auipc	a4,0x7
    80003b2c:	92f72023          	sw	a5,-1760(a4) # 8000a448 <_ZL9threadEnd>
        td->buffer->put('!');
    80003b30:	0204b783          	ld	a5,32(s1)
    80003b34:	02100593          	li	a1,33
    80003b38:	0087b503          	ld	a0,8(a5)
    80003b3c:	00001097          	auipc	ra,0x1
    80003b40:	348080e7          	jalr	840(ra) # 80004e84 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80003b44:	0204b783          	ld	a5,32(s1)
    80003b48:	0107b503          	ld	a0,16(a5)
    80003b4c:	ffffe097          	auipc	ra,0xffffe
    80003b50:	e44080e7          	jalr	-444(ra) # 80001990 <_ZN9Semaphore6signalEv>
    }
    80003b54:	01813083          	ld	ra,24(sp)
    80003b58:	01013403          	ld	s0,16(sp)
    80003b5c:	00813483          	ld	s1,8(sp)
    80003b60:	02010113          	addi	sp,sp,32
    80003b64:	00008067          	ret

0000000080003b68 <_ZN8Producer3runEv>:
    void run() override {
    80003b68:	fe010113          	addi	sp,sp,-32
    80003b6c:	00113c23          	sd	ra,24(sp)
    80003b70:	00813823          	sd	s0,16(sp)
    80003b74:	00913423          	sd	s1,8(sp)
    80003b78:	01213023          	sd	s2,0(sp)
    80003b7c:	02010413          	addi	s0,sp,32
    80003b80:	00050493          	mv	s1,a0
        int i = 0;
    80003b84:	00000913          	li	s2,0
        while (!threadEnd) {
    80003b88:	00007797          	auipc	a5,0x7
    80003b8c:	8c07a783          	lw	a5,-1856(a5) # 8000a448 <_ZL9threadEnd>
    80003b90:	04079263          	bnez	a5,80003bd4 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80003b94:	0204b783          	ld	a5,32(s1)
    80003b98:	0007a583          	lw	a1,0(a5)
    80003b9c:	0305859b          	addiw	a1,a1,48
    80003ba0:	0087b503          	ld	a0,8(a5)
    80003ba4:	00001097          	auipc	ra,0x1
    80003ba8:	2e0080e7          	jalr	736(ra) # 80004e84 <_ZN9BufferCPP3putEi>
            i++;
    80003bac:	0019071b          	addiw	a4,s2,1
    80003bb0:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80003bb4:	0204b783          	ld	a5,32(s1)
    80003bb8:	0007a783          	lw	a5,0(a5)
    80003bbc:	00e787bb          	addw	a5,a5,a4
    80003bc0:	00500513          	li	a0,5
    80003bc4:	02a7e53b          	remw	a0,a5,a0
    80003bc8:	ffffe097          	auipc	ra,0xffffe
    80003bcc:	d3c080e7          	jalr	-708(ra) # 80001904 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80003bd0:	fb9ff06f          	j	80003b88 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80003bd4:	0204b783          	ld	a5,32(s1)
    80003bd8:	0107b503          	ld	a0,16(a5)
    80003bdc:	ffffe097          	auipc	ra,0xffffe
    80003be0:	db4080e7          	jalr	-588(ra) # 80001990 <_ZN9Semaphore6signalEv>
    }
    80003be4:	01813083          	ld	ra,24(sp)
    80003be8:	01013403          	ld	s0,16(sp)
    80003bec:	00813483          	ld	s1,8(sp)
    80003bf0:	00013903          	ld	s2,0(sp)
    80003bf4:	02010113          	addi	sp,sp,32
    80003bf8:	00008067          	ret

0000000080003bfc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003bfc:	fe010113          	addi	sp,sp,-32
    80003c00:	00113c23          	sd	ra,24(sp)
    80003c04:	00813823          	sd	s0,16(sp)
    80003c08:	00913423          	sd	s1,8(sp)
    80003c0c:	01213023          	sd	s2,0(sp)
    80003c10:	02010413          	addi	s0,sp,32
    80003c14:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003c18:	00100793          	li	a5,1
    80003c1c:	02a7f863          	bgeu	a5,a0,80003c4c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003c20:	00a00793          	li	a5,10
    80003c24:	02f577b3          	remu	a5,a0,a5
    80003c28:	02078e63          	beqz	a5,80003c64 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003c2c:	fff48513          	addi	a0,s1,-1
    80003c30:	00000097          	auipc	ra,0x0
    80003c34:	fcc080e7          	jalr	-52(ra) # 80003bfc <_ZL9fibonaccim>
    80003c38:	00050913          	mv	s2,a0
    80003c3c:	ffe48513          	addi	a0,s1,-2
    80003c40:	00000097          	auipc	ra,0x0
    80003c44:	fbc080e7          	jalr	-68(ra) # 80003bfc <_ZL9fibonaccim>
    80003c48:	00a90533          	add	a0,s2,a0
}
    80003c4c:	01813083          	ld	ra,24(sp)
    80003c50:	01013403          	ld	s0,16(sp)
    80003c54:	00813483          	ld	s1,8(sp)
    80003c58:	00013903          	ld	s2,0(sp)
    80003c5c:	02010113          	addi	sp,sp,32
    80003c60:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003c64:	ffffe097          	auipc	ra,0xffffe
    80003c68:	810080e7          	jalr	-2032(ra) # 80001474 <_Z15thread_dispatchv>
    80003c6c:	fc1ff06f          	j	80003c2c <_ZL9fibonaccim+0x30>

0000000080003c70 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003c70:	fe010113          	addi	sp,sp,-32
    80003c74:	00113c23          	sd	ra,24(sp)
    80003c78:	00813823          	sd	s0,16(sp)
    80003c7c:	00913423          	sd	s1,8(sp)
    80003c80:	01213023          	sd	s2,0(sp)
    80003c84:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003c88:	00a00493          	li	s1,10
    80003c8c:	0400006f          	j	80003ccc <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003c90:	00004517          	auipc	a0,0x4
    80003c94:	4e850513          	addi	a0,a0,1256 # 80008178 <CONSOLE_STATUS+0x168>
    80003c98:	00001097          	auipc	ra,0x1
    80003c9c:	dc8080e7          	jalr	-568(ra) # 80004a60 <_Z11printStringPKc>
    80003ca0:	00000613          	li	a2,0
    80003ca4:	00a00593          	li	a1,10
    80003ca8:	00048513          	mv	a0,s1
    80003cac:	00001097          	auipc	ra,0x1
    80003cb0:	f64080e7          	jalr	-156(ra) # 80004c10 <_Z8printIntiii>
    80003cb4:	00004517          	auipc	a0,0x4
    80003cb8:	6e450513          	addi	a0,a0,1764 # 80008398 <CONSOLE_STATUS+0x388>
    80003cbc:	00001097          	auipc	ra,0x1
    80003cc0:	da4080e7          	jalr	-604(ra) # 80004a60 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003cc4:	0014849b          	addiw	s1,s1,1
    80003cc8:	0ff4f493          	andi	s1,s1,255
    80003ccc:	00c00793          	li	a5,12
    80003cd0:	fc97f0e3          	bgeu	a5,s1,80003c90 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003cd4:	00004517          	auipc	a0,0x4
    80003cd8:	4ac50513          	addi	a0,a0,1196 # 80008180 <CONSOLE_STATUS+0x170>
    80003cdc:	00001097          	auipc	ra,0x1
    80003ce0:	d84080e7          	jalr	-636(ra) # 80004a60 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003ce4:	00500313          	li	t1,5
    thread_dispatch();
    80003ce8:	ffffd097          	auipc	ra,0xffffd
    80003cec:	78c080e7          	jalr	1932(ra) # 80001474 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003cf0:	01000513          	li	a0,16
    80003cf4:	00000097          	auipc	ra,0x0
    80003cf8:	f08080e7          	jalr	-248(ra) # 80003bfc <_ZL9fibonaccim>
    80003cfc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003d00:	00004517          	auipc	a0,0x4
    80003d04:	49050513          	addi	a0,a0,1168 # 80008190 <CONSOLE_STATUS+0x180>
    80003d08:	00001097          	auipc	ra,0x1
    80003d0c:	d58080e7          	jalr	-680(ra) # 80004a60 <_Z11printStringPKc>
    80003d10:	00000613          	li	a2,0
    80003d14:	00a00593          	li	a1,10
    80003d18:	0009051b          	sext.w	a0,s2
    80003d1c:	00001097          	auipc	ra,0x1
    80003d20:	ef4080e7          	jalr	-268(ra) # 80004c10 <_Z8printIntiii>
    80003d24:	00004517          	auipc	a0,0x4
    80003d28:	67450513          	addi	a0,a0,1652 # 80008398 <CONSOLE_STATUS+0x388>
    80003d2c:	00001097          	auipc	ra,0x1
    80003d30:	d34080e7          	jalr	-716(ra) # 80004a60 <_Z11printStringPKc>
    80003d34:	0400006f          	j	80003d74 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003d38:	00004517          	auipc	a0,0x4
    80003d3c:	44050513          	addi	a0,a0,1088 # 80008178 <CONSOLE_STATUS+0x168>
    80003d40:	00001097          	auipc	ra,0x1
    80003d44:	d20080e7          	jalr	-736(ra) # 80004a60 <_Z11printStringPKc>
    80003d48:	00000613          	li	a2,0
    80003d4c:	00a00593          	li	a1,10
    80003d50:	00048513          	mv	a0,s1
    80003d54:	00001097          	auipc	ra,0x1
    80003d58:	ebc080e7          	jalr	-324(ra) # 80004c10 <_Z8printIntiii>
    80003d5c:	00004517          	auipc	a0,0x4
    80003d60:	63c50513          	addi	a0,a0,1596 # 80008398 <CONSOLE_STATUS+0x388>
    80003d64:	00001097          	auipc	ra,0x1
    80003d68:	cfc080e7          	jalr	-772(ra) # 80004a60 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003d6c:	0014849b          	addiw	s1,s1,1
    80003d70:	0ff4f493          	andi	s1,s1,255
    80003d74:	00f00793          	li	a5,15
    80003d78:	fc97f0e3          	bgeu	a5,s1,80003d38 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003d7c:	00004517          	auipc	a0,0x4
    80003d80:	42450513          	addi	a0,a0,1060 # 800081a0 <CONSOLE_STATUS+0x190>
    80003d84:	00001097          	auipc	ra,0x1
    80003d88:	cdc080e7          	jalr	-804(ra) # 80004a60 <_Z11printStringPKc>
    finishedD = true;
    80003d8c:	00100793          	li	a5,1
    80003d90:	00006717          	auipc	a4,0x6
    80003d94:	6cf70423          	sb	a5,1736(a4) # 8000a458 <_ZL9finishedD>
    thread_dispatch();
    80003d98:	ffffd097          	auipc	ra,0xffffd
    80003d9c:	6dc080e7          	jalr	1756(ra) # 80001474 <_Z15thread_dispatchv>
}
    80003da0:	01813083          	ld	ra,24(sp)
    80003da4:	01013403          	ld	s0,16(sp)
    80003da8:	00813483          	ld	s1,8(sp)
    80003dac:	00013903          	ld	s2,0(sp)
    80003db0:	02010113          	addi	sp,sp,32
    80003db4:	00008067          	ret

0000000080003db8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003db8:	fe010113          	addi	sp,sp,-32
    80003dbc:	00113c23          	sd	ra,24(sp)
    80003dc0:	00813823          	sd	s0,16(sp)
    80003dc4:	00913423          	sd	s1,8(sp)
    80003dc8:	01213023          	sd	s2,0(sp)
    80003dcc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003dd0:	00000493          	li	s1,0
    80003dd4:	0400006f          	j	80003e14 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003dd8:	00004517          	auipc	a0,0x4
    80003ddc:	37050513          	addi	a0,a0,880 # 80008148 <CONSOLE_STATUS+0x138>
    80003de0:	00001097          	auipc	ra,0x1
    80003de4:	c80080e7          	jalr	-896(ra) # 80004a60 <_Z11printStringPKc>
    80003de8:	00000613          	li	a2,0
    80003dec:	00a00593          	li	a1,10
    80003df0:	00048513          	mv	a0,s1
    80003df4:	00001097          	auipc	ra,0x1
    80003df8:	e1c080e7          	jalr	-484(ra) # 80004c10 <_Z8printIntiii>
    80003dfc:	00004517          	auipc	a0,0x4
    80003e00:	59c50513          	addi	a0,a0,1436 # 80008398 <CONSOLE_STATUS+0x388>
    80003e04:	00001097          	auipc	ra,0x1
    80003e08:	c5c080e7          	jalr	-932(ra) # 80004a60 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003e0c:	0014849b          	addiw	s1,s1,1
    80003e10:	0ff4f493          	andi	s1,s1,255
    80003e14:	00200793          	li	a5,2
    80003e18:	fc97f0e3          	bgeu	a5,s1,80003dd8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003e1c:	00004517          	auipc	a0,0x4
    80003e20:	33450513          	addi	a0,a0,820 # 80008150 <CONSOLE_STATUS+0x140>
    80003e24:	00001097          	auipc	ra,0x1
    80003e28:	c3c080e7          	jalr	-964(ra) # 80004a60 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003e2c:	00700313          	li	t1,7
    thread_dispatch();
    80003e30:	ffffd097          	auipc	ra,0xffffd
    80003e34:	644080e7          	jalr	1604(ra) # 80001474 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003e38:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003e3c:	00004517          	auipc	a0,0x4
    80003e40:	32450513          	addi	a0,a0,804 # 80008160 <CONSOLE_STATUS+0x150>
    80003e44:	00001097          	auipc	ra,0x1
    80003e48:	c1c080e7          	jalr	-996(ra) # 80004a60 <_Z11printStringPKc>
    80003e4c:	00000613          	li	a2,0
    80003e50:	00a00593          	li	a1,10
    80003e54:	0009051b          	sext.w	a0,s2
    80003e58:	00001097          	auipc	ra,0x1
    80003e5c:	db8080e7          	jalr	-584(ra) # 80004c10 <_Z8printIntiii>
    80003e60:	00004517          	auipc	a0,0x4
    80003e64:	53850513          	addi	a0,a0,1336 # 80008398 <CONSOLE_STATUS+0x388>
    80003e68:	00001097          	auipc	ra,0x1
    80003e6c:	bf8080e7          	jalr	-1032(ra) # 80004a60 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003e70:	00c00513          	li	a0,12
    80003e74:	00000097          	auipc	ra,0x0
    80003e78:	d88080e7          	jalr	-632(ra) # 80003bfc <_ZL9fibonaccim>
    80003e7c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003e80:	00004517          	auipc	a0,0x4
    80003e84:	2e850513          	addi	a0,a0,744 # 80008168 <CONSOLE_STATUS+0x158>
    80003e88:	00001097          	auipc	ra,0x1
    80003e8c:	bd8080e7          	jalr	-1064(ra) # 80004a60 <_Z11printStringPKc>
    80003e90:	00000613          	li	a2,0
    80003e94:	00a00593          	li	a1,10
    80003e98:	0009051b          	sext.w	a0,s2
    80003e9c:	00001097          	auipc	ra,0x1
    80003ea0:	d74080e7          	jalr	-652(ra) # 80004c10 <_Z8printIntiii>
    80003ea4:	00004517          	auipc	a0,0x4
    80003ea8:	4f450513          	addi	a0,a0,1268 # 80008398 <CONSOLE_STATUS+0x388>
    80003eac:	00001097          	auipc	ra,0x1
    80003eb0:	bb4080e7          	jalr	-1100(ra) # 80004a60 <_Z11printStringPKc>
    80003eb4:	0400006f          	j	80003ef4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003eb8:	00004517          	auipc	a0,0x4
    80003ebc:	29050513          	addi	a0,a0,656 # 80008148 <CONSOLE_STATUS+0x138>
    80003ec0:	00001097          	auipc	ra,0x1
    80003ec4:	ba0080e7          	jalr	-1120(ra) # 80004a60 <_Z11printStringPKc>
    80003ec8:	00000613          	li	a2,0
    80003ecc:	00a00593          	li	a1,10
    80003ed0:	00048513          	mv	a0,s1
    80003ed4:	00001097          	auipc	ra,0x1
    80003ed8:	d3c080e7          	jalr	-708(ra) # 80004c10 <_Z8printIntiii>
    80003edc:	00004517          	auipc	a0,0x4
    80003ee0:	4bc50513          	addi	a0,a0,1212 # 80008398 <CONSOLE_STATUS+0x388>
    80003ee4:	00001097          	auipc	ra,0x1
    80003ee8:	b7c080e7          	jalr	-1156(ra) # 80004a60 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003eec:	0014849b          	addiw	s1,s1,1
    80003ef0:	0ff4f493          	andi	s1,s1,255
    80003ef4:	00500793          	li	a5,5
    80003ef8:	fc97f0e3          	bgeu	a5,s1,80003eb8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80003efc:	00004517          	auipc	a0,0x4
    80003f00:	22450513          	addi	a0,a0,548 # 80008120 <CONSOLE_STATUS+0x110>
    80003f04:	00001097          	auipc	ra,0x1
    80003f08:	b5c080e7          	jalr	-1188(ra) # 80004a60 <_Z11printStringPKc>
    finishedC = true;
    80003f0c:	00100793          	li	a5,1
    80003f10:	00006717          	auipc	a4,0x6
    80003f14:	54f704a3          	sb	a5,1353(a4) # 8000a459 <_ZL9finishedC>
    thread_dispatch();
    80003f18:	ffffd097          	auipc	ra,0xffffd
    80003f1c:	55c080e7          	jalr	1372(ra) # 80001474 <_Z15thread_dispatchv>
}
    80003f20:	01813083          	ld	ra,24(sp)
    80003f24:	01013403          	ld	s0,16(sp)
    80003f28:	00813483          	ld	s1,8(sp)
    80003f2c:	00013903          	ld	s2,0(sp)
    80003f30:	02010113          	addi	sp,sp,32
    80003f34:	00008067          	ret

0000000080003f38 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003f38:	fe010113          	addi	sp,sp,-32
    80003f3c:	00113c23          	sd	ra,24(sp)
    80003f40:	00813823          	sd	s0,16(sp)
    80003f44:	00913423          	sd	s1,8(sp)
    80003f48:	01213023          	sd	s2,0(sp)
    80003f4c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003f50:	00000913          	li	s2,0
    80003f54:	0380006f          	j	80003f8c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80003f58:	ffffd097          	auipc	ra,0xffffd
    80003f5c:	51c080e7          	jalr	1308(ra) # 80001474 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003f60:	00148493          	addi	s1,s1,1
    80003f64:	000027b7          	lui	a5,0x2
    80003f68:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003f6c:	0097ee63          	bltu	a5,s1,80003f88 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003f70:	00000713          	li	a4,0
    80003f74:	000077b7          	lui	a5,0x7
    80003f78:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003f7c:	fce7eee3          	bltu	a5,a4,80003f58 <_ZL11workerBodyBPv+0x20>
    80003f80:	00170713          	addi	a4,a4,1
    80003f84:	ff1ff06f          	j	80003f74 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003f88:	00190913          	addi	s2,s2,1
    80003f8c:	00f00793          	li	a5,15
    80003f90:	0527e063          	bltu	a5,s2,80003fd0 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003f94:	00004517          	auipc	a0,0x4
    80003f98:	19c50513          	addi	a0,a0,412 # 80008130 <CONSOLE_STATUS+0x120>
    80003f9c:	00001097          	auipc	ra,0x1
    80003fa0:	ac4080e7          	jalr	-1340(ra) # 80004a60 <_Z11printStringPKc>
    80003fa4:	00000613          	li	a2,0
    80003fa8:	00a00593          	li	a1,10
    80003fac:	0009051b          	sext.w	a0,s2
    80003fb0:	00001097          	auipc	ra,0x1
    80003fb4:	c60080e7          	jalr	-928(ra) # 80004c10 <_Z8printIntiii>
    80003fb8:	00004517          	auipc	a0,0x4
    80003fbc:	3e050513          	addi	a0,a0,992 # 80008398 <CONSOLE_STATUS+0x388>
    80003fc0:	00001097          	auipc	ra,0x1
    80003fc4:	aa0080e7          	jalr	-1376(ra) # 80004a60 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003fc8:	00000493          	li	s1,0
    80003fcc:	f99ff06f          	j	80003f64 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80003fd0:	00004517          	auipc	a0,0x4
    80003fd4:	16850513          	addi	a0,a0,360 # 80008138 <CONSOLE_STATUS+0x128>
    80003fd8:	00001097          	auipc	ra,0x1
    80003fdc:	a88080e7          	jalr	-1400(ra) # 80004a60 <_Z11printStringPKc>
    finishedB = true;
    80003fe0:	00100793          	li	a5,1
    80003fe4:	00006717          	auipc	a4,0x6
    80003fe8:	46f70b23          	sb	a5,1142(a4) # 8000a45a <_ZL9finishedB>
    thread_dispatch();
    80003fec:	ffffd097          	auipc	ra,0xffffd
    80003ff0:	488080e7          	jalr	1160(ra) # 80001474 <_Z15thread_dispatchv>
}
    80003ff4:	01813083          	ld	ra,24(sp)
    80003ff8:	01013403          	ld	s0,16(sp)
    80003ffc:	00813483          	ld	s1,8(sp)
    80004000:	00013903          	ld	s2,0(sp)
    80004004:	02010113          	addi	sp,sp,32
    80004008:	00008067          	ret

000000008000400c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000400c:	fe010113          	addi	sp,sp,-32
    80004010:	00113c23          	sd	ra,24(sp)
    80004014:	00813823          	sd	s0,16(sp)
    80004018:	00913423          	sd	s1,8(sp)
    8000401c:	01213023          	sd	s2,0(sp)
    80004020:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004024:	00000913          	li	s2,0
    80004028:	0380006f          	j	80004060 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000402c:	ffffd097          	auipc	ra,0xffffd
    80004030:	448080e7          	jalr	1096(ra) # 80001474 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004034:	00148493          	addi	s1,s1,1
    80004038:	000027b7          	lui	a5,0x2
    8000403c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004040:	0097ee63          	bltu	a5,s1,8000405c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004044:	00000713          	li	a4,0
    80004048:	000077b7          	lui	a5,0x7
    8000404c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004050:	fce7eee3          	bltu	a5,a4,8000402c <_ZL11workerBodyAPv+0x20>
    80004054:	00170713          	addi	a4,a4,1
    80004058:	ff1ff06f          	j	80004048 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000405c:	00190913          	addi	s2,s2,1
    80004060:	00900793          	li	a5,9
    80004064:	0527e063          	bltu	a5,s2,800040a4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004068:	00004517          	auipc	a0,0x4
    8000406c:	0b050513          	addi	a0,a0,176 # 80008118 <CONSOLE_STATUS+0x108>
    80004070:	00001097          	auipc	ra,0x1
    80004074:	9f0080e7          	jalr	-1552(ra) # 80004a60 <_Z11printStringPKc>
    80004078:	00000613          	li	a2,0
    8000407c:	00a00593          	li	a1,10
    80004080:	0009051b          	sext.w	a0,s2
    80004084:	00001097          	auipc	ra,0x1
    80004088:	b8c080e7          	jalr	-1140(ra) # 80004c10 <_Z8printIntiii>
    8000408c:	00004517          	auipc	a0,0x4
    80004090:	30c50513          	addi	a0,a0,780 # 80008398 <CONSOLE_STATUS+0x388>
    80004094:	00001097          	auipc	ra,0x1
    80004098:	9cc080e7          	jalr	-1588(ra) # 80004a60 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000409c:	00000493          	li	s1,0
    800040a0:	f99ff06f          	j	80004038 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800040a4:	00004517          	auipc	a0,0x4
    800040a8:	07c50513          	addi	a0,a0,124 # 80008120 <CONSOLE_STATUS+0x110>
    800040ac:	00001097          	auipc	ra,0x1
    800040b0:	9b4080e7          	jalr	-1612(ra) # 80004a60 <_Z11printStringPKc>
    finishedA = true;
    800040b4:	00100793          	li	a5,1
    800040b8:	00006717          	auipc	a4,0x6
    800040bc:	3af701a3          	sb	a5,931(a4) # 8000a45b <_ZL9finishedA>
}
    800040c0:	01813083          	ld	ra,24(sp)
    800040c4:	01013403          	ld	s0,16(sp)
    800040c8:	00813483          	ld	s1,8(sp)
    800040cc:	00013903          	ld	s2,0(sp)
    800040d0:	02010113          	addi	sp,sp,32
    800040d4:	00008067          	ret

00000000800040d8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800040d8:	fd010113          	addi	sp,sp,-48
    800040dc:	02113423          	sd	ra,40(sp)
    800040e0:	02813023          	sd	s0,32(sp)
    800040e4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800040e8:	00000613          	li	a2,0
    800040ec:	00000597          	auipc	a1,0x0
    800040f0:	f2058593          	addi	a1,a1,-224 # 8000400c <_ZL11workerBodyAPv>
    800040f4:	fd040513          	addi	a0,s0,-48
    800040f8:	ffffd097          	auipc	ra,0xffffd
    800040fc:	2dc080e7          	jalr	732(ra) # 800013d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004100:	00004517          	auipc	a0,0x4
    80004104:	0b050513          	addi	a0,a0,176 # 800081b0 <CONSOLE_STATUS+0x1a0>
    80004108:	00001097          	auipc	ra,0x1
    8000410c:	958080e7          	jalr	-1704(ra) # 80004a60 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004110:	00000613          	li	a2,0
    80004114:	00000597          	auipc	a1,0x0
    80004118:	e2458593          	addi	a1,a1,-476 # 80003f38 <_ZL11workerBodyBPv>
    8000411c:	fd840513          	addi	a0,s0,-40
    80004120:	ffffd097          	auipc	ra,0xffffd
    80004124:	2b4080e7          	jalr	692(ra) # 800013d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004128:	00004517          	auipc	a0,0x4
    8000412c:	0a050513          	addi	a0,a0,160 # 800081c8 <CONSOLE_STATUS+0x1b8>
    80004130:	00001097          	auipc	ra,0x1
    80004134:	930080e7          	jalr	-1744(ra) # 80004a60 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004138:	00000613          	li	a2,0
    8000413c:	00000597          	auipc	a1,0x0
    80004140:	c7c58593          	addi	a1,a1,-900 # 80003db8 <_ZL11workerBodyCPv>
    80004144:	fe040513          	addi	a0,s0,-32
    80004148:	ffffd097          	auipc	ra,0xffffd
    8000414c:	28c080e7          	jalr	652(ra) # 800013d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004150:	00004517          	auipc	a0,0x4
    80004154:	09050513          	addi	a0,a0,144 # 800081e0 <CONSOLE_STATUS+0x1d0>
    80004158:	00001097          	auipc	ra,0x1
    8000415c:	908080e7          	jalr	-1784(ra) # 80004a60 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004160:	00000613          	li	a2,0
    80004164:	00000597          	auipc	a1,0x0
    80004168:	b0c58593          	addi	a1,a1,-1268 # 80003c70 <_ZL11workerBodyDPv>
    8000416c:	fe840513          	addi	a0,s0,-24
    80004170:	ffffd097          	auipc	ra,0xffffd
    80004174:	264080e7          	jalr	612(ra) # 800013d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004178:	00004517          	auipc	a0,0x4
    8000417c:	08050513          	addi	a0,a0,128 # 800081f8 <CONSOLE_STATUS+0x1e8>
    80004180:	00001097          	auipc	ra,0x1
    80004184:	8e0080e7          	jalr	-1824(ra) # 80004a60 <_Z11printStringPKc>
    80004188:	00c0006f          	j	80004194 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000418c:	ffffd097          	auipc	ra,0xffffd
    80004190:	2e8080e7          	jalr	744(ra) # 80001474 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004194:	00006797          	auipc	a5,0x6
    80004198:	2c77c783          	lbu	a5,711(a5) # 8000a45b <_ZL9finishedA>
    8000419c:	fe0788e3          	beqz	a5,8000418c <_Z18Threads_C_API_testv+0xb4>
    800041a0:	00006797          	auipc	a5,0x6
    800041a4:	2ba7c783          	lbu	a5,698(a5) # 8000a45a <_ZL9finishedB>
    800041a8:	fe0782e3          	beqz	a5,8000418c <_Z18Threads_C_API_testv+0xb4>
    800041ac:	00006797          	auipc	a5,0x6
    800041b0:	2ad7c783          	lbu	a5,685(a5) # 8000a459 <_ZL9finishedC>
    800041b4:	fc078ce3          	beqz	a5,8000418c <_Z18Threads_C_API_testv+0xb4>
    800041b8:	00006797          	auipc	a5,0x6
    800041bc:	2a07c783          	lbu	a5,672(a5) # 8000a458 <_ZL9finishedD>
    800041c0:	fc0786e3          	beqz	a5,8000418c <_Z18Threads_C_API_testv+0xb4>
    }

}
    800041c4:	02813083          	ld	ra,40(sp)
    800041c8:	02013403          	ld	s0,32(sp)
    800041cc:	03010113          	addi	sp,sp,48
    800041d0:	00008067          	ret

00000000800041d4 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800041d4:	fd010113          	addi	sp,sp,-48
    800041d8:	02113423          	sd	ra,40(sp)
    800041dc:	02813023          	sd	s0,32(sp)
    800041e0:	00913c23          	sd	s1,24(sp)
    800041e4:	01213823          	sd	s2,16(sp)
    800041e8:	01313423          	sd	s3,8(sp)
    800041ec:	03010413          	addi	s0,sp,48
    800041f0:	00050993          	mv	s3,a0
    800041f4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800041f8:	00000913          	li	s2,0
    800041fc:	00c0006f          	j	80004208 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004200:	ffffd097          	auipc	ra,0xffffd
    80004204:	6dc080e7          	jalr	1756(ra) # 800018dc <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004208:	ffffd097          	auipc	ra,0xffffd
    8000420c:	3a0080e7          	jalr	928(ra) # 800015a8 <_Z4getcv>
    80004210:	0005059b          	sext.w	a1,a0
    80004214:	01b00793          	li	a5,27
    80004218:	02f58a63          	beq	a1,a5,8000424c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    8000421c:	0084b503          	ld	a0,8(s1)
    80004220:	00001097          	auipc	ra,0x1
    80004224:	c64080e7          	jalr	-924(ra) # 80004e84 <_ZN9BufferCPP3putEi>
        i++;
    80004228:	0019071b          	addiw	a4,s2,1
    8000422c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004230:	0004a683          	lw	a3,0(s1)
    80004234:	0026979b          	slliw	a5,a3,0x2
    80004238:	00d787bb          	addw	a5,a5,a3
    8000423c:	0017979b          	slliw	a5,a5,0x1
    80004240:	02f767bb          	remw	a5,a4,a5
    80004244:	fc0792e3          	bnez	a5,80004208 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004248:	fb9ff06f          	j	80004200 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    8000424c:	00100793          	li	a5,1
    80004250:	00006717          	auipc	a4,0x6
    80004254:	20f72823          	sw	a5,528(a4) # 8000a460 <_ZL9threadEnd>
    td->buffer->put('!');
    80004258:	0209b783          	ld	a5,32(s3)
    8000425c:	02100593          	li	a1,33
    80004260:	0087b503          	ld	a0,8(a5)
    80004264:	00001097          	auipc	ra,0x1
    80004268:	c20080e7          	jalr	-992(ra) # 80004e84 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    8000426c:	0104b503          	ld	a0,16(s1)
    80004270:	ffffd097          	auipc	ra,0xffffd
    80004274:	720080e7          	jalr	1824(ra) # 80001990 <_ZN9Semaphore6signalEv>
}
    80004278:	02813083          	ld	ra,40(sp)
    8000427c:	02013403          	ld	s0,32(sp)
    80004280:	01813483          	ld	s1,24(sp)
    80004284:	01013903          	ld	s2,16(sp)
    80004288:	00813983          	ld	s3,8(sp)
    8000428c:	03010113          	addi	sp,sp,48
    80004290:	00008067          	ret

0000000080004294 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004294:	fe010113          	addi	sp,sp,-32
    80004298:	00113c23          	sd	ra,24(sp)
    8000429c:	00813823          	sd	s0,16(sp)
    800042a0:	00913423          	sd	s1,8(sp)
    800042a4:	01213023          	sd	s2,0(sp)
    800042a8:	02010413          	addi	s0,sp,32
    800042ac:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800042b0:	00000913          	li	s2,0
    800042b4:	00c0006f          	j	800042c0 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800042b8:	ffffd097          	auipc	ra,0xffffd
    800042bc:	624080e7          	jalr	1572(ra) # 800018dc <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800042c0:	00006797          	auipc	a5,0x6
    800042c4:	1a07a783          	lw	a5,416(a5) # 8000a460 <_ZL9threadEnd>
    800042c8:	02079e63          	bnez	a5,80004304 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800042cc:	0004a583          	lw	a1,0(s1)
    800042d0:	0305859b          	addiw	a1,a1,48
    800042d4:	0084b503          	ld	a0,8(s1)
    800042d8:	00001097          	auipc	ra,0x1
    800042dc:	bac080e7          	jalr	-1108(ra) # 80004e84 <_ZN9BufferCPP3putEi>
        i++;
    800042e0:	0019071b          	addiw	a4,s2,1
    800042e4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800042e8:	0004a683          	lw	a3,0(s1)
    800042ec:	0026979b          	slliw	a5,a3,0x2
    800042f0:	00d787bb          	addw	a5,a5,a3
    800042f4:	0017979b          	slliw	a5,a5,0x1
    800042f8:	02f767bb          	remw	a5,a4,a5
    800042fc:	fc0792e3          	bnez	a5,800042c0 <_ZN12ProducerSync8producerEPv+0x2c>
    80004300:	fb9ff06f          	j	800042b8 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004304:	0104b503          	ld	a0,16(s1)
    80004308:	ffffd097          	auipc	ra,0xffffd
    8000430c:	688080e7          	jalr	1672(ra) # 80001990 <_ZN9Semaphore6signalEv>
}
    80004310:	01813083          	ld	ra,24(sp)
    80004314:	01013403          	ld	s0,16(sp)
    80004318:	00813483          	ld	s1,8(sp)
    8000431c:	00013903          	ld	s2,0(sp)
    80004320:	02010113          	addi	sp,sp,32
    80004324:	00008067          	ret

0000000080004328 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004328:	fd010113          	addi	sp,sp,-48
    8000432c:	02113423          	sd	ra,40(sp)
    80004330:	02813023          	sd	s0,32(sp)
    80004334:	00913c23          	sd	s1,24(sp)
    80004338:	01213823          	sd	s2,16(sp)
    8000433c:	01313423          	sd	s3,8(sp)
    80004340:	01413023          	sd	s4,0(sp)
    80004344:	03010413          	addi	s0,sp,48
    80004348:	00050993          	mv	s3,a0
    8000434c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004350:	00000a13          	li	s4,0
    80004354:	01c0006f          	j	80004370 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004358:	ffffd097          	auipc	ra,0xffffd
    8000435c:	584080e7          	jalr	1412(ra) # 800018dc <_ZN6Thread8dispatchEv>
    80004360:	0500006f          	j	800043b0 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004364:	00a00513          	li	a0,10
    80004368:	ffffd097          	auipc	ra,0xffffd
    8000436c:	268080e7          	jalr	616(ra) # 800015d0 <_Z4putcc>
    while (!threadEnd) {
    80004370:	00006797          	auipc	a5,0x6
    80004374:	0f07a783          	lw	a5,240(a5) # 8000a460 <_ZL9threadEnd>
    80004378:	06079263          	bnez	a5,800043dc <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    8000437c:	00893503          	ld	a0,8(s2)
    80004380:	00001097          	auipc	ra,0x1
    80004384:	b94080e7          	jalr	-1132(ra) # 80004f14 <_ZN9BufferCPP3getEv>
        i++;
    80004388:	001a049b          	addiw	s1,s4,1
    8000438c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004390:	0ff57513          	andi	a0,a0,255
    80004394:	ffffd097          	auipc	ra,0xffffd
    80004398:	23c080e7          	jalr	572(ra) # 800015d0 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000439c:	00092703          	lw	a4,0(s2)
    800043a0:	0027179b          	slliw	a5,a4,0x2
    800043a4:	00e787bb          	addw	a5,a5,a4
    800043a8:	02f4e7bb          	remw	a5,s1,a5
    800043ac:	fa0786e3          	beqz	a5,80004358 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800043b0:	05000793          	li	a5,80
    800043b4:	02f4e4bb          	remw	s1,s1,a5
    800043b8:	fa049ce3          	bnez	s1,80004370 <_ZN12ConsumerSync8consumerEPv+0x48>
    800043bc:	fa9ff06f          	j	80004364 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800043c0:	0209b783          	ld	a5,32(s3)
    800043c4:	0087b503          	ld	a0,8(a5)
    800043c8:	00001097          	auipc	ra,0x1
    800043cc:	b4c080e7          	jalr	-1204(ra) # 80004f14 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800043d0:	0ff57513          	andi	a0,a0,255
    800043d4:	ffffd097          	auipc	ra,0xffffd
    800043d8:	610080e7          	jalr	1552(ra) # 800019e4 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800043dc:	0209b783          	ld	a5,32(s3)
    800043e0:	0087b503          	ld	a0,8(a5)
    800043e4:	00001097          	auipc	ra,0x1
    800043e8:	bbc080e7          	jalr	-1092(ra) # 80004fa0 <_ZN9BufferCPP6getCntEv>
    800043ec:	fca04ae3          	bgtz	a0,800043c0 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800043f0:	01093503          	ld	a0,16(s2)
    800043f4:	ffffd097          	auipc	ra,0xffffd
    800043f8:	59c080e7          	jalr	1436(ra) # 80001990 <_ZN9Semaphore6signalEv>
}
    800043fc:	02813083          	ld	ra,40(sp)
    80004400:	02013403          	ld	s0,32(sp)
    80004404:	01813483          	ld	s1,24(sp)
    80004408:	01013903          	ld	s2,16(sp)
    8000440c:	00813983          	ld	s3,8(sp)
    80004410:	00013a03          	ld	s4,0(sp)
    80004414:	03010113          	addi	sp,sp,48
    80004418:	00008067          	ret

000000008000441c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    8000441c:	f8010113          	addi	sp,sp,-128
    80004420:	06113c23          	sd	ra,120(sp)
    80004424:	06813823          	sd	s0,112(sp)
    80004428:	06913423          	sd	s1,104(sp)
    8000442c:	07213023          	sd	s2,96(sp)
    80004430:	05313c23          	sd	s3,88(sp)
    80004434:	05413823          	sd	s4,80(sp)
    80004438:	05513423          	sd	s5,72(sp)
    8000443c:	05613023          	sd	s6,64(sp)
    80004440:	03713c23          	sd	s7,56(sp)
    80004444:	03813823          	sd	s8,48(sp)
    80004448:	03913423          	sd	s9,40(sp)
    8000444c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004450:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004454:	00004517          	auipc	a0,0x4
    80004458:	bdc50513          	addi	a0,a0,-1060 # 80008030 <CONSOLE_STATUS+0x20>
    8000445c:	00000097          	auipc	ra,0x0
    80004460:	604080e7          	jalr	1540(ra) # 80004a60 <_Z11printStringPKc>
    getString(input, 30);
    80004464:	01e00593          	li	a1,30
    80004468:	f8040493          	addi	s1,s0,-128
    8000446c:	00048513          	mv	a0,s1
    80004470:	00000097          	auipc	ra,0x0
    80004474:	678080e7          	jalr	1656(ra) # 80004ae8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004478:	00048513          	mv	a0,s1
    8000447c:	00000097          	auipc	ra,0x0
    80004480:	744080e7          	jalr	1860(ra) # 80004bc0 <_Z11stringToIntPKc>
    80004484:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004488:	00004517          	auipc	a0,0x4
    8000448c:	bc850513          	addi	a0,a0,-1080 # 80008050 <CONSOLE_STATUS+0x40>
    80004490:	00000097          	auipc	ra,0x0
    80004494:	5d0080e7          	jalr	1488(ra) # 80004a60 <_Z11printStringPKc>
    getString(input, 30);
    80004498:	01e00593          	li	a1,30
    8000449c:	00048513          	mv	a0,s1
    800044a0:	00000097          	auipc	ra,0x0
    800044a4:	648080e7          	jalr	1608(ra) # 80004ae8 <_Z9getStringPci>
    n = stringToInt(input);
    800044a8:	00048513          	mv	a0,s1
    800044ac:	00000097          	auipc	ra,0x0
    800044b0:	714080e7          	jalr	1812(ra) # 80004bc0 <_Z11stringToIntPKc>
    800044b4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800044b8:	00004517          	auipc	a0,0x4
    800044bc:	bb850513          	addi	a0,a0,-1096 # 80008070 <CONSOLE_STATUS+0x60>
    800044c0:	00000097          	auipc	ra,0x0
    800044c4:	5a0080e7          	jalr	1440(ra) # 80004a60 <_Z11printStringPKc>
    800044c8:	00000613          	li	a2,0
    800044cc:	00a00593          	li	a1,10
    800044d0:	00090513          	mv	a0,s2
    800044d4:	00000097          	auipc	ra,0x0
    800044d8:	73c080e7          	jalr	1852(ra) # 80004c10 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800044dc:	00004517          	auipc	a0,0x4
    800044e0:	bac50513          	addi	a0,a0,-1108 # 80008088 <CONSOLE_STATUS+0x78>
    800044e4:	00000097          	auipc	ra,0x0
    800044e8:	57c080e7          	jalr	1404(ra) # 80004a60 <_Z11printStringPKc>
    800044ec:	00000613          	li	a2,0
    800044f0:	00a00593          	li	a1,10
    800044f4:	00048513          	mv	a0,s1
    800044f8:	00000097          	auipc	ra,0x0
    800044fc:	718080e7          	jalr	1816(ra) # 80004c10 <_Z8printIntiii>
    printString(".\n");
    80004500:	00004517          	auipc	a0,0x4
    80004504:	ba050513          	addi	a0,a0,-1120 # 800080a0 <CONSOLE_STATUS+0x90>
    80004508:	00000097          	auipc	ra,0x0
    8000450c:	558080e7          	jalr	1368(ra) # 80004a60 <_Z11printStringPKc>
    if(threadNum > n) {
    80004510:	0324c463          	blt	s1,s2,80004538 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004514:	03205c63          	blez	s2,8000454c <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004518:	03800513          	li	a0,56
    8000451c:	ffffd097          	auipc	ra,0xffffd
    80004520:	4f0080e7          	jalr	1264(ra) # 80001a0c <_Znwm>
    80004524:	00050a93          	mv	s5,a0
    80004528:	00048593          	mv	a1,s1
    8000452c:	00001097          	auipc	ra,0x1
    80004530:	804080e7          	jalr	-2044(ra) # 80004d30 <_ZN9BufferCPPC1Ei>
    80004534:	0300006f          	j	80004564 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004538:	00004517          	auipc	a0,0x4
    8000453c:	b7050513          	addi	a0,a0,-1168 # 800080a8 <CONSOLE_STATUS+0x98>
    80004540:	00000097          	auipc	ra,0x0
    80004544:	520080e7          	jalr	1312(ra) # 80004a60 <_Z11printStringPKc>
        return;
    80004548:	0140006f          	j	8000455c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000454c:	00004517          	auipc	a0,0x4
    80004550:	b9c50513          	addi	a0,a0,-1124 # 800080e8 <CONSOLE_STATUS+0xd8>
    80004554:	00000097          	auipc	ra,0x0
    80004558:	50c080e7          	jalr	1292(ra) # 80004a60 <_Z11printStringPKc>
        return;
    8000455c:	000b8113          	mv	sp,s7
    80004560:	2380006f          	j	80004798 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004564:	01000513          	li	a0,16
    80004568:	ffffd097          	auipc	ra,0xffffd
    8000456c:	4a4080e7          	jalr	1188(ra) # 80001a0c <_Znwm>
    80004570:	00050493          	mv	s1,a0
    80004574:	00000593          	li	a1,0
    80004578:	ffffd097          	auipc	ra,0xffffd
    8000457c:	3b4080e7          	jalr	948(ra) # 8000192c <_ZN9SemaphoreC1Ej>
    80004580:	00006797          	auipc	a5,0x6
    80004584:	ee97b423          	sd	s1,-280(a5) # 8000a468 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004588:	00391793          	slli	a5,s2,0x3
    8000458c:	00f78793          	addi	a5,a5,15
    80004590:	ff07f793          	andi	a5,a5,-16
    80004594:	40f10133          	sub	sp,sp,a5
    80004598:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    8000459c:	0019071b          	addiw	a4,s2,1
    800045a0:	00171793          	slli	a5,a4,0x1
    800045a4:	00e787b3          	add	a5,a5,a4
    800045a8:	00379793          	slli	a5,a5,0x3
    800045ac:	00f78793          	addi	a5,a5,15
    800045b0:	ff07f793          	andi	a5,a5,-16
    800045b4:	40f10133          	sub	sp,sp,a5
    800045b8:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800045bc:	00191c13          	slli	s8,s2,0x1
    800045c0:	012c07b3          	add	a5,s8,s2
    800045c4:	00379793          	slli	a5,a5,0x3
    800045c8:	00fa07b3          	add	a5,s4,a5
    800045cc:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800045d0:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800045d4:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800045d8:	02800513          	li	a0,40
    800045dc:	ffffd097          	auipc	ra,0xffffd
    800045e0:	430080e7          	jalr	1072(ra) # 80001a0c <_Znwm>
    800045e4:	00050b13          	mv	s6,a0
    800045e8:	012c0c33          	add	s8,s8,s2
    800045ec:	003c1c13          	slli	s8,s8,0x3
    800045f0:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800045f4:	ffffd097          	auipc	ra,0xffffd
    800045f8:	220080e7          	jalr	544(ra) # 80001814 <_ZN6ThreadC1Ev>
    800045fc:	00006797          	auipc	a5,0x6
    80004600:	d7478793          	addi	a5,a5,-652 # 8000a370 <_ZTV12ConsumerSync+0x10>
    80004604:	00fb3023          	sd	a5,0(s6)
    80004608:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    8000460c:	000b0513          	mv	a0,s6
    80004610:	ffffd097          	auipc	ra,0xffffd
    80004614:	26c080e7          	jalr	620(ra) # 8000187c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004618:	00000493          	li	s1,0
    8000461c:	0380006f          	j	80004654 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004620:	00006797          	auipc	a5,0x6
    80004624:	d2878793          	addi	a5,a5,-728 # 8000a348 <_ZTV12ProducerSync+0x10>
    80004628:	00fcb023          	sd	a5,0(s9)
    8000462c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004630:	00349793          	slli	a5,s1,0x3
    80004634:	00f987b3          	add	a5,s3,a5
    80004638:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    8000463c:	00349793          	slli	a5,s1,0x3
    80004640:	00f987b3          	add	a5,s3,a5
    80004644:	0007b503          	ld	a0,0(a5)
    80004648:	ffffd097          	auipc	ra,0xffffd
    8000464c:	234080e7          	jalr	564(ra) # 8000187c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004650:	0014849b          	addiw	s1,s1,1
    80004654:	0b24d063          	bge	s1,s2,800046f4 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004658:	00149793          	slli	a5,s1,0x1
    8000465c:	009787b3          	add	a5,a5,s1
    80004660:	00379793          	slli	a5,a5,0x3
    80004664:	00fa07b3          	add	a5,s4,a5
    80004668:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    8000466c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004670:	00006717          	auipc	a4,0x6
    80004674:	df873703          	ld	a4,-520(a4) # 8000a468 <_ZL10waitForAll>
    80004678:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    8000467c:	02905863          	blez	s1,800046ac <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004680:	02800513          	li	a0,40
    80004684:	ffffd097          	auipc	ra,0xffffd
    80004688:	388080e7          	jalr	904(ra) # 80001a0c <_Znwm>
    8000468c:	00050c93          	mv	s9,a0
    80004690:	00149c13          	slli	s8,s1,0x1
    80004694:	009c0c33          	add	s8,s8,s1
    80004698:	003c1c13          	slli	s8,s8,0x3
    8000469c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800046a0:	ffffd097          	auipc	ra,0xffffd
    800046a4:	174080e7          	jalr	372(ra) # 80001814 <_ZN6ThreadC1Ev>
    800046a8:	f79ff06f          	j	80004620 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800046ac:	02800513          	li	a0,40
    800046b0:	ffffd097          	auipc	ra,0xffffd
    800046b4:	35c080e7          	jalr	860(ra) # 80001a0c <_Znwm>
    800046b8:	00050c93          	mv	s9,a0
    800046bc:	00149c13          	slli	s8,s1,0x1
    800046c0:	009c0c33          	add	s8,s8,s1
    800046c4:	003c1c13          	slli	s8,s8,0x3
    800046c8:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800046cc:	ffffd097          	auipc	ra,0xffffd
    800046d0:	148080e7          	jalr	328(ra) # 80001814 <_ZN6ThreadC1Ev>
    800046d4:	00006797          	auipc	a5,0x6
    800046d8:	c4c78793          	addi	a5,a5,-948 # 8000a320 <_ZTV16ProducerKeyboard+0x10>
    800046dc:	00fcb023          	sd	a5,0(s9)
    800046e0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800046e4:	00349793          	slli	a5,s1,0x3
    800046e8:	00f987b3          	add	a5,s3,a5
    800046ec:	0197b023          	sd	s9,0(a5)
    800046f0:	f4dff06f          	j	8000463c <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800046f4:	ffffd097          	auipc	ra,0xffffd
    800046f8:	1e8080e7          	jalr	488(ra) # 800018dc <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800046fc:	00000493          	li	s1,0
    80004700:	00994e63          	blt	s2,s1,8000471c <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004704:	00006517          	auipc	a0,0x6
    80004708:	d6453503          	ld	a0,-668(a0) # 8000a468 <_ZL10waitForAll>
    8000470c:	ffffd097          	auipc	ra,0xffffd
    80004710:	258080e7          	jalr	600(ra) # 80001964 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004714:	0014849b          	addiw	s1,s1,1
    80004718:	fe9ff06f          	j	80004700 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    8000471c:	00000493          	li	s1,0
    80004720:	0080006f          	j	80004728 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004724:	0014849b          	addiw	s1,s1,1
    80004728:	0324d263          	bge	s1,s2,8000474c <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    8000472c:	00349793          	slli	a5,s1,0x3
    80004730:	00f987b3          	add	a5,s3,a5
    80004734:	0007b503          	ld	a0,0(a5)
    80004738:	fe0506e3          	beqz	a0,80004724 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    8000473c:	00053783          	ld	a5,0(a0)
    80004740:	0087b783          	ld	a5,8(a5)
    80004744:	000780e7          	jalr	a5
    80004748:	fddff06f          	j	80004724 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    8000474c:	000b0a63          	beqz	s6,80004760 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004750:	000b3783          	ld	a5,0(s6)
    80004754:	0087b783          	ld	a5,8(a5)
    80004758:	000b0513          	mv	a0,s6
    8000475c:	000780e7          	jalr	a5
    delete waitForAll;
    80004760:	00006517          	auipc	a0,0x6
    80004764:	d0853503          	ld	a0,-760(a0) # 8000a468 <_ZL10waitForAll>
    80004768:	00050863          	beqz	a0,80004778 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    8000476c:	00053783          	ld	a5,0(a0)
    80004770:	0087b783          	ld	a5,8(a5)
    80004774:	000780e7          	jalr	a5
    delete buffer;
    80004778:	000a8e63          	beqz	s5,80004794 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    8000477c:	000a8513          	mv	a0,s5
    80004780:	00001097          	auipc	ra,0x1
    80004784:	8a8080e7          	jalr	-1880(ra) # 80005028 <_ZN9BufferCPPD1Ev>
    80004788:	000a8513          	mv	a0,s5
    8000478c:	ffffd097          	auipc	ra,0xffffd
    80004790:	2d0080e7          	jalr	720(ra) # 80001a5c <_ZdlPv>
    80004794:	000b8113          	mv	sp,s7

}
    80004798:	f8040113          	addi	sp,s0,-128
    8000479c:	07813083          	ld	ra,120(sp)
    800047a0:	07013403          	ld	s0,112(sp)
    800047a4:	06813483          	ld	s1,104(sp)
    800047a8:	06013903          	ld	s2,96(sp)
    800047ac:	05813983          	ld	s3,88(sp)
    800047b0:	05013a03          	ld	s4,80(sp)
    800047b4:	04813a83          	ld	s5,72(sp)
    800047b8:	04013b03          	ld	s6,64(sp)
    800047bc:	03813b83          	ld	s7,56(sp)
    800047c0:	03013c03          	ld	s8,48(sp)
    800047c4:	02813c83          	ld	s9,40(sp)
    800047c8:	08010113          	addi	sp,sp,128
    800047cc:	00008067          	ret
    800047d0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800047d4:	000a8513          	mv	a0,s5
    800047d8:	ffffd097          	auipc	ra,0xffffd
    800047dc:	284080e7          	jalr	644(ra) # 80001a5c <_ZdlPv>
    800047e0:	00048513          	mv	a0,s1
    800047e4:	00007097          	auipc	ra,0x7
    800047e8:	d64080e7          	jalr	-668(ra) # 8000b548 <_Unwind_Resume>
    800047ec:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800047f0:	00048513          	mv	a0,s1
    800047f4:	ffffd097          	auipc	ra,0xffffd
    800047f8:	268080e7          	jalr	616(ra) # 80001a5c <_ZdlPv>
    800047fc:	00090513          	mv	a0,s2
    80004800:	00007097          	auipc	ra,0x7
    80004804:	d48080e7          	jalr	-696(ra) # 8000b548 <_Unwind_Resume>
    80004808:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    8000480c:	000b0513          	mv	a0,s6
    80004810:	ffffd097          	auipc	ra,0xffffd
    80004814:	24c080e7          	jalr	588(ra) # 80001a5c <_ZdlPv>
    80004818:	00048513          	mv	a0,s1
    8000481c:	00007097          	auipc	ra,0x7
    80004820:	d2c080e7          	jalr	-724(ra) # 8000b548 <_Unwind_Resume>
    80004824:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004828:	000c8513          	mv	a0,s9
    8000482c:	ffffd097          	auipc	ra,0xffffd
    80004830:	230080e7          	jalr	560(ra) # 80001a5c <_ZdlPv>
    80004834:	00048513          	mv	a0,s1
    80004838:	00007097          	auipc	ra,0x7
    8000483c:	d10080e7          	jalr	-752(ra) # 8000b548 <_Unwind_Resume>
    80004840:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004844:	000c8513          	mv	a0,s9
    80004848:	ffffd097          	auipc	ra,0xffffd
    8000484c:	214080e7          	jalr	532(ra) # 80001a5c <_ZdlPv>
    80004850:	00048513          	mv	a0,s1
    80004854:	00007097          	auipc	ra,0x7
    80004858:	cf4080e7          	jalr	-780(ra) # 8000b548 <_Unwind_Resume>

000000008000485c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    8000485c:	ff010113          	addi	sp,sp,-16
    80004860:	00113423          	sd	ra,8(sp)
    80004864:	00813023          	sd	s0,0(sp)
    80004868:	01010413          	addi	s0,sp,16
    8000486c:	00006797          	auipc	a5,0x6
    80004870:	b0478793          	addi	a5,a5,-1276 # 8000a370 <_ZTV12ConsumerSync+0x10>
    80004874:	00f53023          	sd	a5,0(a0)
    80004878:	ffffd097          	auipc	ra,0xffffd
    8000487c:	20c080e7          	jalr	524(ra) # 80001a84 <_ZN6ThreadD1Ev>
    80004880:	00813083          	ld	ra,8(sp)
    80004884:	00013403          	ld	s0,0(sp)
    80004888:	01010113          	addi	sp,sp,16
    8000488c:	00008067          	ret

0000000080004890 <_ZN12ConsumerSyncD0Ev>:
    80004890:	fe010113          	addi	sp,sp,-32
    80004894:	00113c23          	sd	ra,24(sp)
    80004898:	00813823          	sd	s0,16(sp)
    8000489c:	00913423          	sd	s1,8(sp)
    800048a0:	02010413          	addi	s0,sp,32
    800048a4:	00050493          	mv	s1,a0
    800048a8:	00006797          	auipc	a5,0x6
    800048ac:	ac878793          	addi	a5,a5,-1336 # 8000a370 <_ZTV12ConsumerSync+0x10>
    800048b0:	00f53023          	sd	a5,0(a0)
    800048b4:	ffffd097          	auipc	ra,0xffffd
    800048b8:	1d0080e7          	jalr	464(ra) # 80001a84 <_ZN6ThreadD1Ev>
    800048bc:	00048513          	mv	a0,s1
    800048c0:	ffffd097          	auipc	ra,0xffffd
    800048c4:	19c080e7          	jalr	412(ra) # 80001a5c <_ZdlPv>
    800048c8:	01813083          	ld	ra,24(sp)
    800048cc:	01013403          	ld	s0,16(sp)
    800048d0:	00813483          	ld	s1,8(sp)
    800048d4:	02010113          	addi	sp,sp,32
    800048d8:	00008067          	ret

00000000800048dc <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800048dc:	ff010113          	addi	sp,sp,-16
    800048e0:	00113423          	sd	ra,8(sp)
    800048e4:	00813023          	sd	s0,0(sp)
    800048e8:	01010413          	addi	s0,sp,16
    800048ec:	00006797          	auipc	a5,0x6
    800048f0:	a5c78793          	addi	a5,a5,-1444 # 8000a348 <_ZTV12ProducerSync+0x10>
    800048f4:	00f53023          	sd	a5,0(a0)
    800048f8:	ffffd097          	auipc	ra,0xffffd
    800048fc:	18c080e7          	jalr	396(ra) # 80001a84 <_ZN6ThreadD1Ev>
    80004900:	00813083          	ld	ra,8(sp)
    80004904:	00013403          	ld	s0,0(sp)
    80004908:	01010113          	addi	sp,sp,16
    8000490c:	00008067          	ret

0000000080004910 <_ZN12ProducerSyncD0Ev>:
    80004910:	fe010113          	addi	sp,sp,-32
    80004914:	00113c23          	sd	ra,24(sp)
    80004918:	00813823          	sd	s0,16(sp)
    8000491c:	00913423          	sd	s1,8(sp)
    80004920:	02010413          	addi	s0,sp,32
    80004924:	00050493          	mv	s1,a0
    80004928:	00006797          	auipc	a5,0x6
    8000492c:	a2078793          	addi	a5,a5,-1504 # 8000a348 <_ZTV12ProducerSync+0x10>
    80004930:	00f53023          	sd	a5,0(a0)
    80004934:	ffffd097          	auipc	ra,0xffffd
    80004938:	150080e7          	jalr	336(ra) # 80001a84 <_ZN6ThreadD1Ev>
    8000493c:	00048513          	mv	a0,s1
    80004940:	ffffd097          	auipc	ra,0xffffd
    80004944:	11c080e7          	jalr	284(ra) # 80001a5c <_ZdlPv>
    80004948:	01813083          	ld	ra,24(sp)
    8000494c:	01013403          	ld	s0,16(sp)
    80004950:	00813483          	ld	s1,8(sp)
    80004954:	02010113          	addi	sp,sp,32
    80004958:	00008067          	ret

000000008000495c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    8000495c:	ff010113          	addi	sp,sp,-16
    80004960:	00113423          	sd	ra,8(sp)
    80004964:	00813023          	sd	s0,0(sp)
    80004968:	01010413          	addi	s0,sp,16
    8000496c:	00006797          	auipc	a5,0x6
    80004970:	9b478793          	addi	a5,a5,-1612 # 8000a320 <_ZTV16ProducerKeyboard+0x10>
    80004974:	00f53023          	sd	a5,0(a0)
    80004978:	ffffd097          	auipc	ra,0xffffd
    8000497c:	10c080e7          	jalr	268(ra) # 80001a84 <_ZN6ThreadD1Ev>
    80004980:	00813083          	ld	ra,8(sp)
    80004984:	00013403          	ld	s0,0(sp)
    80004988:	01010113          	addi	sp,sp,16
    8000498c:	00008067          	ret

0000000080004990 <_ZN16ProducerKeyboardD0Ev>:
    80004990:	fe010113          	addi	sp,sp,-32
    80004994:	00113c23          	sd	ra,24(sp)
    80004998:	00813823          	sd	s0,16(sp)
    8000499c:	00913423          	sd	s1,8(sp)
    800049a0:	02010413          	addi	s0,sp,32
    800049a4:	00050493          	mv	s1,a0
    800049a8:	00006797          	auipc	a5,0x6
    800049ac:	97878793          	addi	a5,a5,-1672 # 8000a320 <_ZTV16ProducerKeyboard+0x10>
    800049b0:	00f53023          	sd	a5,0(a0)
    800049b4:	ffffd097          	auipc	ra,0xffffd
    800049b8:	0d0080e7          	jalr	208(ra) # 80001a84 <_ZN6ThreadD1Ev>
    800049bc:	00048513          	mv	a0,s1
    800049c0:	ffffd097          	auipc	ra,0xffffd
    800049c4:	09c080e7          	jalr	156(ra) # 80001a5c <_ZdlPv>
    800049c8:	01813083          	ld	ra,24(sp)
    800049cc:	01013403          	ld	s0,16(sp)
    800049d0:	00813483          	ld	s1,8(sp)
    800049d4:	02010113          	addi	sp,sp,32
    800049d8:	00008067          	ret

00000000800049dc <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800049dc:	ff010113          	addi	sp,sp,-16
    800049e0:	00113423          	sd	ra,8(sp)
    800049e4:	00813023          	sd	s0,0(sp)
    800049e8:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800049ec:	02053583          	ld	a1,32(a0)
    800049f0:	fffff097          	auipc	ra,0xfffff
    800049f4:	7e4080e7          	jalr	2020(ra) # 800041d4 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800049f8:	00813083          	ld	ra,8(sp)
    800049fc:	00013403          	ld	s0,0(sp)
    80004a00:	01010113          	addi	sp,sp,16
    80004a04:	00008067          	ret

0000000080004a08 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004a08:	ff010113          	addi	sp,sp,-16
    80004a0c:	00113423          	sd	ra,8(sp)
    80004a10:	00813023          	sd	s0,0(sp)
    80004a14:	01010413          	addi	s0,sp,16
        producer(td);
    80004a18:	02053583          	ld	a1,32(a0)
    80004a1c:	00000097          	auipc	ra,0x0
    80004a20:	878080e7          	jalr	-1928(ra) # 80004294 <_ZN12ProducerSync8producerEPv>
    }
    80004a24:	00813083          	ld	ra,8(sp)
    80004a28:	00013403          	ld	s0,0(sp)
    80004a2c:	01010113          	addi	sp,sp,16
    80004a30:	00008067          	ret

0000000080004a34 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004a34:	ff010113          	addi	sp,sp,-16
    80004a38:	00113423          	sd	ra,8(sp)
    80004a3c:	00813023          	sd	s0,0(sp)
    80004a40:	01010413          	addi	s0,sp,16
        consumer(td);
    80004a44:	02053583          	ld	a1,32(a0)
    80004a48:	00000097          	auipc	ra,0x0
    80004a4c:	8e0080e7          	jalr	-1824(ra) # 80004328 <_ZN12ConsumerSync8consumerEPv>
    }
    80004a50:	00813083          	ld	ra,8(sp)
    80004a54:	00013403          	ld	s0,0(sp)
    80004a58:	01010113          	addi	sp,sp,16
    80004a5c:	00008067          	ret

0000000080004a60 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004a60:	fe010113          	addi	sp,sp,-32
    80004a64:	00113c23          	sd	ra,24(sp)
    80004a68:	00813823          	sd	s0,16(sp)
    80004a6c:	00913423          	sd	s1,8(sp)
    80004a70:	02010413          	addi	s0,sp,32
    80004a74:	00050493          	mv	s1,a0
    LOCK();
    80004a78:	00100613          	li	a2,1
    80004a7c:	00000593          	li	a1,0
    80004a80:	00006517          	auipc	a0,0x6
    80004a84:	9f050513          	addi	a0,a0,-1552 # 8000a470 <lockPrint>
    80004a88:	ffffd097          	auipc	ra,0xffffd
    80004a8c:	8c4080e7          	jalr	-1852(ra) # 8000134c <copy_and_swap>
    80004a90:	00050863          	beqz	a0,80004aa0 <_Z11printStringPKc+0x40>
    80004a94:	ffffd097          	auipc	ra,0xffffd
    80004a98:	9e0080e7          	jalr	-1568(ra) # 80001474 <_Z15thread_dispatchv>
    80004a9c:	fddff06f          	j	80004a78 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004aa0:	0004c503          	lbu	a0,0(s1)
    80004aa4:	00050a63          	beqz	a0,80004ab8 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80004aa8:	ffffd097          	auipc	ra,0xffffd
    80004aac:	b28080e7          	jalr	-1240(ra) # 800015d0 <_Z4putcc>
        string++;
    80004ab0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004ab4:	fedff06f          	j	80004aa0 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80004ab8:	00000613          	li	a2,0
    80004abc:	00100593          	li	a1,1
    80004ac0:	00006517          	auipc	a0,0x6
    80004ac4:	9b050513          	addi	a0,a0,-1616 # 8000a470 <lockPrint>
    80004ac8:	ffffd097          	auipc	ra,0xffffd
    80004acc:	884080e7          	jalr	-1916(ra) # 8000134c <copy_and_swap>
    80004ad0:	fe0514e3          	bnez	a0,80004ab8 <_Z11printStringPKc+0x58>
}
    80004ad4:	01813083          	ld	ra,24(sp)
    80004ad8:	01013403          	ld	s0,16(sp)
    80004adc:	00813483          	ld	s1,8(sp)
    80004ae0:	02010113          	addi	sp,sp,32
    80004ae4:	00008067          	ret

0000000080004ae8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004ae8:	fd010113          	addi	sp,sp,-48
    80004aec:	02113423          	sd	ra,40(sp)
    80004af0:	02813023          	sd	s0,32(sp)
    80004af4:	00913c23          	sd	s1,24(sp)
    80004af8:	01213823          	sd	s2,16(sp)
    80004afc:	01313423          	sd	s3,8(sp)
    80004b00:	01413023          	sd	s4,0(sp)
    80004b04:	03010413          	addi	s0,sp,48
    80004b08:	00050993          	mv	s3,a0
    80004b0c:	00058a13          	mv	s4,a1
    LOCK();
    80004b10:	00100613          	li	a2,1
    80004b14:	00000593          	li	a1,0
    80004b18:	00006517          	auipc	a0,0x6
    80004b1c:	95850513          	addi	a0,a0,-1704 # 8000a470 <lockPrint>
    80004b20:	ffffd097          	auipc	ra,0xffffd
    80004b24:	82c080e7          	jalr	-2004(ra) # 8000134c <copy_and_swap>
    80004b28:	00050863          	beqz	a0,80004b38 <_Z9getStringPci+0x50>
    80004b2c:	ffffd097          	auipc	ra,0xffffd
    80004b30:	948080e7          	jalr	-1720(ra) # 80001474 <_Z15thread_dispatchv>
    80004b34:	fddff06f          	j	80004b10 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004b38:	00000913          	li	s2,0
    80004b3c:	00090493          	mv	s1,s2
    80004b40:	0019091b          	addiw	s2,s2,1
    80004b44:	03495a63          	bge	s2,s4,80004b78 <_Z9getStringPci+0x90>
        cc = getc();
    80004b48:	ffffd097          	auipc	ra,0xffffd
    80004b4c:	a60080e7          	jalr	-1440(ra) # 800015a8 <_Z4getcv>
        if(cc < 1)
    80004b50:	02050463          	beqz	a0,80004b78 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004b54:	009984b3          	add	s1,s3,s1
    80004b58:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004b5c:	00a00793          	li	a5,10
    80004b60:	00f50a63          	beq	a0,a5,80004b74 <_Z9getStringPci+0x8c>
    80004b64:	00d00793          	li	a5,13
    80004b68:	fcf51ae3          	bne	a0,a5,80004b3c <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004b6c:	00090493          	mv	s1,s2
    80004b70:	0080006f          	j	80004b78 <_Z9getStringPci+0x90>
    80004b74:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004b78:	009984b3          	add	s1,s3,s1
    80004b7c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004b80:	00000613          	li	a2,0
    80004b84:	00100593          	li	a1,1
    80004b88:	00006517          	auipc	a0,0x6
    80004b8c:	8e850513          	addi	a0,a0,-1816 # 8000a470 <lockPrint>
    80004b90:	ffffc097          	auipc	ra,0xffffc
    80004b94:	7bc080e7          	jalr	1980(ra) # 8000134c <copy_and_swap>
    80004b98:	fe0514e3          	bnez	a0,80004b80 <_Z9getStringPci+0x98>
    return buf;
}
    80004b9c:	00098513          	mv	a0,s3
    80004ba0:	02813083          	ld	ra,40(sp)
    80004ba4:	02013403          	ld	s0,32(sp)
    80004ba8:	01813483          	ld	s1,24(sp)
    80004bac:	01013903          	ld	s2,16(sp)
    80004bb0:	00813983          	ld	s3,8(sp)
    80004bb4:	00013a03          	ld	s4,0(sp)
    80004bb8:	03010113          	addi	sp,sp,48
    80004bbc:	00008067          	ret

0000000080004bc0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004bc0:	ff010113          	addi	sp,sp,-16
    80004bc4:	00813423          	sd	s0,8(sp)
    80004bc8:	01010413          	addi	s0,sp,16
    80004bcc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004bd0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004bd4:	0006c603          	lbu	a2,0(a3)
    80004bd8:	fd06071b          	addiw	a4,a2,-48
    80004bdc:	0ff77713          	andi	a4,a4,255
    80004be0:	00900793          	li	a5,9
    80004be4:	02e7e063          	bltu	a5,a4,80004c04 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004be8:	0025179b          	slliw	a5,a0,0x2
    80004bec:	00a787bb          	addw	a5,a5,a0
    80004bf0:	0017979b          	slliw	a5,a5,0x1
    80004bf4:	00168693          	addi	a3,a3,1
    80004bf8:	00c787bb          	addw	a5,a5,a2
    80004bfc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004c00:	fd5ff06f          	j	80004bd4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004c04:	00813403          	ld	s0,8(sp)
    80004c08:	01010113          	addi	sp,sp,16
    80004c0c:	00008067          	ret

0000000080004c10 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004c10:	fc010113          	addi	sp,sp,-64
    80004c14:	02113c23          	sd	ra,56(sp)
    80004c18:	02813823          	sd	s0,48(sp)
    80004c1c:	02913423          	sd	s1,40(sp)
    80004c20:	03213023          	sd	s2,32(sp)
    80004c24:	01313c23          	sd	s3,24(sp)
    80004c28:	04010413          	addi	s0,sp,64
    80004c2c:	00050493          	mv	s1,a0
    80004c30:	00058913          	mv	s2,a1
    80004c34:	00060993          	mv	s3,a2
    LOCK();
    80004c38:	00100613          	li	a2,1
    80004c3c:	00000593          	li	a1,0
    80004c40:	00006517          	auipc	a0,0x6
    80004c44:	83050513          	addi	a0,a0,-2000 # 8000a470 <lockPrint>
    80004c48:	ffffc097          	auipc	ra,0xffffc
    80004c4c:	704080e7          	jalr	1796(ra) # 8000134c <copy_and_swap>
    80004c50:	00050863          	beqz	a0,80004c60 <_Z8printIntiii+0x50>
    80004c54:	ffffd097          	auipc	ra,0xffffd
    80004c58:	820080e7          	jalr	-2016(ra) # 80001474 <_Z15thread_dispatchv>
    80004c5c:	fddff06f          	j	80004c38 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004c60:	00098463          	beqz	s3,80004c68 <_Z8printIntiii+0x58>
    80004c64:	0804c463          	bltz	s1,80004cec <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004c68:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004c6c:	00000593          	li	a1,0
    }

    i = 0;
    80004c70:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004c74:	0009079b          	sext.w	a5,s2
    80004c78:	0325773b          	remuw	a4,a0,s2
    80004c7c:	00048613          	mv	a2,s1
    80004c80:	0014849b          	addiw	s1,s1,1
    80004c84:	02071693          	slli	a3,a4,0x20
    80004c88:	0206d693          	srli	a3,a3,0x20
    80004c8c:	00005717          	auipc	a4,0x5
    80004c90:	6fc70713          	addi	a4,a4,1788 # 8000a388 <digits>
    80004c94:	00d70733          	add	a4,a4,a3
    80004c98:	00074683          	lbu	a3,0(a4)
    80004c9c:	fd040713          	addi	a4,s0,-48
    80004ca0:	00c70733          	add	a4,a4,a2
    80004ca4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004ca8:	0005071b          	sext.w	a4,a0
    80004cac:	0325553b          	divuw	a0,a0,s2
    80004cb0:	fcf772e3          	bgeu	a4,a5,80004c74 <_Z8printIntiii+0x64>
    if(neg)
    80004cb4:	00058c63          	beqz	a1,80004ccc <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80004cb8:	fd040793          	addi	a5,s0,-48
    80004cbc:	009784b3          	add	s1,a5,s1
    80004cc0:	02d00793          	li	a5,45
    80004cc4:	fef48823          	sb	a5,-16(s1)
    80004cc8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004ccc:	fff4849b          	addiw	s1,s1,-1
    80004cd0:	0204c463          	bltz	s1,80004cf8 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80004cd4:	fd040793          	addi	a5,s0,-48
    80004cd8:	009787b3          	add	a5,a5,s1
    80004cdc:	ff07c503          	lbu	a0,-16(a5)
    80004ce0:	ffffd097          	auipc	ra,0xffffd
    80004ce4:	8f0080e7          	jalr	-1808(ra) # 800015d0 <_Z4putcc>
    80004ce8:	fe5ff06f          	j	80004ccc <_Z8printIntiii+0xbc>
        x = -xx;
    80004cec:	4090053b          	negw	a0,s1
        neg = 1;
    80004cf0:	00100593          	li	a1,1
        x = -xx;
    80004cf4:	f7dff06f          	j	80004c70 <_Z8printIntiii+0x60>

    UNLOCK();
    80004cf8:	00000613          	li	a2,0
    80004cfc:	00100593          	li	a1,1
    80004d00:	00005517          	auipc	a0,0x5
    80004d04:	77050513          	addi	a0,a0,1904 # 8000a470 <lockPrint>
    80004d08:	ffffc097          	auipc	ra,0xffffc
    80004d0c:	644080e7          	jalr	1604(ra) # 8000134c <copy_and_swap>
    80004d10:	fe0514e3          	bnez	a0,80004cf8 <_Z8printIntiii+0xe8>
    80004d14:	03813083          	ld	ra,56(sp)
    80004d18:	03013403          	ld	s0,48(sp)
    80004d1c:	02813483          	ld	s1,40(sp)
    80004d20:	02013903          	ld	s2,32(sp)
    80004d24:	01813983          	ld	s3,24(sp)
    80004d28:	04010113          	addi	sp,sp,64
    80004d2c:	00008067          	ret

0000000080004d30 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004d30:	fd010113          	addi	sp,sp,-48
    80004d34:	02113423          	sd	ra,40(sp)
    80004d38:	02813023          	sd	s0,32(sp)
    80004d3c:	00913c23          	sd	s1,24(sp)
    80004d40:	01213823          	sd	s2,16(sp)
    80004d44:	01313423          	sd	s3,8(sp)
    80004d48:	03010413          	addi	s0,sp,48
    80004d4c:	00050493          	mv	s1,a0
    80004d50:	00058913          	mv	s2,a1
    80004d54:	0015879b          	addiw	a5,a1,1
    80004d58:	0007851b          	sext.w	a0,a5
    80004d5c:	00f4a023          	sw	a5,0(s1)
    80004d60:	0004a823          	sw	zero,16(s1)
    80004d64:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004d68:	00251513          	slli	a0,a0,0x2
    80004d6c:	ffffc097          	auipc	ra,0xffffc
    80004d70:	600080e7          	jalr	1536(ra) # 8000136c <_Z9mem_allocm>
    80004d74:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004d78:	01000513          	li	a0,16
    80004d7c:	ffffd097          	auipc	ra,0xffffd
    80004d80:	c90080e7          	jalr	-880(ra) # 80001a0c <_Znwm>
    80004d84:	00050993          	mv	s3,a0
    80004d88:	00000593          	li	a1,0
    80004d8c:	ffffd097          	auipc	ra,0xffffd
    80004d90:	ba0080e7          	jalr	-1120(ra) # 8000192c <_ZN9SemaphoreC1Ej>
    80004d94:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004d98:	01000513          	li	a0,16
    80004d9c:	ffffd097          	auipc	ra,0xffffd
    80004da0:	c70080e7          	jalr	-912(ra) # 80001a0c <_Znwm>
    80004da4:	00050993          	mv	s3,a0
    80004da8:	00090593          	mv	a1,s2
    80004dac:	ffffd097          	auipc	ra,0xffffd
    80004db0:	b80080e7          	jalr	-1152(ra) # 8000192c <_ZN9SemaphoreC1Ej>
    80004db4:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004db8:	01000513          	li	a0,16
    80004dbc:	ffffd097          	auipc	ra,0xffffd
    80004dc0:	c50080e7          	jalr	-944(ra) # 80001a0c <_Znwm>
    80004dc4:	00050913          	mv	s2,a0
    80004dc8:	00100593          	li	a1,1
    80004dcc:	ffffd097          	auipc	ra,0xffffd
    80004dd0:	b60080e7          	jalr	-1184(ra) # 8000192c <_ZN9SemaphoreC1Ej>
    80004dd4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004dd8:	01000513          	li	a0,16
    80004ddc:	ffffd097          	auipc	ra,0xffffd
    80004de0:	c30080e7          	jalr	-976(ra) # 80001a0c <_Znwm>
    80004de4:	00050913          	mv	s2,a0
    80004de8:	00100593          	li	a1,1
    80004dec:	ffffd097          	auipc	ra,0xffffd
    80004df0:	b40080e7          	jalr	-1216(ra) # 8000192c <_ZN9SemaphoreC1Ej>
    80004df4:	0324b823          	sd	s2,48(s1)
}
    80004df8:	02813083          	ld	ra,40(sp)
    80004dfc:	02013403          	ld	s0,32(sp)
    80004e00:	01813483          	ld	s1,24(sp)
    80004e04:	01013903          	ld	s2,16(sp)
    80004e08:	00813983          	ld	s3,8(sp)
    80004e0c:	03010113          	addi	sp,sp,48
    80004e10:	00008067          	ret
    80004e14:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004e18:	00098513          	mv	a0,s3
    80004e1c:	ffffd097          	auipc	ra,0xffffd
    80004e20:	c40080e7          	jalr	-960(ra) # 80001a5c <_ZdlPv>
    80004e24:	00048513          	mv	a0,s1
    80004e28:	00006097          	auipc	ra,0x6
    80004e2c:	720080e7          	jalr	1824(ra) # 8000b548 <_Unwind_Resume>
    80004e30:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004e34:	00098513          	mv	a0,s3
    80004e38:	ffffd097          	auipc	ra,0xffffd
    80004e3c:	c24080e7          	jalr	-988(ra) # 80001a5c <_ZdlPv>
    80004e40:	00048513          	mv	a0,s1
    80004e44:	00006097          	auipc	ra,0x6
    80004e48:	704080e7          	jalr	1796(ra) # 8000b548 <_Unwind_Resume>
    80004e4c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004e50:	00090513          	mv	a0,s2
    80004e54:	ffffd097          	auipc	ra,0xffffd
    80004e58:	c08080e7          	jalr	-1016(ra) # 80001a5c <_ZdlPv>
    80004e5c:	00048513          	mv	a0,s1
    80004e60:	00006097          	auipc	ra,0x6
    80004e64:	6e8080e7          	jalr	1768(ra) # 8000b548 <_Unwind_Resume>
    80004e68:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004e6c:	00090513          	mv	a0,s2
    80004e70:	ffffd097          	auipc	ra,0xffffd
    80004e74:	bec080e7          	jalr	-1044(ra) # 80001a5c <_ZdlPv>
    80004e78:	00048513          	mv	a0,s1
    80004e7c:	00006097          	auipc	ra,0x6
    80004e80:	6cc080e7          	jalr	1740(ra) # 8000b548 <_Unwind_Resume>

0000000080004e84 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004e84:	fe010113          	addi	sp,sp,-32
    80004e88:	00113c23          	sd	ra,24(sp)
    80004e8c:	00813823          	sd	s0,16(sp)
    80004e90:	00913423          	sd	s1,8(sp)
    80004e94:	01213023          	sd	s2,0(sp)
    80004e98:	02010413          	addi	s0,sp,32
    80004e9c:	00050493          	mv	s1,a0
    80004ea0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004ea4:	01853503          	ld	a0,24(a0)
    80004ea8:	ffffd097          	auipc	ra,0xffffd
    80004eac:	abc080e7          	jalr	-1348(ra) # 80001964 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004eb0:	0304b503          	ld	a0,48(s1)
    80004eb4:	ffffd097          	auipc	ra,0xffffd
    80004eb8:	ab0080e7          	jalr	-1360(ra) # 80001964 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80004ebc:	0084b783          	ld	a5,8(s1)
    80004ec0:	0144a703          	lw	a4,20(s1)
    80004ec4:	00271713          	slli	a4,a4,0x2
    80004ec8:	00e787b3          	add	a5,a5,a4
    80004ecc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004ed0:	0144a783          	lw	a5,20(s1)
    80004ed4:	0017879b          	addiw	a5,a5,1
    80004ed8:	0004a703          	lw	a4,0(s1)
    80004edc:	02e7e7bb          	remw	a5,a5,a4
    80004ee0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004ee4:	0304b503          	ld	a0,48(s1)
    80004ee8:	ffffd097          	auipc	ra,0xffffd
    80004eec:	aa8080e7          	jalr	-1368(ra) # 80001990 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004ef0:	0204b503          	ld	a0,32(s1)
    80004ef4:	ffffd097          	auipc	ra,0xffffd
    80004ef8:	a9c080e7          	jalr	-1380(ra) # 80001990 <_ZN9Semaphore6signalEv>

}
    80004efc:	01813083          	ld	ra,24(sp)
    80004f00:	01013403          	ld	s0,16(sp)
    80004f04:	00813483          	ld	s1,8(sp)
    80004f08:	00013903          	ld	s2,0(sp)
    80004f0c:	02010113          	addi	sp,sp,32
    80004f10:	00008067          	ret

0000000080004f14 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004f14:	fe010113          	addi	sp,sp,-32
    80004f18:	00113c23          	sd	ra,24(sp)
    80004f1c:	00813823          	sd	s0,16(sp)
    80004f20:	00913423          	sd	s1,8(sp)
    80004f24:	01213023          	sd	s2,0(sp)
    80004f28:	02010413          	addi	s0,sp,32
    80004f2c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004f30:	02053503          	ld	a0,32(a0)
    80004f34:	ffffd097          	auipc	ra,0xffffd
    80004f38:	a30080e7          	jalr	-1488(ra) # 80001964 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004f3c:	0284b503          	ld	a0,40(s1)
    80004f40:	ffffd097          	auipc	ra,0xffffd
    80004f44:	a24080e7          	jalr	-1500(ra) # 80001964 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004f48:	0084b703          	ld	a4,8(s1)
    80004f4c:	0104a783          	lw	a5,16(s1)
    80004f50:	00279693          	slli	a3,a5,0x2
    80004f54:	00d70733          	add	a4,a4,a3
    80004f58:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004f5c:	0017879b          	addiw	a5,a5,1
    80004f60:	0004a703          	lw	a4,0(s1)
    80004f64:	02e7e7bb          	remw	a5,a5,a4
    80004f68:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80004f6c:	0284b503          	ld	a0,40(s1)
    80004f70:	ffffd097          	auipc	ra,0xffffd
    80004f74:	a20080e7          	jalr	-1504(ra) # 80001990 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80004f78:	0184b503          	ld	a0,24(s1)
    80004f7c:	ffffd097          	auipc	ra,0xffffd
    80004f80:	a14080e7          	jalr	-1516(ra) # 80001990 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004f84:	00090513          	mv	a0,s2
    80004f88:	01813083          	ld	ra,24(sp)
    80004f8c:	01013403          	ld	s0,16(sp)
    80004f90:	00813483          	ld	s1,8(sp)
    80004f94:	00013903          	ld	s2,0(sp)
    80004f98:	02010113          	addi	sp,sp,32
    80004f9c:	00008067          	ret

0000000080004fa0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80004fa0:	fe010113          	addi	sp,sp,-32
    80004fa4:	00113c23          	sd	ra,24(sp)
    80004fa8:	00813823          	sd	s0,16(sp)
    80004fac:	00913423          	sd	s1,8(sp)
    80004fb0:	01213023          	sd	s2,0(sp)
    80004fb4:	02010413          	addi	s0,sp,32
    80004fb8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80004fbc:	02853503          	ld	a0,40(a0)
    80004fc0:	ffffd097          	auipc	ra,0xffffd
    80004fc4:	9a4080e7          	jalr	-1628(ra) # 80001964 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80004fc8:	0304b503          	ld	a0,48(s1)
    80004fcc:	ffffd097          	auipc	ra,0xffffd
    80004fd0:	998080e7          	jalr	-1640(ra) # 80001964 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80004fd4:	0144a783          	lw	a5,20(s1)
    80004fd8:	0104a903          	lw	s2,16(s1)
    80004fdc:	0327ce63          	blt	a5,s2,80005018 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80004fe0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80004fe4:	0304b503          	ld	a0,48(s1)
    80004fe8:	ffffd097          	auipc	ra,0xffffd
    80004fec:	9a8080e7          	jalr	-1624(ra) # 80001990 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80004ff0:	0284b503          	ld	a0,40(s1)
    80004ff4:	ffffd097          	auipc	ra,0xffffd
    80004ff8:	99c080e7          	jalr	-1636(ra) # 80001990 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004ffc:	00090513          	mv	a0,s2
    80005000:	01813083          	ld	ra,24(sp)
    80005004:	01013403          	ld	s0,16(sp)
    80005008:	00813483          	ld	s1,8(sp)
    8000500c:	00013903          	ld	s2,0(sp)
    80005010:	02010113          	addi	sp,sp,32
    80005014:	00008067          	ret
        ret = cap - head + tail;
    80005018:	0004a703          	lw	a4,0(s1)
    8000501c:	4127093b          	subw	s2,a4,s2
    80005020:	00f9093b          	addw	s2,s2,a5
    80005024:	fc1ff06f          	j	80004fe4 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005028 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005028:	fe010113          	addi	sp,sp,-32
    8000502c:	00113c23          	sd	ra,24(sp)
    80005030:	00813823          	sd	s0,16(sp)
    80005034:	00913423          	sd	s1,8(sp)
    80005038:	02010413          	addi	s0,sp,32
    8000503c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005040:	00a00513          	li	a0,10
    80005044:	ffffd097          	auipc	ra,0xffffd
    80005048:	9a0080e7          	jalr	-1632(ra) # 800019e4 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000504c:	00003517          	auipc	a0,0x3
    80005050:	1c450513          	addi	a0,a0,452 # 80008210 <CONSOLE_STATUS+0x200>
    80005054:	00000097          	auipc	ra,0x0
    80005058:	a0c080e7          	jalr	-1524(ra) # 80004a60 <_Z11printStringPKc>
    while (getCnt()) {
    8000505c:	00048513          	mv	a0,s1
    80005060:	00000097          	auipc	ra,0x0
    80005064:	f40080e7          	jalr	-192(ra) # 80004fa0 <_ZN9BufferCPP6getCntEv>
    80005068:	02050c63          	beqz	a0,800050a0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000506c:	0084b783          	ld	a5,8(s1)
    80005070:	0104a703          	lw	a4,16(s1)
    80005074:	00271713          	slli	a4,a4,0x2
    80005078:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000507c:	0007c503          	lbu	a0,0(a5)
    80005080:	ffffd097          	auipc	ra,0xffffd
    80005084:	964080e7          	jalr	-1692(ra) # 800019e4 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005088:	0104a783          	lw	a5,16(s1)
    8000508c:	0017879b          	addiw	a5,a5,1
    80005090:	0004a703          	lw	a4,0(s1)
    80005094:	02e7e7bb          	remw	a5,a5,a4
    80005098:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000509c:	fc1ff06f          	j	8000505c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800050a0:	02100513          	li	a0,33
    800050a4:	ffffd097          	auipc	ra,0xffffd
    800050a8:	940080e7          	jalr	-1728(ra) # 800019e4 <_ZN7Console4putcEc>
    Console::putc('\n');
    800050ac:	00a00513          	li	a0,10
    800050b0:	ffffd097          	auipc	ra,0xffffd
    800050b4:	934080e7          	jalr	-1740(ra) # 800019e4 <_ZN7Console4putcEc>
    mem_free(buffer);
    800050b8:	0084b503          	ld	a0,8(s1)
    800050bc:	ffffc097          	auipc	ra,0xffffc
    800050c0:	2e8080e7          	jalr	744(ra) # 800013a4 <_Z8mem_freePv>
    delete itemAvailable;
    800050c4:	0204b503          	ld	a0,32(s1)
    800050c8:	00050863          	beqz	a0,800050d8 <_ZN9BufferCPPD1Ev+0xb0>
    800050cc:	00053783          	ld	a5,0(a0)
    800050d0:	0087b783          	ld	a5,8(a5)
    800050d4:	000780e7          	jalr	a5
    delete spaceAvailable;
    800050d8:	0184b503          	ld	a0,24(s1)
    800050dc:	00050863          	beqz	a0,800050ec <_ZN9BufferCPPD1Ev+0xc4>
    800050e0:	00053783          	ld	a5,0(a0)
    800050e4:	0087b783          	ld	a5,8(a5)
    800050e8:	000780e7          	jalr	a5
    delete mutexTail;
    800050ec:	0304b503          	ld	a0,48(s1)
    800050f0:	00050863          	beqz	a0,80005100 <_ZN9BufferCPPD1Ev+0xd8>
    800050f4:	00053783          	ld	a5,0(a0)
    800050f8:	0087b783          	ld	a5,8(a5)
    800050fc:	000780e7          	jalr	a5
    delete mutexHead;
    80005100:	0284b503          	ld	a0,40(s1)
    80005104:	00050863          	beqz	a0,80005114 <_ZN9BufferCPPD1Ev+0xec>
    80005108:	00053783          	ld	a5,0(a0)
    8000510c:	0087b783          	ld	a5,8(a5)
    80005110:	000780e7          	jalr	a5
}
    80005114:	01813083          	ld	ra,24(sp)
    80005118:	01013403          	ld	s0,16(sp)
    8000511c:	00813483          	ld	s1,8(sp)
    80005120:	02010113          	addi	sp,sp,32
    80005124:	00008067          	ret

0000000080005128 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005128:	fe010113          	addi	sp,sp,-32
    8000512c:	00113c23          	sd	ra,24(sp)
    80005130:	00813823          	sd	s0,16(sp)
    80005134:	00913423          	sd	s1,8(sp)
    80005138:	01213023          	sd	s2,0(sp)
    8000513c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005140:	00003517          	auipc	a0,0x3
    80005144:	0e850513          	addi	a0,a0,232 # 80008228 <CONSOLE_STATUS+0x218>
    80005148:	00000097          	auipc	ra,0x0
    8000514c:	918080e7          	jalr	-1768(ra) # 80004a60 <_Z11printStringPKc>
    int test = getc() - '0';
    80005150:	ffffc097          	auipc	ra,0xffffc
    80005154:	458080e7          	jalr	1112(ra) # 800015a8 <_Z4getcv>
    80005158:	00050913          	mv	s2,a0
    8000515c:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005160:	ffffc097          	auipc	ra,0xffffc
    80005164:	448080e7          	jalr	1096(ra) # 800015a8 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80005168:	fcb9091b          	addiw	s2,s2,-53
    8000516c:	00100793          	li	a5,1
    80005170:	0327f463          	bgeu	a5,s2,80005198 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005174:	00700793          	li	a5,7
    80005178:	0e97e263          	bltu	a5,s1,8000525c <_Z8userMainv+0x134>
    8000517c:	00249493          	slli	s1,s1,0x2
    80005180:	00003717          	auipc	a4,0x3
    80005184:	2c070713          	addi	a4,a4,704 # 80008440 <CONSOLE_STATUS+0x430>
    80005188:	00e484b3          	add	s1,s1,a4
    8000518c:	0004a783          	lw	a5,0(s1)
    80005190:	00e787b3          	add	a5,a5,a4
    80005194:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80005198:	00003517          	auipc	a0,0x3
    8000519c:	0b050513          	addi	a0,a0,176 # 80008248 <CONSOLE_STATUS+0x238>
    800051a0:	00000097          	auipc	ra,0x0
    800051a4:	8c0080e7          	jalr	-1856(ra) # 80004a60 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800051a8:	01813083          	ld	ra,24(sp)
    800051ac:	01013403          	ld	s0,16(sp)
    800051b0:	00813483          	ld	s1,8(sp)
    800051b4:	00013903          	ld	s2,0(sp)
    800051b8:	02010113          	addi	sp,sp,32
    800051bc:	00008067          	ret
            Threads_C_API_test();
    800051c0:	fffff097          	auipc	ra,0xfffff
    800051c4:	f18080e7          	jalr	-232(ra) # 800040d8 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800051c8:	00003517          	auipc	a0,0x3
    800051cc:	0b050513          	addi	a0,a0,176 # 80008278 <CONSOLE_STATUS+0x268>
    800051d0:	00000097          	auipc	ra,0x0
    800051d4:	890080e7          	jalr	-1904(ra) # 80004a60 <_Z11printStringPKc>
            break;
    800051d8:	fd1ff06f          	j	800051a8 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    800051dc:	ffffe097          	auipc	ra,0xffffe
    800051e0:	ddc080e7          	jalr	-548(ra) # 80002fb8 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800051e4:	00003517          	auipc	a0,0x3
    800051e8:	0d450513          	addi	a0,a0,212 # 800082b8 <CONSOLE_STATUS+0x2a8>
    800051ec:	00000097          	auipc	ra,0x0
    800051f0:	874080e7          	jalr	-1932(ra) # 80004a60 <_Z11printStringPKc>
            break;
    800051f4:	fb5ff06f          	j	800051a8 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    800051f8:	ffffd097          	auipc	ra,0xffffd
    800051fc:	614080e7          	jalr	1556(ra) # 8000280c <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005200:	00003517          	auipc	a0,0x3
    80005204:	0f850513          	addi	a0,a0,248 # 800082f8 <CONSOLE_STATUS+0x2e8>
    80005208:	00000097          	auipc	ra,0x0
    8000520c:	858080e7          	jalr	-1960(ra) # 80004a60 <_Z11printStringPKc>
            break;
    80005210:	f99ff06f          	j	800051a8 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80005214:	fffff097          	auipc	ra,0xfffff
    80005218:	208080e7          	jalr	520(ra) # 8000441c <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    8000521c:	00003517          	auipc	a0,0x3
    80005220:	12c50513          	addi	a0,a0,300 # 80008348 <CONSOLE_STATUS+0x338>
    80005224:	00000097          	auipc	ra,0x0
    80005228:	83c080e7          	jalr	-1988(ra) # 80004a60 <_Z11printStringPKc>
            break;
    8000522c:	f7dff06f          	j	800051a8 <_Z8userMainv+0x80>
            System_Mode_test();
    80005230:	00000097          	auipc	ra,0x0
    80005234:	658080e7          	jalr	1624(ra) # 80005888 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005238:	00003517          	auipc	a0,0x3
    8000523c:	16850513          	addi	a0,a0,360 # 800083a0 <CONSOLE_STATUS+0x390>
    80005240:	00000097          	auipc	ra,0x0
    80005244:	820080e7          	jalr	-2016(ra) # 80004a60 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005248:	00003517          	auipc	a0,0x3
    8000524c:	17850513          	addi	a0,a0,376 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80005250:	00000097          	auipc	ra,0x0
    80005254:	810080e7          	jalr	-2032(ra) # 80004a60 <_Z11printStringPKc>
            break;
    80005258:	f51ff06f          	j	800051a8 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    8000525c:	00003517          	auipc	a0,0x3
    80005260:	1bc50513          	addi	a0,a0,444 # 80008418 <CONSOLE_STATUS+0x408>
    80005264:	fffff097          	auipc	ra,0xfffff
    80005268:	7fc080e7          	jalr	2044(ra) # 80004a60 <_Z11printStringPKc>
    8000526c:	f3dff06f          	j	800051a8 <_Z8userMainv+0x80>

0000000080005270 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005270:	fe010113          	addi	sp,sp,-32
    80005274:	00113c23          	sd	ra,24(sp)
    80005278:	00813823          	sd	s0,16(sp)
    8000527c:	00913423          	sd	s1,8(sp)
    80005280:	01213023          	sd	s2,0(sp)
    80005284:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005288:	00053903          	ld	s2,0(a0)
    int i = 6;
    8000528c:	00600493          	li	s1,6
    while (--i > 0) {
    80005290:	fff4849b          	addiw	s1,s1,-1
    80005294:	04905463          	blez	s1,800052dc <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005298:	00003517          	auipc	a0,0x3
    8000529c:	1c850513          	addi	a0,a0,456 # 80008460 <CONSOLE_STATUS+0x450>
    800052a0:	fffff097          	auipc	ra,0xfffff
    800052a4:	7c0080e7          	jalr	1984(ra) # 80004a60 <_Z11printStringPKc>
        printInt(sleep_time);
    800052a8:	00000613          	li	a2,0
    800052ac:	00a00593          	li	a1,10
    800052b0:	0009051b          	sext.w	a0,s2
    800052b4:	00000097          	auipc	ra,0x0
    800052b8:	95c080e7          	jalr	-1700(ra) # 80004c10 <_Z8printIntiii>
        printString(" !\n");
    800052bc:	00003517          	auipc	a0,0x3
    800052c0:	1ac50513          	addi	a0,a0,428 # 80008468 <CONSOLE_STATUS+0x458>
    800052c4:	fffff097          	auipc	ra,0xfffff
    800052c8:	79c080e7          	jalr	1948(ra) # 80004a60 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800052cc:	00090513          	mv	a0,s2
    800052d0:	ffffc097          	auipc	ra,0xffffc
    800052d4:	2bc080e7          	jalr	700(ra) # 8000158c <_Z10time_sleepm>
    while (--i > 0) {
    800052d8:	fb9ff06f          	j	80005290 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800052dc:	00a00793          	li	a5,10
    800052e0:	02f95933          	divu	s2,s2,a5
    800052e4:	fff90913          	addi	s2,s2,-1
    800052e8:	00005797          	auipc	a5,0x5
    800052ec:	19078793          	addi	a5,a5,400 # 8000a478 <_ZL8finished>
    800052f0:	01278933          	add	s2,a5,s2
    800052f4:	00100793          	li	a5,1
    800052f8:	00f90023          	sb	a5,0(s2)
}
    800052fc:	01813083          	ld	ra,24(sp)
    80005300:	01013403          	ld	s0,16(sp)
    80005304:	00813483          	ld	s1,8(sp)
    80005308:	00013903          	ld	s2,0(sp)
    8000530c:	02010113          	addi	sp,sp,32
    80005310:	00008067          	ret

0000000080005314 <_Z12testSleepingv>:

void testSleeping() {
    80005314:	fc010113          	addi	sp,sp,-64
    80005318:	02113c23          	sd	ra,56(sp)
    8000531c:	02813823          	sd	s0,48(sp)
    80005320:	02913423          	sd	s1,40(sp)
    80005324:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005328:	00a00793          	li	a5,10
    8000532c:	fcf43823          	sd	a5,-48(s0)
    80005330:	01400793          	li	a5,20
    80005334:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005338:	00000493          	li	s1,0
    8000533c:	02c0006f          	j	80005368 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005340:	00349793          	slli	a5,s1,0x3
    80005344:	fd040613          	addi	a2,s0,-48
    80005348:	00f60633          	add	a2,a2,a5
    8000534c:	00000597          	auipc	a1,0x0
    80005350:	f2458593          	addi	a1,a1,-220 # 80005270 <_ZL9sleepyRunPv>
    80005354:	fc040513          	addi	a0,s0,-64
    80005358:	00f50533          	add	a0,a0,a5
    8000535c:	ffffc097          	auipc	ra,0xffffc
    80005360:	078080e7          	jalr	120(ra) # 800013d4 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005364:	0014849b          	addiw	s1,s1,1
    80005368:	00100793          	li	a5,1
    8000536c:	fc97dae3          	bge	a5,s1,80005340 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005370:	00005797          	auipc	a5,0x5
    80005374:	1087c783          	lbu	a5,264(a5) # 8000a478 <_ZL8finished>
    80005378:	fe078ce3          	beqz	a5,80005370 <_Z12testSleepingv+0x5c>
    8000537c:	00005797          	auipc	a5,0x5
    80005380:	0fd7c783          	lbu	a5,253(a5) # 8000a479 <_ZL8finished+0x1>
    80005384:	fe0786e3          	beqz	a5,80005370 <_Z12testSleepingv+0x5c>
}
    80005388:	03813083          	ld	ra,56(sp)
    8000538c:	03013403          	ld	s0,48(sp)
    80005390:	02813483          	ld	s1,40(sp)
    80005394:	04010113          	addi	sp,sp,64
    80005398:	00008067          	ret

000000008000539c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000539c:	fe010113          	addi	sp,sp,-32
    800053a0:	00113c23          	sd	ra,24(sp)
    800053a4:	00813823          	sd	s0,16(sp)
    800053a8:	00913423          	sd	s1,8(sp)
    800053ac:	01213023          	sd	s2,0(sp)
    800053b0:	02010413          	addi	s0,sp,32
    800053b4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800053b8:	00100793          	li	a5,1
    800053bc:	02a7f863          	bgeu	a5,a0,800053ec <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800053c0:	00a00793          	li	a5,10
    800053c4:	02f577b3          	remu	a5,a0,a5
    800053c8:	02078e63          	beqz	a5,80005404 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800053cc:	fff48513          	addi	a0,s1,-1
    800053d0:	00000097          	auipc	ra,0x0
    800053d4:	fcc080e7          	jalr	-52(ra) # 8000539c <_ZL9fibonaccim>
    800053d8:	00050913          	mv	s2,a0
    800053dc:	ffe48513          	addi	a0,s1,-2
    800053e0:	00000097          	auipc	ra,0x0
    800053e4:	fbc080e7          	jalr	-68(ra) # 8000539c <_ZL9fibonaccim>
    800053e8:	00a90533          	add	a0,s2,a0
}
    800053ec:	01813083          	ld	ra,24(sp)
    800053f0:	01013403          	ld	s0,16(sp)
    800053f4:	00813483          	ld	s1,8(sp)
    800053f8:	00013903          	ld	s2,0(sp)
    800053fc:	02010113          	addi	sp,sp,32
    80005400:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005404:	ffffc097          	auipc	ra,0xffffc
    80005408:	070080e7          	jalr	112(ra) # 80001474 <_Z15thread_dispatchv>
    8000540c:	fc1ff06f          	j	800053cc <_ZL9fibonaccim+0x30>

0000000080005410 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005410:	fe010113          	addi	sp,sp,-32
    80005414:	00113c23          	sd	ra,24(sp)
    80005418:	00813823          	sd	s0,16(sp)
    8000541c:	00913423          	sd	s1,8(sp)
    80005420:	01213023          	sd	s2,0(sp)
    80005424:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005428:	00a00493          	li	s1,10
    8000542c:	0400006f          	j	8000546c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005430:	00003517          	auipc	a0,0x3
    80005434:	d4850513          	addi	a0,a0,-696 # 80008178 <CONSOLE_STATUS+0x168>
    80005438:	fffff097          	auipc	ra,0xfffff
    8000543c:	628080e7          	jalr	1576(ra) # 80004a60 <_Z11printStringPKc>
    80005440:	00000613          	li	a2,0
    80005444:	00a00593          	li	a1,10
    80005448:	00048513          	mv	a0,s1
    8000544c:	fffff097          	auipc	ra,0xfffff
    80005450:	7c4080e7          	jalr	1988(ra) # 80004c10 <_Z8printIntiii>
    80005454:	00003517          	auipc	a0,0x3
    80005458:	f4450513          	addi	a0,a0,-188 # 80008398 <CONSOLE_STATUS+0x388>
    8000545c:	fffff097          	auipc	ra,0xfffff
    80005460:	604080e7          	jalr	1540(ra) # 80004a60 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005464:	0014849b          	addiw	s1,s1,1
    80005468:	0ff4f493          	andi	s1,s1,255
    8000546c:	00c00793          	li	a5,12
    80005470:	fc97f0e3          	bgeu	a5,s1,80005430 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005474:	00003517          	auipc	a0,0x3
    80005478:	d0c50513          	addi	a0,a0,-756 # 80008180 <CONSOLE_STATUS+0x170>
    8000547c:	fffff097          	auipc	ra,0xfffff
    80005480:	5e4080e7          	jalr	1508(ra) # 80004a60 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005484:	00500313          	li	t1,5
    thread_dispatch();
    80005488:	ffffc097          	auipc	ra,0xffffc
    8000548c:	fec080e7          	jalr	-20(ra) # 80001474 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005490:	01000513          	li	a0,16
    80005494:	00000097          	auipc	ra,0x0
    80005498:	f08080e7          	jalr	-248(ra) # 8000539c <_ZL9fibonaccim>
    8000549c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800054a0:	00003517          	auipc	a0,0x3
    800054a4:	cf050513          	addi	a0,a0,-784 # 80008190 <CONSOLE_STATUS+0x180>
    800054a8:	fffff097          	auipc	ra,0xfffff
    800054ac:	5b8080e7          	jalr	1464(ra) # 80004a60 <_Z11printStringPKc>
    800054b0:	00000613          	li	a2,0
    800054b4:	00a00593          	li	a1,10
    800054b8:	0009051b          	sext.w	a0,s2
    800054bc:	fffff097          	auipc	ra,0xfffff
    800054c0:	754080e7          	jalr	1876(ra) # 80004c10 <_Z8printIntiii>
    800054c4:	00003517          	auipc	a0,0x3
    800054c8:	ed450513          	addi	a0,a0,-300 # 80008398 <CONSOLE_STATUS+0x388>
    800054cc:	fffff097          	auipc	ra,0xfffff
    800054d0:	594080e7          	jalr	1428(ra) # 80004a60 <_Z11printStringPKc>
    800054d4:	0400006f          	j	80005514 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800054d8:	00003517          	auipc	a0,0x3
    800054dc:	ca050513          	addi	a0,a0,-864 # 80008178 <CONSOLE_STATUS+0x168>
    800054e0:	fffff097          	auipc	ra,0xfffff
    800054e4:	580080e7          	jalr	1408(ra) # 80004a60 <_Z11printStringPKc>
    800054e8:	00000613          	li	a2,0
    800054ec:	00a00593          	li	a1,10
    800054f0:	00048513          	mv	a0,s1
    800054f4:	fffff097          	auipc	ra,0xfffff
    800054f8:	71c080e7          	jalr	1820(ra) # 80004c10 <_Z8printIntiii>
    800054fc:	00003517          	auipc	a0,0x3
    80005500:	e9c50513          	addi	a0,a0,-356 # 80008398 <CONSOLE_STATUS+0x388>
    80005504:	fffff097          	auipc	ra,0xfffff
    80005508:	55c080e7          	jalr	1372(ra) # 80004a60 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000550c:	0014849b          	addiw	s1,s1,1
    80005510:	0ff4f493          	andi	s1,s1,255
    80005514:	00f00793          	li	a5,15
    80005518:	fc97f0e3          	bgeu	a5,s1,800054d8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000551c:	00003517          	auipc	a0,0x3
    80005520:	c8450513          	addi	a0,a0,-892 # 800081a0 <CONSOLE_STATUS+0x190>
    80005524:	fffff097          	auipc	ra,0xfffff
    80005528:	53c080e7          	jalr	1340(ra) # 80004a60 <_Z11printStringPKc>
    finishedD = true;
    8000552c:	00100793          	li	a5,1
    80005530:	00005717          	auipc	a4,0x5
    80005534:	f4f70523          	sb	a5,-182(a4) # 8000a47a <_ZL9finishedD>
    thread_dispatch();
    80005538:	ffffc097          	auipc	ra,0xffffc
    8000553c:	f3c080e7          	jalr	-196(ra) # 80001474 <_Z15thread_dispatchv>
}
    80005540:	01813083          	ld	ra,24(sp)
    80005544:	01013403          	ld	s0,16(sp)
    80005548:	00813483          	ld	s1,8(sp)
    8000554c:	00013903          	ld	s2,0(sp)
    80005550:	02010113          	addi	sp,sp,32
    80005554:	00008067          	ret

0000000080005558 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005558:	fe010113          	addi	sp,sp,-32
    8000555c:	00113c23          	sd	ra,24(sp)
    80005560:	00813823          	sd	s0,16(sp)
    80005564:	00913423          	sd	s1,8(sp)
    80005568:	01213023          	sd	s2,0(sp)
    8000556c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005570:	00000493          	li	s1,0
    80005574:	0400006f          	j	800055b4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005578:	00003517          	auipc	a0,0x3
    8000557c:	bd050513          	addi	a0,a0,-1072 # 80008148 <CONSOLE_STATUS+0x138>
    80005580:	fffff097          	auipc	ra,0xfffff
    80005584:	4e0080e7          	jalr	1248(ra) # 80004a60 <_Z11printStringPKc>
    80005588:	00000613          	li	a2,0
    8000558c:	00a00593          	li	a1,10
    80005590:	00048513          	mv	a0,s1
    80005594:	fffff097          	auipc	ra,0xfffff
    80005598:	67c080e7          	jalr	1660(ra) # 80004c10 <_Z8printIntiii>
    8000559c:	00003517          	auipc	a0,0x3
    800055a0:	dfc50513          	addi	a0,a0,-516 # 80008398 <CONSOLE_STATUS+0x388>
    800055a4:	fffff097          	auipc	ra,0xfffff
    800055a8:	4bc080e7          	jalr	1212(ra) # 80004a60 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800055ac:	0014849b          	addiw	s1,s1,1
    800055b0:	0ff4f493          	andi	s1,s1,255
    800055b4:	00200793          	li	a5,2
    800055b8:	fc97f0e3          	bgeu	a5,s1,80005578 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800055bc:	00003517          	auipc	a0,0x3
    800055c0:	b9450513          	addi	a0,a0,-1132 # 80008150 <CONSOLE_STATUS+0x140>
    800055c4:	fffff097          	auipc	ra,0xfffff
    800055c8:	49c080e7          	jalr	1180(ra) # 80004a60 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800055cc:	00700313          	li	t1,7
    thread_dispatch();
    800055d0:	ffffc097          	auipc	ra,0xffffc
    800055d4:	ea4080e7          	jalr	-348(ra) # 80001474 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800055d8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800055dc:	00003517          	auipc	a0,0x3
    800055e0:	b8450513          	addi	a0,a0,-1148 # 80008160 <CONSOLE_STATUS+0x150>
    800055e4:	fffff097          	auipc	ra,0xfffff
    800055e8:	47c080e7          	jalr	1148(ra) # 80004a60 <_Z11printStringPKc>
    800055ec:	00000613          	li	a2,0
    800055f0:	00a00593          	li	a1,10
    800055f4:	0009051b          	sext.w	a0,s2
    800055f8:	fffff097          	auipc	ra,0xfffff
    800055fc:	618080e7          	jalr	1560(ra) # 80004c10 <_Z8printIntiii>
    80005600:	00003517          	auipc	a0,0x3
    80005604:	d9850513          	addi	a0,a0,-616 # 80008398 <CONSOLE_STATUS+0x388>
    80005608:	fffff097          	auipc	ra,0xfffff
    8000560c:	458080e7          	jalr	1112(ra) # 80004a60 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005610:	00c00513          	li	a0,12
    80005614:	00000097          	auipc	ra,0x0
    80005618:	d88080e7          	jalr	-632(ra) # 8000539c <_ZL9fibonaccim>
    8000561c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005620:	00003517          	auipc	a0,0x3
    80005624:	b4850513          	addi	a0,a0,-1208 # 80008168 <CONSOLE_STATUS+0x158>
    80005628:	fffff097          	auipc	ra,0xfffff
    8000562c:	438080e7          	jalr	1080(ra) # 80004a60 <_Z11printStringPKc>
    80005630:	00000613          	li	a2,0
    80005634:	00a00593          	li	a1,10
    80005638:	0009051b          	sext.w	a0,s2
    8000563c:	fffff097          	auipc	ra,0xfffff
    80005640:	5d4080e7          	jalr	1492(ra) # 80004c10 <_Z8printIntiii>
    80005644:	00003517          	auipc	a0,0x3
    80005648:	d5450513          	addi	a0,a0,-684 # 80008398 <CONSOLE_STATUS+0x388>
    8000564c:	fffff097          	auipc	ra,0xfffff
    80005650:	414080e7          	jalr	1044(ra) # 80004a60 <_Z11printStringPKc>
    80005654:	0400006f          	j	80005694 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005658:	00003517          	auipc	a0,0x3
    8000565c:	af050513          	addi	a0,a0,-1296 # 80008148 <CONSOLE_STATUS+0x138>
    80005660:	fffff097          	auipc	ra,0xfffff
    80005664:	400080e7          	jalr	1024(ra) # 80004a60 <_Z11printStringPKc>
    80005668:	00000613          	li	a2,0
    8000566c:	00a00593          	li	a1,10
    80005670:	00048513          	mv	a0,s1
    80005674:	fffff097          	auipc	ra,0xfffff
    80005678:	59c080e7          	jalr	1436(ra) # 80004c10 <_Z8printIntiii>
    8000567c:	00003517          	auipc	a0,0x3
    80005680:	d1c50513          	addi	a0,a0,-740 # 80008398 <CONSOLE_STATUS+0x388>
    80005684:	fffff097          	auipc	ra,0xfffff
    80005688:	3dc080e7          	jalr	988(ra) # 80004a60 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000568c:	0014849b          	addiw	s1,s1,1
    80005690:	0ff4f493          	andi	s1,s1,255
    80005694:	00500793          	li	a5,5
    80005698:	fc97f0e3          	bgeu	a5,s1,80005658 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000569c:	00003517          	auipc	a0,0x3
    800056a0:	a8450513          	addi	a0,a0,-1404 # 80008120 <CONSOLE_STATUS+0x110>
    800056a4:	fffff097          	auipc	ra,0xfffff
    800056a8:	3bc080e7          	jalr	956(ra) # 80004a60 <_Z11printStringPKc>
    finishedC = true;
    800056ac:	00100793          	li	a5,1
    800056b0:	00005717          	auipc	a4,0x5
    800056b4:	dcf705a3          	sb	a5,-565(a4) # 8000a47b <_ZL9finishedC>
    thread_dispatch();
    800056b8:	ffffc097          	auipc	ra,0xffffc
    800056bc:	dbc080e7          	jalr	-580(ra) # 80001474 <_Z15thread_dispatchv>
}
    800056c0:	01813083          	ld	ra,24(sp)
    800056c4:	01013403          	ld	s0,16(sp)
    800056c8:	00813483          	ld	s1,8(sp)
    800056cc:	00013903          	ld	s2,0(sp)
    800056d0:	02010113          	addi	sp,sp,32
    800056d4:	00008067          	ret

00000000800056d8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800056d8:	fe010113          	addi	sp,sp,-32
    800056dc:	00113c23          	sd	ra,24(sp)
    800056e0:	00813823          	sd	s0,16(sp)
    800056e4:	00913423          	sd	s1,8(sp)
    800056e8:	01213023          	sd	s2,0(sp)
    800056ec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800056f0:	00000913          	li	s2,0
    800056f4:	0400006f          	j	80005734 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800056f8:	ffffc097          	auipc	ra,0xffffc
    800056fc:	d7c080e7          	jalr	-644(ra) # 80001474 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005700:	00148493          	addi	s1,s1,1
    80005704:	000027b7          	lui	a5,0x2
    80005708:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000570c:	0097ee63          	bltu	a5,s1,80005728 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005710:	00000713          	li	a4,0
    80005714:	000077b7          	lui	a5,0x7
    80005718:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000571c:	fce7eee3          	bltu	a5,a4,800056f8 <_ZL11workerBodyBPv+0x20>
    80005720:	00170713          	addi	a4,a4,1
    80005724:	ff1ff06f          	j	80005714 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005728:	00a00793          	li	a5,10
    8000572c:	04f90663          	beq	s2,a5,80005778 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005730:	00190913          	addi	s2,s2,1
    80005734:	00f00793          	li	a5,15
    80005738:	0527e463          	bltu	a5,s2,80005780 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    8000573c:	00003517          	auipc	a0,0x3
    80005740:	9f450513          	addi	a0,a0,-1548 # 80008130 <CONSOLE_STATUS+0x120>
    80005744:	fffff097          	auipc	ra,0xfffff
    80005748:	31c080e7          	jalr	796(ra) # 80004a60 <_Z11printStringPKc>
    8000574c:	00000613          	li	a2,0
    80005750:	00a00593          	li	a1,10
    80005754:	0009051b          	sext.w	a0,s2
    80005758:	fffff097          	auipc	ra,0xfffff
    8000575c:	4b8080e7          	jalr	1208(ra) # 80004c10 <_Z8printIntiii>
    80005760:	00003517          	auipc	a0,0x3
    80005764:	c3850513          	addi	a0,a0,-968 # 80008398 <CONSOLE_STATUS+0x388>
    80005768:	fffff097          	auipc	ra,0xfffff
    8000576c:	2f8080e7          	jalr	760(ra) # 80004a60 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005770:	00000493          	li	s1,0
    80005774:	f91ff06f          	j	80005704 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005778:	14102ff3          	csrr	t6,sepc
    8000577c:	fb5ff06f          	j	80005730 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005780:	00003517          	auipc	a0,0x3
    80005784:	9b850513          	addi	a0,a0,-1608 # 80008138 <CONSOLE_STATUS+0x128>
    80005788:	fffff097          	auipc	ra,0xfffff
    8000578c:	2d8080e7          	jalr	728(ra) # 80004a60 <_Z11printStringPKc>
    finishedB = true;
    80005790:	00100793          	li	a5,1
    80005794:	00005717          	auipc	a4,0x5
    80005798:	cef70423          	sb	a5,-792(a4) # 8000a47c <_ZL9finishedB>
    thread_dispatch();
    8000579c:	ffffc097          	auipc	ra,0xffffc
    800057a0:	cd8080e7          	jalr	-808(ra) # 80001474 <_Z15thread_dispatchv>
}
    800057a4:	01813083          	ld	ra,24(sp)
    800057a8:	01013403          	ld	s0,16(sp)
    800057ac:	00813483          	ld	s1,8(sp)
    800057b0:	00013903          	ld	s2,0(sp)
    800057b4:	02010113          	addi	sp,sp,32
    800057b8:	00008067          	ret

00000000800057bc <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800057bc:	fe010113          	addi	sp,sp,-32
    800057c0:	00113c23          	sd	ra,24(sp)
    800057c4:	00813823          	sd	s0,16(sp)
    800057c8:	00913423          	sd	s1,8(sp)
    800057cc:	01213023          	sd	s2,0(sp)
    800057d0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800057d4:	00000913          	li	s2,0
    800057d8:	0380006f          	j	80005810 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800057dc:	ffffc097          	auipc	ra,0xffffc
    800057e0:	c98080e7          	jalr	-872(ra) # 80001474 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800057e4:	00148493          	addi	s1,s1,1
    800057e8:	000027b7          	lui	a5,0x2
    800057ec:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800057f0:	0097ee63          	bltu	a5,s1,8000580c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800057f4:	00000713          	li	a4,0
    800057f8:	000077b7          	lui	a5,0x7
    800057fc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005800:	fce7eee3          	bltu	a5,a4,800057dc <_ZL11workerBodyAPv+0x20>
    80005804:	00170713          	addi	a4,a4,1
    80005808:	ff1ff06f          	j	800057f8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000580c:	00190913          	addi	s2,s2,1
    80005810:	00900793          	li	a5,9
    80005814:	0527e063          	bltu	a5,s2,80005854 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005818:	00003517          	auipc	a0,0x3
    8000581c:	90050513          	addi	a0,a0,-1792 # 80008118 <CONSOLE_STATUS+0x108>
    80005820:	fffff097          	auipc	ra,0xfffff
    80005824:	240080e7          	jalr	576(ra) # 80004a60 <_Z11printStringPKc>
    80005828:	00000613          	li	a2,0
    8000582c:	00a00593          	li	a1,10
    80005830:	0009051b          	sext.w	a0,s2
    80005834:	fffff097          	auipc	ra,0xfffff
    80005838:	3dc080e7          	jalr	988(ra) # 80004c10 <_Z8printIntiii>
    8000583c:	00003517          	auipc	a0,0x3
    80005840:	b5c50513          	addi	a0,a0,-1188 # 80008398 <CONSOLE_STATUS+0x388>
    80005844:	fffff097          	auipc	ra,0xfffff
    80005848:	21c080e7          	jalr	540(ra) # 80004a60 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000584c:	00000493          	li	s1,0
    80005850:	f99ff06f          	j	800057e8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005854:	00003517          	auipc	a0,0x3
    80005858:	8cc50513          	addi	a0,a0,-1844 # 80008120 <CONSOLE_STATUS+0x110>
    8000585c:	fffff097          	auipc	ra,0xfffff
    80005860:	204080e7          	jalr	516(ra) # 80004a60 <_Z11printStringPKc>
    finishedA = true;
    80005864:	00100793          	li	a5,1
    80005868:	00005717          	auipc	a4,0x5
    8000586c:	c0f70aa3          	sb	a5,-1003(a4) # 8000a47d <_ZL9finishedA>
}
    80005870:	01813083          	ld	ra,24(sp)
    80005874:	01013403          	ld	s0,16(sp)
    80005878:	00813483          	ld	s1,8(sp)
    8000587c:	00013903          	ld	s2,0(sp)
    80005880:	02010113          	addi	sp,sp,32
    80005884:	00008067          	ret

0000000080005888 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005888:	fd010113          	addi	sp,sp,-48
    8000588c:	02113423          	sd	ra,40(sp)
    80005890:	02813023          	sd	s0,32(sp)
    80005894:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005898:	00000613          	li	a2,0
    8000589c:	00000597          	auipc	a1,0x0
    800058a0:	f2058593          	addi	a1,a1,-224 # 800057bc <_ZL11workerBodyAPv>
    800058a4:	fd040513          	addi	a0,s0,-48
    800058a8:	ffffc097          	auipc	ra,0xffffc
    800058ac:	b2c080e7          	jalr	-1236(ra) # 800013d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800058b0:	00003517          	auipc	a0,0x3
    800058b4:	90050513          	addi	a0,a0,-1792 # 800081b0 <CONSOLE_STATUS+0x1a0>
    800058b8:	fffff097          	auipc	ra,0xfffff
    800058bc:	1a8080e7          	jalr	424(ra) # 80004a60 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800058c0:	00000613          	li	a2,0
    800058c4:	00000597          	auipc	a1,0x0
    800058c8:	e1458593          	addi	a1,a1,-492 # 800056d8 <_ZL11workerBodyBPv>
    800058cc:	fd840513          	addi	a0,s0,-40
    800058d0:	ffffc097          	auipc	ra,0xffffc
    800058d4:	b04080e7          	jalr	-1276(ra) # 800013d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800058d8:	00003517          	auipc	a0,0x3
    800058dc:	8f050513          	addi	a0,a0,-1808 # 800081c8 <CONSOLE_STATUS+0x1b8>
    800058e0:	fffff097          	auipc	ra,0xfffff
    800058e4:	180080e7          	jalr	384(ra) # 80004a60 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800058e8:	00000613          	li	a2,0
    800058ec:	00000597          	auipc	a1,0x0
    800058f0:	c6c58593          	addi	a1,a1,-916 # 80005558 <_ZL11workerBodyCPv>
    800058f4:	fe040513          	addi	a0,s0,-32
    800058f8:	ffffc097          	auipc	ra,0xffffc
    800058fc:	adc080e7          	jalr	-1316(ra) # 800013d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005900:	00003517          	auipc	a0,0x3
    80005904:	8e050513          	addi	a0,a0,-1824 # 800081e0 <CONSOLE_STATUS+0x1d0>
    80005908:	fffff097          	auipc	ra,0xfffff
    8000590c:	158080e7          	jalr	344(ra) # 80004a60 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005910:	00000613          	li	a2,0
    80005914:	00000597          	auipc	a1,0x0
    80005918:	afc58593          	addi	a1,a1,-1284 # 80005410 <_ZL11workerBodyDPv>
    8000591c:	fe840513          	addi	a0,s0,-24
    80005920:	ffffc097          	auipc	ra,0xffffc
    80005924:	ab4080e7          	jalr	-1356(ra) # 800013d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005928:	00003517          	auipc	a0,0x3
    8000592c:	8d050513          	addi	a0,a0,-1840 # 800081f8 <CONSOLE_STATUS+0x1e8>
    80005930:	fffff097          	auipc	ra,0xfffff
    80005934:	130080e7          	jalr	304(ra) # 80004a60 <_Z11printStringPKc>
    80005938:	00c0006f          	j	80005944 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000593c:	ffffc097          	auipc	ra,0xffffc
    80005940:	b38080e7          	jalr	-1224(ra) # 80001474 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005944:	00005797          	auipc	a5,0x5
    80005948:	b397c783          	lbu	a5,-1223(a5) # 8000a47d <_ZL9finishedA>
    8000594c:	fe0788e3          	beqz	a5,8000593c <_Z16System_Mode_testv+0xb4>
    80005950:	00005797          	auipc	a5,0x5
    80005954:	b2c7c783          	lbu	a5,-1236(a5) # 8000a47c <_ZL9finishedB>
    80005958:	fe0782e3          	beqz	a5,8000593c <_Z16System_Mode_testv+0xb4>
    8000595c:	00005797          	auipc	a5,0x5
    80005960:	b1f7c783          	lbu	a5,-1249(a5) # 8000a47b <_ZL9finishedC>
    80005964:	fc078ce3          	beqz	a5,8000593c <_Z16System_Mode_testv+0xb4>
    80005968:	00005797          	auipc	a5,0x5
    8000596c:	b127c783          	lbu	a5,-1262(a5) # 8000a47a <_ZL9finishedD>
    80005970:	fc0786e3          	beqz	a5,8000593c <_Z16System_Mode_testv+0xb4>
    }

}
    80005974:	02813083          	ld	ra,40(sp)
    80005978:	02013403          	ld	s0,32(sp)
    8000597c:	03010113          	addi	sp,sp,48
    80005980:	00008067          	ret

0000000080005984 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005984:	fe010113          	addi	sp,sp,-32
    80005988:	00113c23          	sd	ra,24(sp)
    8000598c:	00813823          	sd	s0,16(sp)
    80005990:	00913423          	sd	s1,8(sp)
    80005994:	01213023          	sd	s2,0(sp)
    80005998:	02010413          	addi	s0,sp,32
    8000599c:	00050493          	mv	s1,a0
    800059a0:	00058913          	mv	s2,a1
    800059a4:	0015879b          	addiw	a5,a1,1
    800059a8:	0007851b          	sext.w	a0,a5
    800059ac:	00f4a023          	sw	a5,0(s1)
    800059b0:	0004a823          	sw	zero,16(s1)
    800059b4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800059b8:	00251513          	slli	a0,a0,0x2
    800059bc:	ffffc097          	auipc	ra,0xffffc
    800059c0:	9b0080e7          	jalr	-1616(ra) # 8000136c <_Z9mem_allocm>
    800059c4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800059c8:	00000593          	li	a1,0
    800059cc:	02048513          	addi	a0,s1,32
    800059d0:	ffffc097          	auipc	ra,0xffffc
    800059d4:	ae8080e7          	jalr	-1304(ra) # 800014b8 <_Z8sem_openPP5MySemj>
    sem_open(&spaceAvailable, _cap);
    800059d8:	00090593          	mv	a1,s2
    800059dc:	01848513          	addi	a0,s1,24
    800059e0:	ffffc097          	auipc	ra,0xffffc
    800059e4:	ad8080e7          	jalr	-1320(ra) # 800014b8 <_Z8sem_openPP5MySemj>
    sem_open(&mutexHead, 1);
    800059e8:	00100593          	li	a1,1
    800059ec:	02848513          	addi	a0,s1,40
    800059f0:	ffffc097          	auipc	ra,0xffffc
    800059f4:	ac8080e7          	jalr	-1336(ra) # 800014b8 <_Z8sem_openPP5MySemj>
    sem_open(&mutexTail, 1);
    800059f8:	00100593          	li	a1,1
    800059fc:	03048513          	addi	a0,s1,48
    80005a00:	ffffc097          	auipc	ra,0xffffc
    80005a04:	ab8080e7          	jalr	-1352(ra) # 800014b8 <_Z8sem_openPP5MySemj>
}
    80005a08:	01813083          	ld	ra,24(sp)
    80005a0c:	01013403          	ld	s0,16(sp)
    80005a10:	00813483          	ld	s1,8(sp)
    80005a14:	00013903          	ld	s2,0(sp)
    80005a18:	02010113          	addi	sp,sp,32
    80005a1c:	00008067          	ret

0000000080005a20 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005a20:	fe010113          	addi	sp,sp,-32
    80005a24:	00113c23          	sd	ra,24(sp)
    80005a28:	00813823          	sd	s0,16(sp)
    80005a2c:	00913423          	sd	s1,8(sp)
    80005a30:	01213023          	sd	s2,0(sp)
    80005a34:	02010413          	addi	s0,sp,32
    80005a38:	00050493          	mv	s1,a0
    80005a3c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005a40:	01853503          	ld	a0,24(a0)
    80005a44:	ffffc097          	auipc	ra,0xffffc
    80005a48:	ad0080e7          	jalr	-1328(ra) # 80001514 <_Z8sem_waitP5MySem>

    sem_wait(mutexTail);
    80005a4c:	0304b503          	ld	a0,48(s1)
    80005a50:	ffffc097          	auipc	ra,0xffffc
    80005a54:	ac4080e7          	jalr	-1340(ra) # 80001514 <_Z8sem_waitP5MySem>
    buffer[tail] = val;
    80005a58:	0084b783          	ld	a5,8(s1)
    80005a5c:	0144a703          	lw	a4,20(s1)
    80005a60:	00271713          	slli	a4,a4,0x2
    80005a64:	00e787b3          	add	a5,a5,a4
    80005a68:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005a6c:	0144a783          	lw	a5,20(s1)
    80005a70:	0017879b          	addiw	a5,a5,1
    80005a74:	0004a703          	lw	a4,0(s1)
    80005a78:	02e7e7bb          	remw	a5,a5,a4
    80005a7c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005a80:	0304b503          	ld	a0,48(s1)
    80005a84:	ffffc097          	auipc	ra,0xffffc
    80005a88:	abc080e7          	jalr	-1348(ra) # 80001540 <_Z10sem_signalP5MySem>

    sem_signal(itemAvailable);
    80005a8c:	0204b503          	ld	a0,32(s1)
    80005a90:	ffffc097          	auipc	ra,0xffffc
    80005a94:	ab0080e7          	jalr	-1360(ra) # 80001540 <_Z10sem_signalP5MySem>

}
    80005a98:	01813083          	ld	ra,24(sp)
    80005a9c:	01013403          	ld	s0,16(sp)
    80005aa0:	00813483          	ld	s1,8(sp)
    80005aa4:	00013903          	ld	s2,0(sp)
    80005aa8:	02010113          	addi	sp,sp,32
    80005aac:	00008067          	ret

0000000080005ab0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005ab0:	fe010113          	addi	sp,sp,-32
    80005ab4:	00113c23          	sd	ra,24(sp)
    80005ab8:	00813823          	sd	s0,16(sp)
    80005abc:	00913423          	sd	s1,8(sp)
    80005ac0:	01213023          	sd	s2,0(sp)
    80005ac4:	02010413          	addi	s0,sp,32
    80005ac8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005acc:	02053503          	ld	a0,32(a0)
    80005ad0:	ffffc097          	auipc	ra,0xffffc
    80005ad4:	a44080e7          	jalr	-1468(ra) # 80001514 <_Z8sem_waitP5MySem>

    sem_wait(mutexHead);
    80005ad8:	0284b503          	ld	a0,40(s1)
    80005adc:	ffffc097          	auipc	ra,0xffffc
    80005ae0:	a38080e7          	jalr	-1480(ra) # 80001514 <_Z8sem_waitP5MySem>

    int ret = buffer[head];
    80005ae4:	0084b703          	ld	a4,8(s1)
    80005ae8:	0104a783          	lw	a5,16(s1)
    80005aec:	00279693          	slli	a3,a5,0x2
    80005af0:	00d70733          	add	a4,a4,a3
    80005af4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005af8:	0017879b          	addiw	a5,a5,1
    80005afc:	0004a703          	lw	a4,0(s1)
    80005b00:	02e7e7bb          	remw	a5,a5,a4
    80005b04:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005b08:	0284b503          	ld	a0,40(s1)
    80005b0c:	ffffc097          	auipc	ra,0xffffc
    80005b10:	a34080e7          	jalr	-1484(ra) # 80001540 <_Z10sem_signalP5MySem>

    sem_signal(spaceAvailable);
    80005b14:	0184b503          	ld	a0,24(s1)
    80005b18:	ffffc097          	auipc	ra,0xffffc
    80005b1c:	a28080e7          	jalr	-1496(ra) # 80001540 <_Z10sem_signalP5MySem>

    return ret;
}
    80005b20:	00090513          	mv	a0,s2
    80005b24:	01813083          	ld	ra,24(sp)
    80005b28:	01013403          	ld	s0,16(sp)
    80005b2c:	00813483          	ld	s1,8(sp)
    80005b30:	00013903          	ld	s2,0(sp)
    80005b34:	02010113          	addi	sp,sp,32
    80005b38:	00008067          	ret

0000000080005b3c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005b3c:	fe010113          	addi	sp,sp,-32
    80005b40:	00113c23          	sd	ra,24(sp)
    80005b44:	00813823          	sd	s0,16(sp)
    80005b48:	00913423          	sd	s1,8(sp)
    80005b4c:	01213023          	sd	s2,0(sp)
    80005b50:	02010413          	addi	s0,sp,32
    80005b54:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005b58:	02853503          	ld	a0,40(a0)
    80005b5c:	ffffc097          	auipc	ra,0xffffc
    80005b60:	9b8080e7          	jalr	-1608(ra) # 80001514 <_Z8sem_waitP5MySem>
    sem_wait(mutexTail);
    80005b64:	0304b503          	ld	a0,48(s1)
    80005b68:	ffffc097          	auipc	ra,0xffffc
    80005b6c:	9ac080e7          	jalr	-1620(ra) # 80001514 <_Z8sem_waitP5MySem>

    if (tail >= head) {
    80005b70:	0144a783          	lw	a5,20(s1)
    80005b74:	0104a903          	lw	s2,16(s1)
    80005b78:	0327ce63          	blt	a5,s2,80005bb4 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005b7c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005b80:	0304b503          	ld	a0,48(s1)
    80005b84:	ffffc097          	auipc	ra,0xffffc
    80005b88:	9bc080e7          	jalr	-1604(ra) # 80001540 <_Z10sem_signalP5MySem>
    sem_signal(mutexHead);
    80005b8c:	0284b503          	ld	a0,40(s1)
    80005b90:	ffffc097          	auipc	ra,0xffffc
    80005b94:	9b0080e7          	jalr	-1616(ra) # 80001540 <_Z10sem_signalP5MySem>

    return ret;
}
    80005b98:	00090513          	mv	a0,s2
    80005b9c:	01813083          	ld	ra,24(sp)
    80005ba0:	01013403          	ld	s0,16(sp)
    80005ba4:	00813483          	ld	s1,8(sp)
    80005ba8:	00013903          	ld	s2,0(sp)
    80005bac:	02010113          	addi	sp,sp,32
    80005bb0:	00008067          	ret
        ret = cap - head + tail;
    80005bb4:	0004a703          	lw	a4,0(s1)
    80005bb8:	4127093b          	subw	s2,a4,s2
    80005bbc:	00f9093b          	addw	s2,s2,a5
    80005bc0:	fc1ff06f          	j	80005b80 <_ZN6Buffer6getCntEv+0x44>

0000000080005bc4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005bc4:	fe010113          	addi	sp,sp,-32
    80005bc8:	00113c23          	sd	ra,24(sp)
    80005bcc:	00813823          	sd	s0,16(sp)
    80005bd0:	00913423          	sd	s1,8(sp)
    80005bd4:	02010413          	addi	s0,sp,32
    80005bd8:	00050493          	mv	s1,a0
    putc('\n');
    80005bdc:	00a00513          	li	a0,10
    80005be0:	ffffc097          	auipc	ra,0xffffc
    80005be4:	9f0080e7          	jalr	-1552(ra) # 800015d0 <_Z4putcc>
    printString("Buffer deleted!\n");
    80005be8:	00002517          	auipc	a0,0x2
    80005bec:	62850513          	addi	a0,a0,1576 # 80008210 <CONSOLE_STATUS+0x200>
    80005bf0:	fffff097          	auipc	ra,0xfffff
    80005bf4:	e70080e7          	jalr	-400(ra) # 80004a60 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005bf8:	00048513          	mv	a0,s1
    80005bfc:	00000097          	auipc	ra,0x0
    80005c00:	f40080e7          	jalr	-192(ra) # 80005b3c <_ZN6Buffer6getCntEv>
    80005c04:	02a05c63          	blez	a0,80005c3c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005c08:	0084b783          	ld	a5,8(s1)
    80005c0c:	0104a703          	lw	a4,16(s1)
    80005c10:	00271713          	slli	a4,a4,0x2
    80005c14:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005c18:	0007c503          	lbu	a0,0(a5)
    80005c1c:	ffffc097          	auipc	ra,0xffffc
    80005c20:	9b4080e7          	jalr	-1612(ra) # 800015d0 <_Z4putcc>
        head = (head + 1) % cap;
    80005c24:	0104a783          	lw	a5,16(s1)
    80005c28:	0017879b          	addiw	a5,a5,1
    80005c2c:	0004a703          	lw	a4,0(s1)
    80005c30:	02e7e7bb          	remw	a5,a5,a4
    80005c34:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005c38:	fc1ff06f          	j	80005bf8 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005c3c:	02100513          	li	a0,33
    80005c40:	ffffc097          	auipc	ra,0xffffc
    80005c44:	990080e7          	jalr	-1648(ra) # 800015d0 <_Z4putcc>
    putc('\n');
    80005c48:	00a00513          	li	a0,10
    80005c4c:	ffffc097          	auipc	ra,0xffffc
    80005c50:	984080e7          	jalr	-1660(ra) # 800015d0 <_Z4putcc>
    mem_free(buffer);
    80005c54:	0084b503          	ld	a0,8(s1)
    80005c58:	ffffb097          	auipc	ra,0xffffb
    80005c5c:	74c080e7          	jalr	1868(ra) # 800013a4 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005c60:	0204b503          	ld	a0,32(s1)
    80005c64:	ffffc097          	auipc	ra,0xffffc
    80005c68:	884080e7          	jalr	-1916(ra) # 800014e8 <_Z9sem_closeP5MySem>
    sem_close(spaceAvailable);
    80005c6c:	0184b503          	ld	a0,24(s1)
    80005c70:	ffffc097          	auipc	ra,0xffffc
    80005c74:	878080e7          	jalr	-1928(ra) # 800014e8 <_Z9sem_closeP5MySem>
    sem_close(mutexTail);
    80005c78:	0304b503          	ld	a0,48(s1)
    80005c7c:	ffffc097          	auipc	ra,0xffffc
    80005c80:	86c080e7          	jalr	-1940(ra) # 800014e8 <_Z9sem_closeP5MySem>
    sem_close(mutexHead);
    80005c84:	0284b503          	ld	a0,40(s1)
    80005c88:	ffffc097          	auipc	ra,0xffffc
    80005c8c:	860080e7          	jalr	-1952(ra) # 800014e8 <_Z9sem_closeP5MySem>
}
    80005c90:	01813083          	ld	ra,24(sp)
    80005c94:	01013403          	ld	s0,16(sp)
    80005c98:	00813483          	ld	s1,8(sp)
    80005c9c:	02010113          	addi	sp,sp,32
    80005ca0:	00008067          	ret

0000000080005ca4 <start>:
    80005ca4:	ff010113          	addi	sp,sp,-16
    80005ca8:	00813423          	sd	s0,8(sp)
    80005cac:	01010413          	addi	s0,sp,16
    80005cb0:	300027f3          	csrr	a5,mstatus
    80005cb4:	ffffe737          	lui	a4,0xffffe
    80005cb8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff311f>
    80005cbc:	00e7f7b3          	and	a5,a5,a4
    80005cc0:	00001737          	lui	a4,0x1
    80005cc4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005cc8:	00e7e7b3          	or	a5,a5,a4
    80005ccc:	30079073          	csrw	mstatus,a5
    80005cd0:	00000797          	auipc	a5,0x0
    80005cd4:	16078793          	addi	a5,a5,352 # 80005e30 <system_main>
    80005cd8:	34179073          	csrw	mepc,a5
    80005cdc:	00000793          	li	a5,0
    80005ce0:	18079073          	csrw	satp,a5
    80005ce4:	000107b7          	lui	a5,0x10
    80005ce8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005cec:	30279073          	csrw	medeleg,a5
    80005cf0:	30379073          	csrw	mideleg,a5
    80005cf4:	104027f3          	csrr	a5,sie
    80005cf8:	2227e793          	ori	a5,a5,546
    80005cfc:	10479073          	csrw	sie,a5
    80005d00:	fff00793          	li	a5,-1
    80005d04:	00a7d793          	srli	a5,a5,0xa
    80005d08:	3b079073          	csrw	pmpaddr0,a5
    80005d0c:	00f00793          	li	a5,15
    80005d10:	3a079073          	csrw	pmpcfg0,a5
    80005d14:	f14027f3          	csrr	a5,mhartid
    80005d18:	0200c737          	lui	a4,0x200c
    80005d1c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005d20:	0007869b          	sext.w	a3,a5
    80005d24:	00269713          	slli	a4,a3,0x2
    80005d28:	000f4637          	lui	a2,0xf4
    80005d2c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005d30:	00d70733          	add	a4,a4,a3
    80005d34:	0037979b          	slliw	a5,a5,0x3
    80005d38:	020046b7          	lui	a3,0x2004
    80005d3c:	00d787b3          	add	a5,a5,a3
    80005d40:	00c585b3          	add	a1,a1,a2
    80005d44:	00371693          	slli	a3,a4,0x3
    80005d48:	00004717          	auipc	a4,0x4
    80005d4c:	73870713          	addi	a4,a4,1848 # 8000a480 <timer_scratch>
    80005d50:	00b7b023          	sd	a1,0(a5)
    80005d54:	00d70733          	add	a4,a4,a3
    80005d58:	00f73c23          	sd	a5,24(a4)
    80005d5c:	02c73023          	sd	a2,32(a4)
    80005d60:	34071073          	csrw	mscratch,a4
    80005d64:	00000797          	auipc	a5,0x0
    80005d68:	6ec78793          	addi	a5,a5,1772 # 80006450 <timervec>
    80005d6c:	30579073          	csrw	mtvec,a5
    80005d70:	300027f3          	csrr	a5,mstatus
    80005d74:	0087e793          	ori	a5,a5,8
    80005d78:	30079073          	csrw	mstatus,a5
    80005d7c:	304027f3          	csrr	a5,mie
    80005d80:	0807e793          	ori	a5,a5,128
    80005d84:	30479073          	csrw	mie,a5
    80005d88:	f14027f3          	csrr	a5,mhartid
    80005d8c:	0007879b          	sext.w	a5,a5
    80005d90:	00078213          	mv	tp,a5
    80005d94:	30200073          	mret
    80005d98:	00813403          	ld	s0,8(sp)
    80005d9c:	01010113          	addi	sp,sp,16
    80005da0:	00008067          	ret

0000000080005da4 <timerinit>:
    80005da4:	ff010113          	addi	sp,sp,-16
    80005da8:	00813423          	sd	s0,8(sp)
    80005dac:	01010413          	addi	s0,sp,16
    80005db0:	f14027f3          	csrr	a5,mhartid
    80005db4:	0200c737          	lui	a4,0x200c
    80005db8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005dbc:	0007869b          	sext.w	a3,a5
    80005dc0:	00269713          	slli	a4,a3,0x2
    80005dc4:	000f4637          	lui	a2,0xf4
    80005dc8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005dcc:	00d70733          	add	a4,a4,a3
    80005dd0:	0037979b          	slliw	a5,a5,0x3
    80005dd4:	020046b7          	lui	a3,0x2004
    80005dd8:	00d787b3          	add	a5,a5,a3
    80005ddc:	00c585b3          	add	a1,a1,a2
    80005de0:	00371693          	slli	a3,a4,0x3
    80005de4:	00004717          	auipc	a4,0x4
    80005de8:	69c70713          	addi	a4,a4,1692 # 8000a480 <timer_scratch>
    80005dec:	00b7b023          	sd	a1,0(a5)
    80005df0:	00d70733          	add	a4,a4,a3
    80005df4:	00f73c23          	sd	a5,24(a4)
    80005df8:	02c73023          	sd	a2,32(a4)
    80005dfc:	34071073          	csrw	mscratch,a4
    80005e00:	00000797          	auipc	a5,0x0
    80005e04:	65078793          	addi	a5,a5,1616 # 80006450 <timervec>
    80005e08:	30579073          	csrw	mtvec,a5
    80005e0c:	300027f3          	csrr	a5,mstatus
    80005e10:	0087e793          	ori	a5,a5,8
    80005e14:	30079073          	csrw	mstatus,a5
    80005e18:	304027f3          	csrr	a5,mie
    80005e1c:	0807e793          	ori	a5,a5,128
    80005e20:	30479073          	csrw	mie,a5
    80005e24:	00813403          	ld	s0,8(sp)
    80005e28:	01010113          	addi	sp,sp,16
    80005e2c:	00008067          	ret

0000000080005e30 <system_main>:
    80005e30:	fe010113          	addi	sp,sp,-32
    80005e34:	00813823          	sd	s0,16(sp)
    80005e38:	00913423          	sd	s1,8(sp)
    80005e3c:	00113c23          	sd	ra,24(sp)
    80005e40:	02010413          	addi	s0,sp,32
    80005e44:	00000097          	auipc	ra,0x0
    80005e48:	0c4080e7          	jalr	196(ra) # 80005f08 <cpuid>
    80005e4c:	00004497          	auipc	s1,0x4
    80005e50:	59448493          	addi	s1,s1,1428 # 8000a3e0 <started>
    80005e54:	02050263          	beqz	a0,80005e78 <system_main+0x48>
    80005e58:	0004a783          	lw	a5,0(s1)
    80005e5c:	0007879b          	sext.w	a5,a5
    80005e60:	fe078ce3          	beqz	a5,80005e58 <system_main+0x28>
    80005e64:	0ff0000f          	fence
    80005e68:	00002517          	auipc	a0,0x2
    80005e6c:	63850513          	addi	a0,a0,1592 # 800084a0 <CONSOLE_STATUS+0x490>
    80005e70:	00001097          	auipc	ra,0x1
    80005e74:	a7c080e7          	jalr	-1412(ra) # 800068ec <panic>
    80005e78:	00001097          	auipc	ra,0x1
    80005e7c:	9d0080e7          	jalr	-1584(ra) # 80006848 <consoleinit>
    80005e80:	00001097          	auipc	ra,0x1
    80005e84:	15c080e7          	jalr	348(ra) # 80006fdc <printfinit>
    80005e88:	00002517          	auipc	a0,0x2
    80005e8c:	51050513          	addi	a0,a0,1296 # 80008398 <CONSOLE_STATUS+0x388>
    80005e90:	00001097          	auipc	ra,0x1
    80005e94:	ab8080e7          	jalr	-1352(ra) # 80006948 <__printf>
    80005e98:	00002517          	auipc	a0,0x2
    80005e9c:	5d850513          	addi	a0,a0,1496 # 80008470 <CONSOLE_STATUS+0x460>
    80005ea0:	00001097          	auipc	ra,0x1
    80005ea4:	aa8080e7          	jalr	-1368(ra) # 80006948 <__printf>
    80005ea8:	00002517          	auipc	a0,0x2
    80005eac:	4f050513          	addi	a0,a0,1264 # 80008398 <CONSOLE_STATUS+0x388>
    80005eb0:	00001097          	auipc	ra,0x1
    80005eb4:	a98080e7          	jalr	-1384(ra) # 80006948 <__printf>
    80005eb8:	00001097          	auipc	ra,0x1
    80005ebc:	4b0080e7          	jalr	1200(ra) # 80007368 <kinit>
    80005ec0:	00000097          	auipc	ra,0x0
    80005ec4:	148080e7          	jalr	328(ra) # 80006008 <trapinit>
    80005ec8:	00000097          	auipc	ra,0x0
    80005ecc:	16c080e7          	jalr	364(ra) # 80006034 <trapinithart>
    80005ed0:	00000097          	auipc	ra,0x0
    80005ed4:	5c0080e7          	jalr	1472(ra) # 80006490 <plicinit>
    80005ed8:	00000097          	auipc	ra,0x0
    80005edc:	5e0080e7          	jalr	1504(ra) # 800064b8 <plicinithart>
    80005ee0:	00000097          	auipc	ra,0x0
    80005ee4:	078080e7          	jalr	120(ra) # 80005f58 <userinit>
    80005ee8:	0ff0000f          	fence
    80005eec:	00100793          	li	a5,1
    80005ef0:	00002517          	auipc	a0,0x2
    80005ef4:	59850513          	addi	a0,a0,1432 # 80008488 <CONSOLE_STATUS+0x478>
    80005ef8:	00f4a023          	sw	a5,0(s1)
    80005efc:	00001097          	auipc	ra,0x1
    80005f00:	a4c080e7          	jalr	-1460(ra) # 80006948 <__printf>
    80005f04:	0000006f          	j	80005f04 <system_main+0xd4>

0000000080005f08 <cpuid>:
    80005f08:	ff010113          	addi	sp,sp,-16
    80005f0c:	00813423          	sd	s0,8(sp)
    80005f10:	01010413          	addi	s0,sp,16
    80005f14:	00020513          	mv	a0,tp
    80005f18:	00813403          	ld	s0,8(sp)
    80005f1c:	0005051b          	sext.w	a0,a0
    80005f20:	01010113          	addi	sp,sp,16
    80005f24:	00008067          	ret

0000000080005f28 <mycpu>:
    80005f28:	ff010113          	addi	sp,sp,-16
    80005f2c:	00813423          	sd	s0,8(sp)
    80005f30:	01010413          	addi	s0,sp,16
    80005f34:	00020793          	mv	a5,tp
    80005f38:	00813403          	ld	s0,8(sp)
    80005f3c:	0007879b          	sext.w	a5,a5
    80005f40:	00779793          	slli	a5,a5,0x7
    80005f44:	00005517          	auipc	a0,0x5
    80005f48:	56c50513          	addi	a0,a0,1388 # 8000b4b0 <cpus>
    80005f4c:	00f50533          	add	a0,a0,a5
    80005f50:	01010113          	addi	sp,sp,16
    80005f54:	00008067          	ret

0000000080005f58 <userinit>:
    80005f58:	ff010113          	addi	sp,sp,-16
    80005f5c:	00813423          	sd	s0,8(sp)
    80005f60:	01010413          	addi	s0,sp,16
    80005f64:	00813403          	ld	s0,8(sp)
    80005f68:	01010113          	addi	sp,sp,16
    80005f6c:	ffffb317          	auipc	t1,0xffffb
    80005f70:	77830067          	jr	1912(t1) # 800016e4 <main>

0000000080005f74 <either_copyout>:
    80005f74:	ff010113          	addi	sp,sp,-16
    80005f78:	00813023          	sd	s0,0(sp)
    80005f7c:	00113423          	sd	ra,8(sp)
    80005f80:	01010413          	addi	s0,sp,16
    80005f84:	02051663          	bnez	a0,80005fb0 <either_copyout+0x3c>
    80005f88:	00058513          	mv	a0,a1
    80005f8c:	00060593          	mv	a1,a2
    80005f90:	0006861b          	sext.w	a2,a3
    80005f94:	00002097          	auipc	ra,0x2
    80005f98:	c60080e7          	jalr	-928(ra) # 80007bf4 <__memmove>
    80005f9c:	00813083          	ld	ra,8(sp)
    80005fa0:	00013403          	ld	s0,0(sp)
    80005fa4:	00000513          	li	a0,0
    80005fa8:	01010113          	addi	sp,sp,16
    80005fac:	00008067          	ret
    80005fb0:	00002517          	auipc	a0,0x2
    80005fb4:	51850513          	addi	a0,a0,1304 # 800084c8 <CONSOLE_STATUS+0x4b8>
    80005fb8:	00001097          	auipc	ra,0x1
    80005fbc:	934080e7          	jalr	-1740(ra) # 800068ec <panic>

0000000080005fc0 <either_copyin>:
    80005fc0:	ff010113          	addi	sp,sp,-16
    80005fc4:	00813023          	sd	s0,0(sp)
    80005fc8:	00113423          	sd	ra,8(sp)
    80005fcc:	01010413          	addi	s0,sp,16
    80005fd0:	02059463          	bnez	a1,80005ff8 <either_copyin+0x38>
    80005fd4:	00060593          	mv	a1,a2
    80005fd8:	0006861b          	sext.w	a2,a3
    80005fdc:	00002097          	auipc	ra,0x2
    80005fe0:	c18080e7          	jalr	-1000(ra) # 80007bf4 <__memmove>
    80005fe4:	00813083          	ld	ra,8(sp)
    80005fe8:	00013403          	ld	s0,0(sp)
    80005fec:	00000513          	li	a0,0
    80005ff0:	01010113          	addi	sp,sp,16
    80005ff4:	00008067          	ret
    80005ff8:	00002517          	auipc	a0,0x2
    80005ffc:	4f850513          	addi	a0,a0,1272 # 800084f0 <CONSOLE_STATUS+0x4e0>
    80006000:	00001097          	auipc	ra,0x1
    80006004:	8ec080e7          	jalr	-1812(ra) # 800068ec <panic>

0000000080006008 <trapinit>:
    80006008:	ff010113          	addi	sp,sp,-16
    8000600c:	00813423          	sd	s0,8(sp)
    80006010:	01010413          	addi	s0,sp,16
    80006014:	00813403          	ld	s0,8(sp)
    80006018:	00002597          	auipc	a1,0x2
    8000601c:	50058593          	addi	a1,a1,1280 # 80008518 <CONSOLE_STATUS+0x508>
    80006020:	00005517          	auipc	a0,0x5
    80006024:	51050513          	addi	a0,a0,1296 # 8000b530 <tickslock>
    80006028:	01010113          	addi	sp,sp,16
    8000602c:	00001317          	auipc	t1,0x1
    80006030:	5cc30067          	jr	1484(t1) # 800075f8 <initlock>

0000000080006034 <trapinithart>:
    80006034:	ff010113          	addi	sp,sp,-16
    80006038:	00813423          	sd	s0,8(sp)
    8000603c:	01010413          	addi	s0,sp,16
    80006040:	00000797          	auipc	a5,0x0
    80006044:	30078793          	addi	a5,a5,768 # 80006340 <kernelvec>
    80006048:	10579073          	csrw	stvec,a5
    8000604c:	00813403          	ld	s0,8(sp)
    80006050:	01010113          	addi	sp,sp,16
    80006054:	00008067          	ret

0000000080006058 <usertrap>:
    80006058:	ff010113          	addi	sp,sp,-16
    8000605c:	00813423          	sd	s0,8(sp)
    80006060:	01010413          	addi	s0,sp,16
    80006064:	00813403          	ld	s0,8(sp)
    80006068:	01010113          	addi	sp,sp,16
    8000606c:	00008067          	ret

0000000080006070 <usertrapret>:
    80006070:	ff010113          	addi	sp,sp,-16
    80006074:	00813423          	sd	s0,8(sp)
    80006078:	01010413          	addi	s0,sp,16
    8000607c:	00813403          	ld	s0,8(sp)
    80006080:	01010113          	addi	sp,sp,16
    80006084:	00008067          	ret

0000000080006088 <kerneltrap>:
    80006088:	fe010113          	addi	sp,sp,-32
    8000608c:	00813823          	sd	s0,16(sp)
    80006090:	00113c23          	sd	ra,24(sp)
    80006094:	00913423          	sd	s1,8(sp)
    80006098:	02010413          	addi	s0,sp,32
    8000609c:	142025f3          	csrr	a1,scause
    800060a0:	100027f3          	csrr	a5,sstatus
    800060a4:	0027f793          	andi	a5,a5,2
    800060a8:	10079c63          	bnez	a5,800061c0 <kerneltrap+0x138>
    800060ac:	142027f3          	csrr	a5,scause
    800060b0:	0207ce63          	bltz	a5,800060ec <kerneltrap+0x64>
    800060b4:	00002517          	auipc	a0,0x2
    800060b8:	4ac50513          	addi	a0,a0,1196 # 80008560 <CONSOLE_STATUS+0x550>
    800060bc:	00001097          	auipc	ra,0x1
    800060c0:	88c080e7          	jalr	-1908(ra) # 80006948 <__printf>
    800060c4:	141025f3          	csrr	a1,sepc
    800060c8:	14302673          	csrr	a2,stval
    800060cc:	00002517          	auipc	a0,0x2
    800060d0:	4a450513          	addi	a0,a0,1188 # 80008570 <CONSOLE_STATUS+0x560>
    800060d4:	00001097          	auipc	ra,0x1
    800060d8:	874080e7          	jalr	-1932(ra) # 80006948 <__printf>
    800060dc:	00002517          	auipc	a0,0x2
    800060e0:	4ac50513          	addi	a0,a0,1196 # 80008588 <CONSOLE_STATUS+0x578>
    800060e4:	00001097          	auipc	ra,0x1
    800060e8:	808080e7          	jalr	-2040(ra) # 800068ec <panic>
    800060ec:	0ff7f713          	andi	a4,a5,255
    800060f0:	00900693          	li	a3,9
    800060f4:	04d70063          	beq	a4,a3,80006134 <kerneltrap+0xac>
    800060f8:	fff00713          	li	a4,-1
    800060fc:	03f71713          	slli	a4,a4,0x3f
    80006100:	00170713          	addi	a4,a4,1
    80006104:	fae798e3          	bne	a5,a4,800060b4 <kerneltrap+0x2c>
    80006108:	00000097          	auipc	ra,0x0
    8000610c:	e00080e7          	jalr	-512(ra) # 80005f08 <cpuid>
    80006110:	06050663          	beqz	a0,8000617c <kerneltrap+0xf4>
    80006114:	144027f3          	csrr	a5,sip
    80006118:	ffd7f793          	andi	a5,a5,-3
    8000611c:	14479073          	csrw	sip,a5
    80006120:	01813083          	ld	ra,24(sp)
    80006124:	01013403          	ld	s0,16(sp)
    80006128:	00813483          	ld	s1,8(sp)
    8000612c:	02010113          	addi	sp,sp,32
    80006130:	00008067          	ret
    80006134:	00000097          	auipc	ra,0x0
    80006138:	3d0080e7          	jalr	976(ra) # 80006504 <plic_claim>
    8000613c:	00a00793          	li	a5,10
    80006140:	00050493          	mv	s1,a0
    80006144:	06f50863          	beq	a0,a5,800061b4 <kerneltrap+0x12c>
    80006148:	fc050ce3          	beqz	a0,80006120 <kerneltrap+0x98>
    8000614c:	00050593          	mv	a1,a0
    80006150:	00002517          	auipc	a0,0x2
    80006154:	3f050513          	addi	a0,a0,1008 # 80008540 <CONSOLE_STATUS+0x530>
    80006158:	00000097          	auipc	ra,0x0
    8000615c:	7f0080e7          	jalr	2032(ra) # 80006948 <__printf>
    80006160:	01013403          	ld	s0,16(sp)
    80006164:	01813083          	ld	ra,24(sp)
    80006168:	00048513          	mv	a0,s1
    8000616c:	00813483          	ld	s1,8(sp)
    80006170:	02010113          	addi	sp,sp,32
    80006174:	00000317          	auipc	t1,0x0
    80006178:	3c830067          	jr	968(t1) # 8000653c <plic_complete>
    8000617c:	00005517          	auipc	a0,0x5
    80006180:	3b450513          	addi	a0,a0,948 # 8000b530 <tickslock>
    80006184:	00001097          	auipc	ra,0x1
    80006188:	498080e7          	jalr	1176(ra) # 8000761c <acquire>
    8000618c:	00004717          	auipc	a4,0x4
    80006190:	25870713          	addi	a4,a4,600 # 8000a3e4 <ticks>
    80006194:	00072783          	lw	a5,0(a4)
    80006198:	00005517          	auipc	a0,0x5
    8000619c:	39850513          	addi	a0,a0,920 # 8000b530 <tickslock>
    800061a0:	0017879b          	addiw	a5,a5,1
    800061a4:	00f72023          	sw	a5,0(a4)
    800061a8:	00001097          	auipc	ra,0x1
    800061ac:	540080e7          	jalr	1344(ra) # 800076e8 <release>
    800061b0:	f65ff06f          	j	80006114 <kerneltrap+0x8c>
    800061b4:	00001097          	auipc	ra,0x1
    800061b8:	09c080e7          	jalr	156(ra) # 80007250 <uartintr>
    800061bc:	fa5ff06f          	j	80006160 <kerneltrap+0xd8>
    800061c0:	00002517          	auipc	a0,0x2
    800061c4:	36050513          	addi	a0,a0,864 # 80008520 <CONSOLE_STATUS+0x510>
    800061c8:	00000097          	auipc	ra,0x0
    800061cc:	724080e7          	jalr	1828(ra) # 800068ec <panic>

00000000800061d0 <clockintr>:
    800061d0:	fe010113          	addi	sp,sp,-32
    800061d4:	00813823          	sd	s0,16(sp)
    800061d8:	00913423          	sd	s1,8(sp)
    800061dc:	00113c23          	sd	ra,24(sp)
    800061e0:	02010413          	addi	s0,sp,32
    800061e4:	00005497          	auipc	s1,0x5
    800061e8:	34c48493          	addi	s1,s1,844 # 8000b530 <tickslock>
    800061ec:	00048513          	mv	a0,s1
    800061f0:	00001097          	auipc	ra,0x1
    800061f4:	42c080e7          	jalr	1068(ra) # 8000761c <acquire>
    800061f8:	00004717          	auipc	a4,0x4
    800061fc:	1ec70713          	addi	a4,a4,492 # 8000a3e4 <ticks>
    80006200:	00072783          	lw	a5,0(a4)
    80006204:	01013403          	ld	s0,16(sp)
    80006208:	01813083          	ld	ra,24(sp)
    8000620c:	00048513          	mv	a0,s1
    80006210:	0017879b          	addiw	a5,a5,1
    80006214:	00813483          	ld	s1,8(sp)
    80006218:	00f72023          	sw	a5,0(a4)
    8000621c:	02010113          	addi	sp,sp,32
    80006220:	00001317          	auipc	t1,0x1
    80006224:	4c830067          	jr	1224(t1) # 800076e8 <release>

0000000080006228 <devintr>:
    80006228:	142027f3          	csrr	a5,scause
    8000622c:	00000513          	li	a0,0
    80006230:	0007c463          	bltz	a5,80006238 <devintr+0x10>
    80006234:	00008067          	ret
    80006238:	fe010113          	addi	sp,sp,-32
    8000623c:	00813823          	sd	s0,16(sp)
    80006240:	00113c23          	sd	ra,24(sp)
    80006244:	00913423          	sd	s1,8(sp)
    80006248:	02010413          	addi	s0,sp,32
    8000624c:	0ff7f713          	andi	a4,a5,255
    80006250:	00900693          	li	a3,9
    80006254:	04d70c63          	beq	a4,a3,800062ac <devintr+0x84>
    80006258:	fff00713          	li	a4,-1
    8000625c:	03f71713          	slli	a4,a4,0x3f
    80006260:	00170713          	addi	a4,a4,1
    80006264:	00e78c63          	beq	a5,a4,8000627c <devintr+0x54>
    80006268:	01813083          	ld	ra,24(sp)
    8000626c:	01013403          	ld	s0,16(sp)
    80006270:	00813483          	ld	s1,8(sp)
    80006274:	02010113          	addi	sp,sp,32
    80006278:	00008067          	ret
    8000627c:	00000097          	auipc	ra,0x0
    80006280:	c8c080e7          	jalr	-884(ra) # 80005f08 <cpuid>
    80006284:	06050663          	beqz	a0,800062f0 <devintr+0xc8>
    80006288:	144027f3          	csrr	a5,sip
    8000628c:	ffd7f793          	andi	a5,a5,-3
    80006290:	14479073          	csrw	sip,a5
    80006294:	01813083          	ld	ra,24(sp)
    80006298:	01013403          	ld	s0,16(sp)
    8000629c:	00813483          	ld	s1,8(sp)
    800062a0:	00200513          	li	a0,2
    800062a4:	02010113          	addi	sp,sp,32
    800062a8:	00008067          	ret
    800062ac:	00000097          	auipc	ra,0x0
    800062b0:	258080e7          	jalr	600(ra) # 80006504 <plic_claim>
    800062b4:	00a00793          	li	a5,10
    800062b8:	00050493          	mv	s1,a0
    800062bc:	06f50663          	beq	a0,a5,80006328 <devintr+0x100>
    800062c0:	00100513          	li	a0,1
    800062c4:	fa0482e3          	beqz	s1,80006268 <devintr+0x40>
    800062c8:	00048593          	mv	a1,s1
    800062cc:	00002517          	auipc	a0,0x2
    800062d0:	27450513          	addi	a0,a0,628 # 80008540 <CONSOLE_STATUS+0x530>
    800062d4:	00000097          	auipc	ra,0x0
    800062d8:	674080e7          	jalr	1652(ra) # 80006948 <__printf>
    800062dc:	00048513          	mv	a0,s1
    800062e0:	00000097          	auipc	ra,0x0
    800062e4:	25c080e7          	jalr	604(ra) # 8000653c <plic_complete>
    800062e8:	00100513          	li	a0,1
    800062ec:	f7dff06f          	j	80006268 <devintr+0x40>
    800062f0:	00005517          	auipc	a0,0x5
    800062f4:	24050513          	addi	a0,a0,576 # 8000b530 <tickslock>
    800062f8:	00001097          	auipc	ra,0x1
    800062fc:	324080e7          	jalr	804(ra) # 8000761c <acquire>
    80006300:	00004717          	auipc	a4,0x4
    80006304:	0e470713          	addi	a4,a4,228 # 8000a3e4 <ticks>
    80006308:	00072783          	lw	a5,0(a4)
    8000630c:	00005517          	auipc	a0,0x5
    80006310:	22450513          	addi	a0,a0,548 # 8000b530 <tickslock>
    80006314:	0017879b          	addiw	a5,a5,1
    80006318:	00f72023          	sw	a5,0(a4)
    8000631c:	00001097          	auipc	ra,0x1
    80006320:	3cc080e7          	jalr	972(ra) # 800076e8 <release>
    80006324:	f65ff06f          	j	80006288 <devintr+0x60>
    80006328:	00001097          	auipc	ra,0x1
    8000632c:	f28080e7          	jalr	-216(ra) # 80007250 <uartintr>
    80006330:	fadff06f          	j	800062dc <devintr+0xb4>
	...

0000000080006340 <kernelvec>:
    80006340:	f0010113          	addi	sp,sp,-256
    80006344:	00113023          	sd	ra,0(sp)
    80006348:	00213423          	sd	sp,8(sp)
    8000634c:	00313823          	sd	gp,16(sp)
    80006350:	00413c23          	sd	tp,24(sp)
    80006354:	02513023          	sd	t0,32(sp)
    80006358:	02613423          	sd	t1,40(sp)
    8000635c:	02713823          	sd	t2,48(sp)
    80006360:	02813c23          	sd	s0,56(sp)
    80006364:	04913023          	sd	s1,64(sp)
    80006368:	04a13423          	sd	a0,72(sp)
    8000636c:	04b13823          	sd	a1,80(sp)
    80006370:	04c13c23          	sd	a2,88(sp)
    80006374:	06d13023          	sd	a3,96(sp)
    80006378:	06e13423          	sd	a4,104(sp)
    8000637c:	06f13823          	sd	a5,112(sp)
    80006380:	07013c23          	sd	a6,120(sp)
    80006384:	09113023          	sd	a7,128(sp)
    80006388:	09213423          	sd	s2,136(sp)
    8000638c:	09313823          	sd	s3,144(sp)
    80006390:	09413c23          	sd	s4,152(sp)
    80006394:	0b513023          	sd	s5,160(sp)
    80006398:	0b613423          	sd	s6,168(sp)
    8000639c:	0b713823          	sd	s7,176(sp)
    800063a0:	0b813c23          	sd	s8,184(sp)
    800063a4:	0d913023          	sd	s9,192(sp)
    800063a8:	0da13423          	sd	s10,200(sp)
    800063ac:	0db13823          	sd	s11,208(sp)
    800063b0:	0dc13c23          	sd	t3,216(sp)
    800063b4:	0fd13023          	sd	t4,224(sp)
    800063b8:	0fe13423          	sd	t5,232(sp)
    800063bc:	0ff13823          	sd	t6,240(sp)
    800063c0:	cc9ff0ef          	jal	ra,80006088 <kerneltrap>
    800063c4:	00013083          	ld	ra,0(sp)
    800063c8:	00813103          	ld	sp,8(sp)
    800063cc:	01013183          	ld	gp,16(sp)
    800063d0:	02013283          	ld	t0,32(sp)
    800063d4:	02813303          	ld	t1,40(sp)
    800063d8:	03013383          	ld	t2,48(sp)
    800063dc:	03813403          	ld	s0,56(sp)
    800063e0:	04013483          	ld	s1,64(sp)
    800063e4:	04813503          	ld	a0,72(sp)
    800063e8:	05013583          	ld	a1,80(sp)
    800063ec:	05813603          	ld	a2,88(sp)
    800063f0:	06013683          	ld	a3,96(sp)
    800063f4:	06813703          	ld	a4,104(sp)
    800063f8:	07013783          	ld	a5,112(sp)
    800063fc:	07813803          	ld	a6,120(sp)
    80006400:	08013883          	ld	a7,128(sp)
    80006404:	08813903          	ld	s2,136(sp)
    80006408:	09013983          	ld	s3,144(sp)
    8000640c:	09813a03          	ld	s4,152(sp)
    80006410:	0a013a83          	ld	s5,160(sp)
    80006414:	0a813b03          	ld	s6,168(sp)
    80006418:	0b013b83          	ld	s7,176(sp)
    8000641c:	0b813c03          	ld	s8,184(sp)
    80006420:	0c013c83          	ld	s9,192(sp)
    80006424:	0c813d03          	ld	s10,200(sp)
    80006428:	0d013d83          	ld	s11,208(sp)
    8000642c:	0d813e03          	ld	t3,216(sp)
    80006430:	0e013e83          	ld	t4,224(sp)
    80006434:	0e813f03          	ld	t5,232(sp)
    80006438:	0f013f83          	ld	t6,240(sp)
    8000643c:	10010113          	addi	sp,sp,256
    80006440:	10200073          	sret
    80006444:	00000013          	nop
    80006448:	00000013          	nop
    8000644c:	00000013          	nop

0000000080006450 <timervec>:
    80006450:	34051573          	csrrw	a0,mscratch,a0
    80006454:	00b53023          	sd	a1,0(a0)
    80006458:	00c53423          	sd	a2,8(a0)
    8000645c:	00d53823          	sd	a3,16(a0)
    80006460:	01853583          	ld	a1,24(a0)
    80006464:	02053603          	ld	a2,32(a0)
    80006468:	0005b683          	ld	a3,0(a1)
    8000646c:	00c686b3          	add	a3,a3,a2
    80006470:	00d5b023          	sd	a3,0(a1)
    80006474:	00200593          	li	a1,2
    80006478:	14459073          	csrw	sip,a1
    8000647c:	01053683          	ld	a3,16(a0)
    80006480:	00853603          	ld	a2,8(a0)
    80006484:	00053583          	ld	a1,0(a0)
    80006488:	34051573          	csrrw	a0,mscratch,a0
    8000648c:	30200073          	mret

0000000080006490 <plicinit>:
    80006490:	ff010113          	addi	sp,sp,-16
    80006494:	00813423          	sd	s0,8(sp)
    80006498:	01010413          	addi	s0,sp,16
    8000649c:	00813403          	ld	s0,8(sp)
    800064a0:	0c0007b7          	lui	a5,0xc000
    800064a4:	00100713          	li	a4,1
    800064a8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800064ac:	00e7a223          	sw	a4,4(a5)
    800064b0:	01010113          	addi	sp,sp,16
    800064b4:	00008067          	ret

00000000800064b8 <plicinithart>:
    800064b8:	ff010113          	addi	sp,sp,-16
    800064bc:	00813023          	sd	s0,0(sp)
    800064c0:	00113423          	sd	ra,8(sp)
    800064c4:	01010413          	addi	s0,sp,16
    800064c8:	00000097          	auipc	ra,0x0
    800064cc:	a40080e7          	jalr	-1472(ra) # 80005f08 <cpuid>
    800064d0:	0085171b          	slliw	a4,a0,0x8
    800064d4:	0c0027b7          	lui	a5,0xc002
    800064d8:	00e787b3          	add	a5,a5,a4
    800064dc:	40200713          	li	a4,1026
    800064e0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800064e4:	00813083          	ld	ra,8(sp)
    800064e8:	00013403          	ld	s0,0(sp)
    800064ec:	00d5151b          	slliw	a0,a0,0xd
    800064f0:	0c2017b7          	lui	a5,0xc201
    800064f4:	00a78533          	add	a0,a5,a0
    800064f8:	00052023          	sw	zero,0(a0)
    800064fc:	01010113          	addi	sp,sp,16
    80006500:	00008067          	ret

0000000080006504 <plic_claim>:
    80006504:	ff010113          	addi	sp,sp,-16
    80006508:	00813023          	sd	s0,0(sp)
    8000650c:	00113423          	sd	ra,8(sp)
    80006510:	01010413          	addi	s0,sp,16
    80006514:	00000097          	auipc	ra,0x0
    80006518:	9f4080e7          	jalr	-1548(ra) # 80005f08 <cpuid>
    8000651c:	00813083          	ld	ra,8(sp)
    80006520:	00013403          	ld	s0,0(sp)
    80006524:	00d5151b          	slliw	a0,a0,0xd
    80006528:	0c2017b7          	lui	a5,0xc201
    8000652c:	00a78533          	add	a0,a5,a0
    80006530:	00452503          	lw	a0,4(a0)
    80006534:	01010113          	addi	sp,sp,16
    80006538:	00008067          	ret

000000008000653c <plic_complete>:
    8000653c:	fe010113          	addi	sp,sp,-32
    80006540:	00813823          	sd	s0,16(sp)
    80006544:	00913423          	sd	s1,8(sp)
    80006548:	00113c23          	sd	ra,24(sp)
    8000654c:	02010413          	addi	s0,sp,32
    80006550:	00050493          	mv	s1,a0
    80006554:	00000097          	auipc	ra,0x0
    80006558:	9b4080e7          	jalr	-1612(ra) # 80005f08 <cpuid>
    8000655c:	01813083          	ld	ra,24(sp)
    80006560:	01013403          	ld	s0,16(sp)
    80006564:	00d5179b          	slliw	a5,a0,0xd
    80006568:	0c201737          	lui	a4,0xc201
    8000656c:	00f707b3          	add	a5,a4,a5
    80006570:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006574:	00813483          	ld	s1,8(sp)
    80006578:	02010113          	addi	sp,sp,32
    8000657c:	00008067          	ret

0000000080006580 <consolewrite>:
    80006580:	fb010113          	addi	sp,sp,-80
    80006584:	04813023          	sd	s0,64(sp)
    80006588:	04113423          	sd	ra,72(sp)
    8000658c:	02913c23          	sd	s1,56(sp)
    80006590:	03213823          	sd	s2,48(sp)
    80006594:	03313423          	sd	s3,40(sp)
    80006598:	03413023          	sd	s4,32(sp)
    8000659c:	01513c23          	sd	s5,24(sp)
    800065a0:	05010413          	addi	s0,sp,80
    800065a4:	06c05c63          	blez	a2,8000661c <consolewrite+0x9c>
    800065a8:	00060993          	mv	s3,a2
    800065ac:	00050a13          	mv	s4,a0
    800065b0:	00058493          	mv	s1,a1
    800065b4:	00000913          	li	s2,0
    800065b8:	fff00a93          	li	s5,-1
    800065bc:	01c0006f          	j	800065d8 <consolewrite+0x58>
    800065c0:	fbf44503          	lbu	a0,-65(s0)
    800065c4:	0019091b          	addiw	s2,s2,1
    800065c8:	00148493          	addi	s1,s1,1
    800065cc:	00001097          	auipc	ra,0x1
    800065d0:	a9c080e7          	jalr	-1380(ra) # 80007068 <uartputc>
    800065d4:	03298063          	beq	s3,s2,800065f4 <consolewrite+0x74>
    800065d8:	00048613          	mv	a2,s1
    800065dc:	00100693          	li	a3,1
    800065e0:	000a0593          	mv	a1,s4
    800065e4:	fbf40513          	addi	a0,s0,-65
    800065e8:	00000097          	auipc	ra,0x0
    800065ec:	9d8080e7          	jalr	-1576(ra) # 80005fc0 <either_copyin>
    800065f0:	fd5518e3          	bne	a0,s5,800065c0 <consolewrite+0x40>
    800065f4:	04813083          	ld	ra,72(sp)
    800065f8:	04013403          	ld	s0,64(sp)
    800065fc:	03813483          	ld	s1,56(sp)
    80006600:	02813983          	ld	s3,40(sp)
    80006604:	02013a03          	ld	s4,32(sp)
    80006608:	01813a83          	ld	s5,24(sp)
    8000660c:	00090513          	mv	a0,s2
    80006610:	03013903          	ld	s2,48(sp)
    80006614:	05010113          	addi	sp,sp,80
    80006618:	00008067          	ret
    8000661c:	00000913          	li	s2,0
    80006620:	fd5ff06f          	j	800065f4 <consolewrite+0x74>

0000000080006624 <consoleread>:
    80006624:	f9010113          	addi	sp,sp,-112
    80006628:	06813023          	sd	s0,96(sp)
    8000662c:	04913c23          	sd	s1,88(sp)
    80006630:	05213823          	sd	s2,80(sp)
    80006634:	05313423          	sd	s3,72(sp)
    80006638:	05413023          	sd	s4,64(sp)
    8000663c:	03513c23          	sd	s5,56(sp)
    80006640:	03613823          	sd	s6,48(sp)
    80006644:	03713423          	sd	s7,40(sp)
    80006648:	03813023          	sd	s8,32(sp)
    8000664c:	06113423          	sd	ra,104(sp)
    80006650:	01913c23          	sd	s9,24(sp)
    80006654:	07010413          	addi	s0,sp,112
    80006658:	00060b93          	mv	s7,a2
    8000665c:	00050913          	mv	s2,a0
    80006660:	00058c13          	mv	s8,a1
    80006664:	00060b1b          	sext.w	s6,a2
    80006668:	00005497          	auipc	s1,0x5
    8000666c:	ef048493          	addi	s1,s1,-272 # 8000b558 <cons>
    80006670:	00400993          	li	s3,4
    80006674:	fff00a13          	li	s4,-1
    80006678:	00a00a93          	li	s5,10
    8000667c:	05705e63          	blez	s7,800066d8 <consoleread+0xb4>
    80006680:	09c4a703          	lw	a4,156(s1)
    80006684:	0984a783          	lw	a5,152(s1)
    80006688:	0007071b          	sext.w	a4,a4
    8000668c:	08e78463          	beq	a5,a4,80006714 <consoleread+0xf0>
    80006690:	07f7f713          	andi	a4,a5,127
    80006694:	00e48733          	add	a4,s1,a4
    80006698:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000669c:	0017869b          	addiw	a3,a5,1
    800066a0:	08d4ac23          	sw	a3,152(s1)
    800066a4:	00070c9b          	sext.w	s9,a4
    800066a8:	0b370663          	beq	a4,s3,80006754 <consoleread+0x130>
    800066ac:	00100693          	li	a3,1
    800066b0:	f9f40613          	addi	a2,s0,-97
    800066b4:	000c0593          	mv	a1,s8
    800066b8:	00090513          	mv	a0,s2
    800066bc:	f8e40fa3          	sb	a4,-97(s0)
    800066c0:	00000097          	auipc	ra,0x0
    800066c4:	8b4080e7          	jalr	-1868(ra) # 80005f74 <either_copyout>
    800066c8:	01450863          	beq	a0,s4,800066d8 <consoleread+0xb4>
    800066cc:	001c0c13          	addi	s8,s8,1
    800066d0:	fffb8b9b          	addiw	s7,s7,-1
    800066d4:	fb5c94e3          	bne	s9,s5,8000667c <consoleread+0x58>
    800066d8:	000b851b          	sext.w	a0,s7
    800066dc:	06813083          	ld	ra,104(sp)
    800066e0:	06013403          	ld	s0,96(sp)
    800066e4:	05813483          	ld	s1,88(sp)
    800066e8:	05013903          	ld	s2,80(sp)
    800066ec:	04813983          	ld	s3,72(sp)
    800066f0:	04013a03          	ld	s4,64(sp)
    800066f4:	03813a83          	ld	s5,56(sp)
    800066f8:	02813b83          	ld	s7,40(sp)
    800066fc:	02013c03          	ld	s8,32(sp)
    80006700:	01813c83          	ld	s9,24(sp)
    80006704:	40ab053b          	subw	a0,s6,a0
    80006708:	03013b03          	ld	s6,48(sp)
    8000670c:	07010113          	addi	sp,sp,112
    80006710:	00008067          	ret
    80006714:	00001097          	auipc	ra,0x1
    80006718:	1d8080e7          	jalr	472(ra) # 800078ec <push_on>
    8000671c:	0984a703          	lw	a4,152(s1)
    80006720:	09c4a783          	lw	a5,156(s1)
    80006724:	0007879b          	sext.w	a5,a5
    80006728:	fef70ce3          	beq	a4,a5,80006720 <consoleread+0xfc>
    8000672c:	00001097          	auipc	ra,0x1
    80006730:	234080e7          	jalr	564(ra) # 80007960 <pop_on>
    80006734:	0984a783          	lw	a5,152(s1)
    80006738:	07f7f713          	andi	a4,a5,127
    8000673c:	00e48733          	add	a4,s1,a4
    80006740:	01874703          	lbu	a4,24(a4)
    80006744:	0017869b          	addiw	a3,a5,1
    80006748:	08d4ac23          	sw	a3,152(s1)
    8000674c:	00070c9b          	sext.w	s9,a4
    80006750:	f5371ee3          	bne	a4,s3,800066ac <consoleread+0x88>
    80006754:	000b851b          	sext.w	a0,s7
    80006758:	f96bf2e3          	bgeu	s7,s6,800066dc <consoleread+0xb8>
    8000675c:	08f4ac23          	sw	a5,152(s1)
    80006760:	f7dff06f          	j	800066dc <consoleread+0xb8>

0000000080006764 <consputc>:
    80006764:	10000793          	li	a5,256
    80006768:	00f50663          	beq	a0,a5,80006774 <consputc+0x10>
    8000676c:	00001317          	auipc	t1,0x1
    80006770:	9f430067          	jr	-1548(t1) # 80007160 <uartputc_sync>
    80006774:	ff010113          	addi	sp,sp,-16
    80006778:	00113423          	sd	ra,8(sp)
    8000677c:	00813023          	sd	s0,0(sp)
    80006780:	01010413          	addi	s0,sp,16
    80006784:	00800513          	li	a0,8
    80006788:	00001097          	auipc	ra,0x1
    8000678c:	9d8080e7          	jalr	-1576(ra) # 80007160 <uartputc_sync>
    80006790:	02000513          	li	a0,32
    80006794:	00001097          	auipc	ra,0x1
    80006798:	9cc080e7          	jalr	-1588(ra) # 80007160 <uartputc_sync>
    8000679c:	00013403          	ld	s0,0(sp)
    800067a0:	00813083          	ld	ra,8(sp)
    800067a4:	00800513          	li	a0,8
    800067a8:	01010113          	addi	sp,sp,16
    800067ac:	00001317          	auipc	t1,0x1
    800067b0:	9b430067          	jr	-1612(t1) # 80007160 <uartputc_sync>

00000000800067b4 <consoleintr>:
    800067b4:	fe010113          	addi	sp,sp,-32
    800067b8:	00813823          	sd	s0,16(sp)
    800067bc:	00913423          	sd	s1,8(sp)
    800067c0:	01213023          	sd	s2,0(sp)
    800067c4:	00113c23          	sd	ra,24(sp)
    800067c8:	02010413          	addi	s0,sp,32
    800067cc:	00005917          	auipc	s2,0x5
    800067d0:	d8c90913          	addi	s2,s2,-628 # 8000b558 <cons>
    800067d4:	00050493          	mv	s1,a0
    800067d8:	00090513          	mv	a0,s2
    800067dc:	00001097          	auipc	ra,0x1
    800067e0:	e40080e7          	jalr	-448(ra) # 8000761c <acquire>
    800067e4:	02048c63          	beqz	s1,8000681c <consoleintr+0x68>
    800067e8:	0a092783          	lw	a5,160(s2)
    800067ec:	09892703          	lw	a4,152(s2)
    800067f0:	07f00693          	li	a3,127
    800067f4:	40e7873b          	subw	a4,a5,a4
    800067f8:	02e6e263          	bltu	a3,a4,8000681c <consoleintr+0x68>
    800067fc:	00d00713          	li	a4,13
    80006800:	04e48063          	beq	s1,a4,80006840 <consoleintr+0x8c>
    80006804:	07f7f713          	andi	a4,a5,127
    80006808:	00e90733          	add	a4,s2,a4
    8000680c:	0017879b          	addiw	a5,a5,1
    80006810:	0af92023          	sw	a5,160(s2)
    80006814:	00970c23          	sb	s1,24(a4)
    80006818:	08f92e23          	sw	a5,156(s2)
    8000681c:	01013403          	ld	s0,16(sp)
    80006820:	01813083          	ld	ra,24(sp)
    80006824:	00813483          	ld	s1,8(sp)
    80006828:	00013903          	ld	s2,0(sp)
    8000682c:	00005517          	auipc	a0,0x5
    80006830:	d2c50513          	addi	a0,a0,-724 # 8000b558 <cons>
    80006834:	02010113          	addi	sp,sp,32
    80006838:	00001317          	auipc	t1,0x1
    8000683c:	eb030067          	jr	-336(t1) # 800076e8 <release>
    80006840:	00a00493          	li	s1,10
    80006844:	fc1ff06f          	j	80006804 <consoleintr+0x50>

0000000080006848 <consoleinit>:
    80006848:	fe010113          	addi	sp,sp,-32
    8000684c:	00113c23          	sd	ra,24(sp)
    80006850:	00813823          	sd	s0,16(sp)
    80006854:	00913423          	sd	s1,8(sp)
    80006858:	02010413          	addi	s0,sp,32
    8000685c:	00005497          	auipc	s1,0x5
    80006860:	cfc48493          	addi	s1,s1,-772 # 8000b558 <cons>
    80006864:	00048513          	mv	a0,s1
    80006868:	00002597          	auipc	a1,0x2
    8000686c:	d3058593          	addi	a1,a1,-720 # 80008598 <CONSOLE_STATUS+0x588>
    80006870:	00001097          	auipc	ra,0x1
    80006874:	d88080e7          	jalr	-632(ra) # 800075f8 <initlock>
    80006878:	00000097          	auipc	ra,0x0
    8000687c:	7ac080e7          	jalr	1964(ra) # 80007024 <uartinit>
    80006880:	01813083          	ld	ra,24(sp)
    80006884:	01013403          	ld	s0,16(sp)
    80006888:	00000797          	auipc	a5,0x0
    8000688c:	d9c78793          	addi	a5,a5,-612 # 80006624 <consoleread>
    80006890:	0af4bc23          	sd	a5,184(s1)
    80006894:	00000797          	auipc	a5,0x0
    80006898:	cec78793          	addi	a5,a5,-788 # 80006580 <consolewrite>
    8000689c:	0cf4b023          	sd	a5,192(s1)
    800068a0:	00813483          	ld	s1,8(sp)
    800068a4:	02010113          	addi	sp,sp,32
    800068a8:	00008067          	ret

00000000800068ac <console_read>:
    800068ac:	ff010113          	addi	sp,sp,-16
    800068b0:	00813423          	sd	s0,8(sp)
    800068b4:	01010413          	addi	s0,sp,16
    800068b8:	00813403          	ld	s0,8(sp)
    800068bc:	00005317          	auipc	t1,0x5
    800068c0:	d5433303          	ld	t1,-684(t1) # 8000b610 <devsw+0x10>
    800068c4:	01010113          	addi	sp,sp,16
    800068c8:	00030067          	jr	t1

00000000800068cc <console_write>:
    800068cc:	ff010113          	addi	sp,sp,-16
    800068d0:	00813423          	sd	s0,8(sp)
    800068d4:	01010413          	addi	s0,sp,16
    800068d8:	00813403          	ld	s0,8(sp)
    800068dc:	00005317          	auipc	t1,0x5
    800068e0:	d3c33303          	ld	t1,-708(t1) # 8000b618 <devsw+0x18>
    800068e4:	01010113          	addi	sp,sp,16
    800068e8:	00030067          	jr	t1

00000000800068ec <panic>:
    800068ec:	fe010113          	addi	sp,sp,-32
    800068f0:	00113c23          	sd	ra,24(sp)
    800068f4:	00813823          	sd	s0,16(sp)
    800068f8:	00913423          	sd	s1,8(sp)
    800068fc:	02010413          	addi	s0,sp,32
    80006900:	00050493          	mv	s1,a0
    80006904:	00002517          	auipc	a0,0x2
    80006908:	c9c50513          	addi	a0,a0,-868 # 800085a0 <CONSOLE_STATUS+0x590>
    8000690c:	00005797          	auipc	a5,0x5
    80006910:	da07a623          	sw	zero,-596(a5) # 8000b6b8 <pr+0x18>
    80006914:	00000097          	auipc	ra,0x0
    80006918:	034080e7          	jalr	52(ra) # 80006948 <__printf>
    8000691c:	00048513          	mv	a0,s1
    80006920:	00000097          	auipc	ra,0x0
    80006924:	028080e7          	jalr	40(ra) # 80006948 <__printf>
    80006928:	00002517          	auipc	a0,0x2
    8000692c:	a7050513          	addi	a0,a0,-1424 # 80008398 <CONSOLE_STATUS+0x388>
    80006930:	00000097          	auipc	ra,0x0
    80006934:	018080e7          	jalr	24(ra) # 80006948 <__printf>
    80006938:	00100793          	li	a5,1
    8000693c:	00004717          	auipc	a4,0x4
    80006940:	aaf72623          	sw	a5,-1364(a4) # 8000a3e8 <panicked>
    80006944:	0000006f          	j	80006944 <panic+0x58>

0000000080006948 <__printf>:
    80006948:	f3010113          	addi	sp,sp,-208
    8000694c:	08813023          	sd	s0,128(sp)
    80006950:	07313423          	sd	s3,104(sp)
    80006954:	09010413          	addi	s0,sp,144
    80006958:	05813023          	sd	s8,64(sp)
    8000695c:	08113423          	sd	ra,136(sp)
    80006960:	06913c23          	sd	s1,120(sp)
    80006964:	07213823          	sd	s2,112(sp)
    80006968:	07413023          	sd	s4,96(sp)
    8000696c:	05513c23          	sd	s5,88(sp)
    80006970:	05613823          	sd	s6,80(sp)
    80006974:	05713423          	sd	s7,72(sp)
    80006978:	03913c23          	sd	s9,56(sp)
    8000697c:	03a13823          	sd	s10,48(sp)
    80006980:	03b13423          	sd	s11,40(sp)
    80006984:	00005317          	auipc	t1,0x5
    80006988:	d1c30313          	addi	t1,t1,-740 # 8000b6a0 <pr>
    8000698c:	01832c03          	lw	s8,24(t1)
    80006990:	00b43423          	sd	a1,8(s0)
    80006994:	00c43823          	sd	a2,16(s0)
    80006998:	00d43c23          	sd	a3,24(s0)
    8000699c:	02e43023          	sd	a4,32(s0)
    800069a0:	02f43423          	sd	a5,40(s0)
    800069a4:	03043823          	sd	a6,48(s0)
    800069a8:	03143c23          	sd	a7,56(s0)
    800069ac:	00050993          	mv	s3,a0
    800069b0:	4a0c1663          	bnez	s8,80006e5c <__printf+0x514>
    800069b4:	60098c63          	beqz	s3,80006fcc <__printf+0x684>
    800069b8:	0009c503          	lbu	a0,0(s3)
    800069bc:	00840793          	addi	a5,s0,8
    800069c0:	f6f43c23          	sd	a5,-136(s0)
    800069c4:	00000493          	li	s1,0
    800069c8:	22050063          	beqz	a0,80006be8 <__printf+0x2a0>
    800069cc:	00002a37          	lui	s4,0x2
    800069d0:	00018ab7          	lui	s5,0x18
    800069d4:	000f4b37          	lui	s6,0xf4
    800069d8:	00989bb7          	lui	s7,0x989
    800069dc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800069e0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800069e4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800069e8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800069ec:	00148c9b          	addiw	s9,s1,1
    800069f0:	02500793          	li	a5,37
    800069f4:	01998933          	add	s2,s3,s9
    800069f8:	38f51263          	bne	a0,a5,80006d7c <__printf+0x434>
    800069fc:	00094783          	lbu	a5,0(s2)
    80006a00:	00078c9b          	sext.w	s9,a5
    80006a04:	1e078263          	beqz	a5,80006be8 <__printf+0x2a0>
    80006a08:	0024849b          	addiw	s1,s1,2
    80006a0c:	07000713          	li	a4,112
    80006a10:	00998933          	add	s2,s3,s1
    80006a14:	38e78a63          	beq	a5,a4,80006da8 <__printf+0x460>
    80006a18:	20f76863          	bltu	a4,a5,80006c28 <__printf+0x2e0>
    80006a1c:	42a78863          	beq	a5,a0,80006e4c <__printf+0x504>
    80006a20:	06400713          	li	a4,100
    80006a24:	40e79663          	bne	a5,a4,80006e30 <__printf+0x4e8>
    80006a28:	f7843783          	ld	a5,-136(s0)
    80006a2c:	0007a603          	lw	a2,0(a5)
    80006a30:	00878793          	addi	a5,a5,8
    80006a34:	f6f43c23          	sd	a5,-136(s0)
    80006a38:	42064a63          	bltz	a2,80006e6c <__printf+0x524>
    80006a3c:	00a00713          	li	a4,10
    80006a40:	02e677bb          	remuw	a5,a2,a4
    80006a44:	00002d97          	auipc	s11,0x2
    80006a48:	b84d8d93          	addi	s11,s11,-1148 # 800085c8 <digits>
    80006a4c:	00900593          	li	a1,9
    80006a50:	0006051b          	sext.w	a0,a2
    80006a54:	00000c93          	li	s9,0
    80006a58:	02079793          	slli	a5,a5,0x20
    80006a5c:	0207d793          	srli	a5,a5,0x20
    80006a60:	00fd87b3          	add	a5,s11,a5
    80006a64:	0007c783          	lbu	a5,0(a5)
    80006a68:	02e656bb          	divuw	a3,a2,a4
    80006a6c:	f8f40023          	sb	a5,-128(s0)
    80006a70:	14c5d863          	bge	a1,a2,80006bc0 <__printf+0x278>
    80006a74:	06300593          	li	a1,99
    80006a78:	00100c93          	li	s9,1
    80006a7c:	02e6f7bb          	remuw	a5,a3,a4
    80006a80:	02079793          	slli	a5,a5,0x20
    80006a84:	0207d793          	srli	a5,a5,0x20
    80006a88:	00fd87b3          	add	a5,s11,a5
    80006a8c:	0007c783          	lbu	a5,0(a5)
    80006a90:	02e6d73b          	divuw	a4,a3,a4
    80006a94:	f8f400a3          	sb	a5,-127(s0)
    80006a98:	12a5f463          	bgeu	a1,a0,80006bc0 <__printf+0x278>
    80006a9c:	00a00693          	li	a3,10
    80006aa0:	00900593          	li	a1,9
    80006aa4:	02d777bb          	remuw	a5,a4,a3
    80006aa8:	02079793          	slli	a5,a5,0x20
    80006aac:	0207d793          	srli	a5,a5,0x20
    80006ab0:	00fd87b3          	add	a5,s11,a5
    80006ab4:	0007c503          	lbu	a0,0(a5)
    80006ab8:	02d757bb          	divuw	a5,a4,a3
    80006abc:	f8a40123          	sb	a0,-126(s0)
    80006ac0:	48e5f263          	bgeu	a1,a4,80006f44 <__printf+0x5fc>
    80006ac4:	06300513          	li	a0,99
    80006ac8:	02d7f5bb          	remuw	a1,a5,a3
    80006acc:	02059593          	slli	a1,a1,0x20
    80006ad0:	0205d593          	srli	a1,a1,0x20
    80006ad4:	00bd85b3          	add	a1,s11,a1
    80006ad8:	0005c583          	lbu	a1,0(a1)
    80006adc:	02d7d7bb          	divuw	a5,a5,a3
    80006ae0:	f8b401a3          	sb	a1,-125(s0)
    80006ae4:	48e57263          	bgeu	a0,a4,80006f68 <__printf+0x620>
    80006ae8:	3e700513          	li	a0,999
    80006aec:	02d7f5bb          	remuw	a1,a5,a3
    80006af0:	02059593          	slli	a1,a1,0x20
    80006af4:	0205d593          	srli	a1,a1,0x20
    80006af8:	00bd85b3          	add	a1,s11,a1
    80006afc:	0005c583          	lbu	a1,0(a1)
    80006b00:	02d7d7bb          	divuw	a5,a5,a3
    80006b04:	f8b40223          	sb	a1,-124(s0)
    80006b08:	46e57663          	bgeu	a0,a4,80006f74 <__printf+0x62c>
    80006b0c:	02d7f5bb          	remuw	a1,a5,a3
    80006b10:	02059593          	slli	a1,a1,0x20
    80006b14:	0205d593          	srli	a1,a1,0x20
    80006b18:	00bd85b3          	add	a1,s11,a1
    80006b1c:	0005c583          	lbu	a1,0(a1)
    80006b20:	02d7d7bb          	divuw	a5,a5,a3
    80006b24:	f8b402a3          	sb	a1,-123(s0)
    80006b28:	46ea7863          	bgeu	s4,a4,80006f98 <__printf+0x650>
    80006b2c:	02d7f5bb          	remuw	a1,a5,a3
    80006b30:	02059593          	slli	a1,a1,0x20
    80006b34:	0205d593          	srli	a1,a1,0x20
    80006b38:	00bd85b3          	add	a1,s11,a1
    80006b3c:	0005c583          	lbu	a1,0(a1)
    80006b40:	02d7d7bb          	divuw	a5,a5,a3
    80006b44:	f8b40323          	sb	a1,-122(s0)
    80006b48:	3eeaf863          	bgeu	s5,a4,80006f38 <__printf+0x5f0>
    80006b4c:	02d7f5bb          	remuw	a1,a5,a3
    80006b50:	02059593          	slli	a1,a1,0x20
    80006b54:	0205d593          	srli	a1,a1,0x20
    80006b58:	00bd85b3          	add	a1,s11,a1
    80006b5c:	0005c583          	lbu	a1,0(a1)
    80006b60:	02d7d7bb          	divuw	a5,a5,a3
    80006b64:	f8b403a3          	sb	a1,-121(s0)
    80006b68:	42eb7e63          	bgeu	s6,a4,80006fa4 <__printf+0x65c>
    80006b6c:	02d7f5bb          	remuw	a1,a5,a3
    80006b70:	02059593          	slli	a1,a1,0x20
    80006b74:	0205d593          	srli	a1,a1,0x20
    80006b78:	00bd85b3          	add	a1,s11,a1
    80006b7c:	0005c583          	lbu	a1,0(a1)
    80006b80:	02d7d7bb          	divuw	a5,a5,a3
    80006b84:	f8b40423          	sb	a1,-120(s0)
    80006b88:	42ebfc63          	bgeu	s7,a4,80006fc0 <__printf+0x678>
    80006b8c:	02079793          	slli	a5,a5,0x20
    80006b90:	0207d793          	srli	a5,a5,0x20
    80006b94:	00fd8db3          	add	s11,s11,a5
    80006b98:	000dc703          	lbu	a4,0(s11)
    80006b9c:	00a00793          	li	a5,10
    80006ba0:	00900c93          	li	s9,9
    80006ba4:	f8e404a3          	sb	a4,-119(s0)
    80006ba8:	00065c63          	bgez	a2,80006bc0 <__printf+0x278>
    80006bac:	f9040713          	addi	a4,s0,-112
    80006bb0:	00f70733          	add	a4,a4,a5
    80006bb4:	02d00693          	li	a3,45
    80006bb8:	fed70823          	sb	a3,-16(a4)
    80006bbc:	00078c93          	mv	s9,a5
    80006bc0:	f8040793          	addi	a5,s0,-128
    80006bc4:	01978cb3          	add	s9,a5,s9
    80006bc8:	f7f40d13          	addi	s10,s0,-129
    80006bcc:	000cc503          	lbu	a0,0(s9)
    80006bd0:	fffc8c93          	addi	s9,s9,-1
    80006bd4:	00000097          	auipc	ra,0x0
    80006bd8:	b90080e7          	jalr	-1136(ra) # 80006764 <consputc>
    80006bdc:	ffac98e3          	bne	s9,s10,80006bcc <__printf+0x284>
    80006be0:	00094503          	lbu	a0,0(s2)
    80006be4:	e00514e3          	bnez	a0,800069ec <__printf+0xa4>
    80006be8:	1a0c1663          	bnez	s8,80006d94 <__printf+0x44c>
    80006bec:	08813083          	ld	ra,136(sp)
    80006bf0:	08013403          	ld	s0,128(sp)
    80006bf4:	07813483          	ld	s1,120(sp)
    80006bf8:	07013903          	ld	s2,112(sp)
    80006bfc:	06813983          	ld	s3,104(sp)
    80006c00:	06013a03          	ld	s4,96(sp)
    80006c04:	05813a83          	ld	s5,88(sp)
    80006c08:	05013b03          	ld	s6,80(sp)
    80006c0c:	04813b83          	ld	s7,72(sp)
    80006c10:	04013c03          	ld	s8,64(sp)
    80006c14:	03813c83          	ld	s9,56(sp)
    80006c18:	03013d03          	ld	s10,48(sp)
    80006c1c:	02813d83          	ld	s11,40(sp)
    80006c20:	0d010113          	addi	sp,sp,208
    80006c24:	00008067          	ret
    80006c28:	07300713          	li	a4,115
    80006c2c:	1ce78a63          	beq	a5,a4,80006e00 <__printf+0x4b8>
    80006c30:	07800713          	li	a4,120
    80006c34:	1ee79e63          	bne	a5,a4,80006e30 <__printf+0x4e8>
    80006c38:	f7843783          	ld	a5,-136(s0)
    80006c3c:	0007a703          	lw	a4,0(a5)
    80006c40:	00878793          	addi	a5,a5,8
    80006c44:	f6f43c23          	sd	a5,-136(s0)
    80006c48:	28074263          	bltz	a4,80006ecc <__printf+0x584>
    80006c4c:	00002d97          	auipc	s11,0x2
    80006c50:	97cd8d93          	addi	s11,s11,-1668 # 800085c8 <digits>
    80006c54:	00f77793          	andi	a5,a4,15
    80006c58:	00fd87b3          	add	a5,s11,a5
    80006c5c:	0007c683          	lbu	a3,0(a5)
    80006c60:	00f00613          	li	a2,15
    80006c64:	0007079b          	sext.w	a5,a4
    80006c68:	f8d40023          	sb	a3,-128(s0)
    80006c6c:	0047559b          	srliw	a1,a4,0x4
    80006c70:	0047569b          	srliw	a3,a4,0x4
    80006c74:	00000c93          	li	s9,0
    80006c78:	0ee65063          	bge	a2,a4,80006d58 <__printf+0x410>
    80006c7c:	00f6f693          	andi	a3,a3,15
    80006c80:	00dd86b3          	add	a3,s11,a3
    80006c84:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006c88:	0087d79b          	srliw	a5,a5,0x8
    80006c8c:	00100c93          	li	s9,1
    80006c90:	f8d400a3          	sb	a3,-127(s0)
    80006c94:	0cb67263          	bgeu	a2,a1,80006d58 <__printf+0x410>
    80006c98:	00f7f693          	andi	a3,a5,15
    80006c9c:	00dd86b3          	add	a3,s11,a3
    80006ca0:	0006c583          	lbu	a1,0(a3)
    80006ca4:	00f00613          	li	a2,15
    80006ca8:	0047d69b          	srliw	a3,a5,0x4
    80006cac:	f8b40123          	sb	a1,-126(s0)
    80006cb0:	0047d593          	srli	a1,a5,0x4
    80006cb4:	28f67e63          	bgeu	a2,a5,80006f50 <__printf+0x608>
    80006cb8:	00f6f693          	andi	a3,a3,15
    80006cbc:	00dd86b3          	add	a3,s11,a3
    80006cc0:	0006c503          	lbu	a0,0(a3)
    80006cc4:	0087d813          	srli	a6,a5,0x8
    80006cc8:	0087d69b          	srliw	a3,a5,0x8
    80006ccc:	f8a401a3          	sb	a0,-125(s0)
    80006cd0:	28b67663          	bgeu	a2,a1,80006f5c <__printf+0x614>
    80006cd4:	00f6f693          	andi	a3,a3,15
    80006cd8:	00dd86b3          	add	a3,s11,a3
    80006cdc:	0006c583          	lbu	a1,0(a3)
    80006ce0:	00c7d513          	srli	a0,a5,0xc
    80006ce4:	00c7d69b          	srliw	a3,a5,0xc
    80006ce8:	f8b40223          	sb	a1,-124(s0)
    80006cec:	29067a63          	bgeu	a2,a6,80006f80 <__printf+0x638>
    80006cf0:	00f6f693          	andi	a3,a3,15
    80006cf4:	00dd86b3          	add	a3,s11,a3
    80006cf8:	0006c583          	lbu	a1,0(a3)
    80006cfc:	0107d813          	srli	a6,a5,0x10
    80006d00:	0107d69b          	srliw	a3,a5,0x10
    80006d04:	f8b402a3          	sb	a1,-123(s0)
    80006d08:	28a67263          	bgeu	a2,a0,80006f8c <__printf+0x644>
    80006d0c:	00f6f693          	andi	a3,a3,15
    80006d10:	00dd86b3          	add	a3,s11,a3
    80006d14:	0006c683          	lbu	a3,0(a3)
    80006d18:	0147d79b          	srliw	a5,a5,0x14
    80006d1c:	f8d40323          	sb	a3,-122(s0)
    80006d20:	21067663          	bgeu	a2,a6,80006f2c <__printf+0x5e4>
    80006d24:	02079793          	slli	a5,a5,0x20
    80006d28:	0207d793          	srli	a5,a5,0x20
    80006d2c:	00fd8db3          	add	s11,s11,a5
    80006d30:	000dc683          	lbu	a3,0(s11)
    80006d34:	00800793          	li	a5,8
    80006d38:	00700c93          	li	s9,7
    80006d3c:	f8d403a3          	sb	a3,-121(s0)
    80006d40:	00075c63          	bgez	a4,80006d58 <__printf+0x410>
    80006d44:	f9040713          	addi	a4,s0,-112
    80006d48:	00f70733          	add	a4,a4,a5
    80006d4c:	02d00693          	li	a3,45
    80006d50:	fed70823          	sb	a3,-16(a4)
    80006d54:	00078c93          	mv	s9,a5
    80006d58:	f8040793          	addi	a5,s0,-128
    80006d5c:	01978cb3          	add	s9,a5,s9
    80006d60:	f7f40d13          	addi	s10,s0,-129
    80006d64:	000cc503          	lbu	a0,0(s9)
    80006d68:	fffc8c93          	addi	s9,s9,-1
    80006d6c:	00000097          	auipc	ra,0x0
    80006d70:	9f8080e7          	jalr	-1544(ra) # 80006764 <consputc>
    80006d74:	ff9d18e3          	bne	s10,s9,80006d64 <__printf+0x41c>
    80006d78:	0100006f          	j	80006d88 <__printf+0x440>
    80006d7c:	00000097          	auipc	ra,0x0
    80006d80:	9e8080e7          	jalr	-1560(ra) # 80006764 <consputc>
    80006d84:	000c8493          	mv	s1,s9
    80006d88:	00094503          	lbu	a0,0(s2)
    80006d8c:	c60510e3          	bnez	a0,800069ec <__printf+0xa4>
    80006d90:	e40c0ee3          	beqz	s8,80006bec <__printf+0x2a4>
    80006d94:	00005517          	auipc	a0,0x5
    80006d98:	90c50513          	addi	a0,a0,-1780 # 8000b6a0 <pr>
    80006d9c:	00001097          	auipc	ra,0x1
    80006da0:	94c080e7          	jalr	-1716(ra) # 800076e8 <release>
    80006da4:	e49ff06f          	j	80006bec <__printf+0x2a4>
    80006da8:	f7843783          	ld	a5,-136(s0)
    80006dac:	03000513          	li	a0,48
    80006db0:	01000d13          	li	s10,16
    80006db4:	00878713          	addi	a4,a5,8
    80006db8:	0007bc83          	ld	s9,0(a5)
    80006dbc:	f6e43c23          	sd	a4,-136(s0)
    80006dc0:	00000097          	auipc	ra,0x0
    80006dc4:	9a4080e7          	jalr	-1628(ra) # 80006764 <consputc>
    80006dc8:	07800513          	li	a0,120
    80006dcc:	00000097          	auipc	ra,0x0
    80006dd0:	998080e7          	jalr	-1640(ra) # 80006764 <consputc>
    80006dd4:	00001d97          	auipc	s11,0x1
    80006dd8:	7f4d8d93          	addi	s11,s11,2036 # 800085c8 <digits>
    80006ddc:	03ccd793          	srli	a5,s9,0x3c
    80006de0:	00fd87b3          	add	a5,s11,a5
    80006de4:	0007c503          	lbu	a0,0(a5)
    80006de8:	fffd0d1b          	addiw	s10,s10,-1
    80006dec:	004c9c93          	slli	s9,s9,0x4
    80006df0:	00000097          	auipc	ra,0x0
    80006df4:	974080e7          	jalr	-1676(ra) # 80006764 <consputc>
    80006df8:	fe0d12e3          	bnez	s10,80006ddc <__printf+0x494>
    80006dfc:	f8dff06f          	j	80006d88 <__printf+0x440>
    80006e00:	f7843783          	ld	a5,-136(s0)
    80006e04:	0007bc83          	ld	s9,0(a5)
    80006e08:	00878793          	addi	a5,a5,8
    80006e0c:	f6f43c23          	sd	a5,-136(s0)
    80006e10:	000c9a63          	bnez	s9,80006e24 <__printf+0x4dc>
    80006e14:	1080006f          	j	80006f1c <__printf+0x5d4>
    80006e18:	001c8c93          	addi	s9,s9,1
    80006e1c:	00000097          	auipc	ra,0x0
    80006e20:	948080e7          	jalr	-1720(ra) # 80006764 <consputc>
    80006e24:	000cc503          	lbu	a0,0(s9)
    80006e28:	fe0518e3          	bnez	a0,80006e18 <__printf+0x4d0>
    80006e2c:	f5dff06f          	j	80006d88 <__printf+0x440>
    80006e30:	02500513          	li	a0,37
    80006e34:	00000097          	auipc	ra,0x0
    80006e38:	930080e7          	jalr	-1744(ra) # 80006764 <consputc>
    80006e3c:	000c8513          	mv	a0,s9
    80006e40:	00000097          	auipc	ra,0x0
    80006e44:	924080e7          	jalr	-1756(ra) # 80006764 <consputc>
    80006e48:	f41ff06f          	j	80006d88 <__printf+0x440>
    80006e4c:	02500513          	li	a0,37
    80006e50:	00000097          	auipc	ra,0x0
    80006e54:	914080e7          	jalr	-1772(ra) # 80006764 <consputc>
    80006e58:	f31ff06f          	j	80006d88 <__printf+0x440>
    80006e5c:	00030513          	mv	a0,t1
    80006e60:	00000097          	auipc	ra,0x0
    80006e64:	7bc080e7          	jalr	1980(ra) # 8000761c <acquire>
    80006e68:	b4dff06f          	j	800069b4 <__printf+0x6c>
    80006e6c:	40c0053b          	negw	a0,a2
    80006e70:	00a00713          	li	a4,10
    80006e74:	02e576bb          	remuw	a3,a0,a4
    80006e78:	00001d97          	auipc	s11,0x1
    80006e7c:	750d8d93          	addi	s11,s11,1872 # 800085c8 <digits>
    80006e80:	ff700593          	li	a1,-9
    80006e84:	02069693          	slli	a3,a3,0x20
    80006e88:	0206d693          	srli	a3,a3,0x20
    80006e8c:	00dd86b3          	add	a3,s11,a3
    80006e90:	0006c683          	lbu	a3,0(a3)
    80006e94:	02e557bb          	divuw	a5,a0,a4
    80006e98:	f8d40023          	sb	a3,-128(s0)
    80006e9c:	10b65e63          	bge	a2,a1,80006fb8 <__printf+0x670>
    80006ea0:	06300593          	li	a1,99
    80006ea4:	02e7f6bb          	remuw	a3,a5,a4
    80006ea8:	02069693          	slli	a3,a3,0x20
    80006eac:	0206d693          	srli	a3,a3,0x20
    80006eb0:	00dd86b3          	add	a3,s11,a3
    80006eb4:	0006c683          	lbu	a3,0(a3)
    80006eb8:	02e7d73b          	divuw	a4,a5,a4
    80006ebc:	00200793          	li	a5,2
    80006ec0:	f8d400a3          	sb	a3,-127(s0)
    80006ec4:	bca5ece3          	bltu	a1,a0,80006a9c <__printf+0x154>
    80006ec8:	ce5ff06f          	j	80006bac <__printf+0x264>
    80006ecc:	40e007bb          	negw	a5,a4
    80006ed0:	00001d97          	auipc	s11,0x1
    80006ed4:	6f8d8d93          	addi	s11,s11,1784 # 800085c8 <digits>
    80006ed8:	00f7f693          	andi	a3,a5,15
    80006edc:	00dd86b3          	add	a3,s11,a3
    80006ee0:	0006c583          	lbu	a1,0(a3)
    80006ee4:	ff100613          	li	a2,-15
    80006ee8:	0047d69b          	srliw	a3,a5,0x4
    80006eec:	f8b40023          	sb	a1,-128(s0)
    80006ef0:	0047d59b          	srliw	a1,a5,0x4
    80006ef4:	0ac75e63          	bge	a4,a2,80006fb0 <__printf+0x668>
    80006ef8:	00f6f693          	andi	a3,a3,15
    80006efc:	00dd86b3          	add	a3,s11,a3
    80006f00:	0006c603          	lbu	a2,0(a3)
    80006f04:	00f00693          	li	a3,15
    80006f08:	0087d79b          	srliw	a5,a5,0x8
    80006f0c:	f8c400a3          	sb	a2,-127(s0)
    80006f10:	d8b6e4e3          	bltu	a3,a1,80006c98 <__printf+0x350>
    80006f14:	00200793          	li	a5,2
    80006f18:	e2dff06f          	j	80006d44 <__printf+0x3fc>
    80006f1c:	00001c97          	auipc	s9,0x1
    80006f20:	68cc8c93          	addi	s9,s9,1676 # 800085a8 <CONSOLE_STATUS+0x598>
    80006f24:	02800513          	li	a0,40
    80006f28:	ef1ff06f          	j	80006e18 <__printf+0x4d0>
    80006f2c:	00700793          	li	a5,7
    80006f30:	00600c93          	li	s9,6
    80006f34:	e0dff06f          	j	80006d40 <__printf+0x3f8>
    80006f38:	00700793          	li	a5,7
    80006f3c:	00600c93          	li	s9,6
    80006f40:	c69ff06f          	j	80006ba8 <__printf+0x260>
    80006f44:	00300793          	li	a5,3
    80006f48:	00200c93          	li	s9,2
    80006f4c:	c5dff06f          	j	80006ba8 <__printf+0x260>
    80006f50:	00300793          	li	a5,3
    80006f54:	00200c93          	li	s9,2
    80006f58:	de9ff06f          	j	80006d40 <__printf+0x3f8>
    80006f5c:	00400793          	li	a5,4
    80006f60:	00300c93          	li	s9,3
    80006f64:	dddff06f          	j	80006d40 <__printf+0x3f8>
    80006f68:	00400793          	li	a5,4
    80006f6c:	00300c93          	li	s9,3
    80006f70:	c39ff06f          	j	80006ba8 <__printf+0x260>
    80006f74:	00500793          	li	a5,5
    80006f78:	00400c93          	li	s9,4
    80006f7c:	c2dff06f          	j	80006ba8 <__printf+0x260>
    80006f80:	00500793          	li	a5,5
    80006f84:	00400c93          	li	s9,4
    80006f88:	db9ff06f          	j	80006d40 <__printf+0x3f8>
    80006f8c:	00600793          	li	a5,6
    80006f90:	00500c93          	li	s9,5
    80006f94:	dadff06f          	j	80006d40 <__printf+0x3f8>
    80006f98:	00600793          	li	a5,6
    80006f9c:	00500c93          	li	s9,5
    80006fa0:	c09ff06f          	j	80006ba8 <__printf+0x260>
    80006fa4:	00800793          	li	a5,8
    80006fa8:	00700c93          	li	s9,7
    80006fac:	bfdff06f          	j	80006ba8 <__printf+0x260>
    80006fb0:	00100793          	li	a5,1
    80006fb4:	d91ff06f          	j	80006d44 <__printf+0x3fc>
    80006fb8:	00100793          	li	a5,1
    80006fbc:	bf1ff06f          	j	80006bac <__printf+0x264>
    80006fc0:	00900793          	li	a5,9
    80006fc4:	00800c93          	li	s9,8
    80006fc8:	be1ff06f          	j	80006ba8 <__printf+0x260>
    80006fcc:	00001517          	auipc	a0,0x1
    80006fd0:	5e450513          	addi	a0,a0,1508 # 800085b0 <CONSOLE_STATUS+0x5a0>
    80006fd4:	00000097          	auipc	ra,0x0
    80006fd8:	918080e7          	jalr	-1768(ra) # 800068ec <panic>

0000000080006fdc <printfinit>:
    80006fdc:	fe010113          	addi	sp,sp,-32
    80006fe0:	00813823          	sd	s0,16(sp)
    80006fe4:	00913423          	sd	s1,8(sp)
    80006fe8:	00113c23          	sd	ra,24(sp)
    80006fec:	02010413          	addi	s0,sp,32
    80006ff0:	00004497          	auipc	s1,0x4
    80006ff4:	6b048493          	addi	s1,s1,1712 # 8000b6a0 <pr>
    80006ff8:	00048513          	mv	a0,s1
    80006ffc:	00001597          	auipc	a1,0x1
    80007000:	5c458593          	addi	a1,a1,1476 # 800085c0 <CONSOLE_STATUS+0x5b0>
    80007004:	00000097          	auipc	ra,0x0
    80007008:	5f4080e7          	jalr	1524(ra) # 800075f8 <initlock>
    8000700c:	01813083          	ld	ra,24(sp)
    80007010:	01013403          	ld	s0,16(sp)
    80007014:	0004ac23          	sw	zero,24(s1)
    80007018:	00813483          	ld	s1,8(sp)
    8000701c:	02010113          	addi	sp,sp,32
    80007020:	00008067          	ret

0000000080007024 <uartinit>:
    80007024:	ff010113          	addi	sp,sp,-16
    80007028:	00813423          	sd	s0,8(sp)
    8000702c:	01010413          	addi	s0,sp,16
    80007030:	100007b7          	lui	a5,0x10000
    80007034:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007038:	f8000713          	li	a4,-128
    8000703c:	00e781a3          	sb	a4,3(a5)
    80007040:	00300713          	li	a4,3
    80007044:	00e78023          	sb	a4,0(a5)
    80007048:	000780a3          	sb	zero,1(a5)
    8000704c:	00e781a3          	sb	a4,3(a5)
    80007050:	00700693          	li	a3,7
    80007054:	00d78123          	sb	a3,2(a5)
    80007058:	00e780a3          	sb	a4,1(a5)
    8000705c:	00813403          	ld	s0,8(sp)
    80007060:	01010113          	addi	sp,sp,16
    80007064:	00008067          	ret

0000000080007068 <uartputc>:
    80007068:	00003797          	auipc	a5,0x3
    8000706c:	3807a783          	lw	a5,896(a5) # 8000a3e8 <panicked>
    80007070:	00078463          	beqz	a5,80007078 <uartputc+0x10>
    80007074:	0000006f          	j	80007074 <uartputc+0xc>
    80007078:	fd010113          	addi	sp,sp,-48
    8000707c:	02813023          	sd	s0,32(sp)
    80007080:	00913c23          	sd	s1,24(sp)
    80007084:	01213823          	sd	s2,16(sp)
    80007088:	01313423          	sd	s3,8(sp)
    8000708c:	02113423          	sd	ra,40(sp)
    80007090:	03010413          	addi	s0,sp,48
    80007094:	00003917          	auipc	s2,0x3
    80007098:	35c90913          	addi	s2,s2,860 # 8000a3f0 <uart_tx_r>
    8000709c:	00093783          	ld	a5,0(s2)
    800070a0:	00003497          	auipc	s1,0x3
    800070a4:	35848493          	addi	s1,s1,856 # 8000a3f8 <uart_tx_w>
    800070a8:	0004b703          	ld	a4,0(s1)
    800070ac:	02078693          	addi	a3,a5,32
    800070b0:	00050993          	mv	s3,a0
    800070b4:	02e69c63          	bne	a3,a4,800070ec <uartputc+0x84>
    800070b8:	00001097          	auipc	ra,0x1
    800070bc:	834080e7          	jalr	-1996(ra) # 800078ec <push_on>
    800070c0:	00093783          	ld	a5,0(s2)
    800070c4:	0004b703          	ld	a4,0(s1)
    800070c8:	02078793          	addi	a5,a5,32
    800070cc:	00e79463          	bne	a5,a4,800070d4 <uartputc+0x6c>
    800070d0:	0000006f          	j	800070d0 <uartputc+0x68>
    800070d4:	00001097          	auipc	ra,0x1
    800070d8:	88c080e7          	jalr	-1908(ra) # 80007960 <pop_on>
    800070dc:	00093783          	ld	a5,0(s2)
    800070e0:	0004b703          	ld	a4,0(s1)
    800070e4:	02078693          	addi	a3,a5,32
    800070e8:	fce688e3          	beq	a3,a4,800070b8 <uartputc+0x50>
    800070ec:	01f77693          	andi	a3,a4,31
    800070f0:	00004597          	auipc	a1,0x4
    800070f4:	5d058593          	addi	a1,a1,1488 # 8000b6c0 <uart_tx_buf>
    800070f8:	00d586b3          	add	a3,a1,a3
    800070fc:	00170713          	addi	a4,a4,1
    80007100:	01368023          	sb	s3,0(a3)
    80007104:	00e4b023          	sd	a4,0(s1)
    80007108:	10000637          	lui	a2,0x10000
    8000710c:	02f71063          	bne	a4,a5,8000712c <uartputc+0xc4>
    80007110:	0340006f          	j	80007144 <uartputc+0xdc>
    80007114:	00074703          	lbu	a4,0(a4)
    80007118:	00f93023          	sd	a5,0(s2)
    8000711c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007120:	00093783          	ld	a5,0(s2)
    80007124:	0004b703          	ld	a4,0(s1)
    80007128:	00f70e63          	beq	a4,a5,80007144 <uartputc+0xdc>
    8000712c:	00564683          	lbu	a3,5(a2)
    80007130:	01f7f713          	andi	a4,a5,31
    80007134:	00e58733          	add	a4,a1,a4
    80007138:	0206f693          	andi	a3,a3,32
    8000713c:	00178793          	addi	a5,a5,1
    80007140:	fc069ae3          	bnez	a3,80007114 <uartputc+0xac>
    80007144:	02813083          	ld	ra,40(sp)
    80007148:	02013403          	ld	s0,32(sp)
    8000714c:	01813483          	ld	s1,24(sp)
    80007150:	01013903          	ld	s2,16(sp)
    80007154:	00813983          	ld	s3,8(sp)
    80007158:	03010113          	addi	sp,sp,48
    8000715c:	00008067          	ret

0000000080007160 <uartputc_sync>:
    80007160:	ff010113          	addi	sp,sp,-16
    80007164:	00813423          	sd	s0,8(sp)
    80007168:	01010413          	addi	s0,sp,16
    8000716c:	00003717          	auipc	a4,0x3
    80007170:	27c72703          	lw	a4,636(a4) # 8000a3e8 <panicked>
    80007174:	02071663          	bnez	a4,800071a0 <uartputc_sync+0x40>
    80007178:	00050793          	mv	a5,a0
    8000717c:	100006b7          	lui	a3,0x10000
    80007180:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007184:	02077713          	andi	a4,a4,32
    80007188:	fe070ce3          	beqz	a4,80007180 <uartputc_sync+0x20>
    8000718c:	0ff7f793          	andi	a5,a5,255
    80007190:	00f68023          	sb	a5,0(a3)
    80007194:	00813403          	ld	s0,8(sp)
    80007198:	01010113          	addi	sp,sp,16
    8000719c:	00008067          	ret
    800071a0:	0000006f          	j	800071a0 <uartputc_sync+0x40>

00000000800071a4 <uartstart>:
    800071a4:	ff010113          	addi	sp,sp,-16
    800071a8:	00813423          	sd	s0,8(sp)
    800071ac:	01010413          	addi	s0,sp,16
    800071b0:	00003617          	auipc	a2,0x3
    800071b4:	24060613          	addi	a2,a2,576 # 8000a3f0 <uart_tx_r>
    800071b8:	00003517          	auipc	a0,0x3
    800071bc:	24050513          	addi	a0,a0,576 # 8000a3f8 <uart_tx_w>
    800071c0:	00063783          	ld	a5,0(a2)
    800071c4:	00053703          	ld	a4,0(a0)
    800071c8:	04f70263          	beq	a4,a5,8000720c <uartstart+0x68>
    800071cc:	100005b7          	lui	a1,0x10000
    800071d0:	00004817          	auipc	a6,0x4
    800071d4:	4f080813          	addi	a6,a6,1264 # 8000b6c0 <uart_tx_buf>
    800071d8:	01c0006f          	j	800071f4 <uartstart+0x50>
    800071dc:	0006c703          	lbu	a4,0(a3)
    800071e0:	00f63023          	sd	a5,0(a2)
    800071e4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800071e8:	00063783          	ld	a5,0(a2)
    800071ec:	00053703          	ld	a4,0(a0)
    800071f0:	00f70e63          	beq	a4,a5,8000720c <uartstart+0x68>
    800071f4:	01f7f713          	andi	a4,a5,31
    800071f8:	00e806b3          	add	a3,a6,a4
    800071fc:	0055c703          	lbu	a4,5(a1)
    80007200:	00178793          	addi	a5,a5,1
    80007204:	02077713          	andi	a4,a4,32
    80007208:	fc071ae3          	bnez	a4,800071dc <uartstart+0x38>
    8000720c:	00813403          	ld	s0,8(sp)
    80007210:	01010113          	addi	sp,sp,16
    80007214:	00008067          	ret

0000000080007218 <uartgetc>:
    80007218:	ff010113          	addi	sp,sp,-16
    8000721c:	00813423          	sd	s0,8(sp)
    80007220:	01010413          	addi	s0,sp,16
    80007224:	10000737          	lui	a4,0x10000
    80007228:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000722c:	0017f793          	andi	a5,a5,1
    80007230:	00078c63          	beqz	a5,80007248 <uartgetc+0x30>
    80007234:	00074503          	lbu	a0,0(a4)
    80007238:	0ff57513          	andi	a0,a0,255
    8000723c:	00813403          	ld	s0,8(sp)
    80007240:	01010113          	addi	sp,sp,16
    80007244:	00008067          	ret
    80007248:	fff00513          	li	a0,-1
    8000724c:	ff1ff06f          	j	8000723c <uartgetc+0x24>

0000000080007250 <uartintr>:
    80007250:	100007b7          	lui	a5,0x10000
    80007254:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007258:	0017f793          	andi	a5,a5,1
    8000725c:	0a078463          	beqz	a5,80007304 <uartintr+0xb4>
    80007260:	fe010113          	addi	sp,sp,-32
    80007264:	00813823          	sd	s0,16(sp)
    80007268:	00913423          	sd	s1,8(sp)
    8000726c:	00113c23          	sd	ra,24(sp)
    80007270:	02010413          	addi	s0,sp,32
    80007274:	100004b7          	lui	s1,0x10000
    80007278:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000727c:	0ff57513          	andi	a0,a0,255
    80007280:	fffff097          	auipc	ra,0xfffff
    80007284:	534080e7          	jalr	1332(ra) # 800067b4 <consoleintr>
    80007288:	0054c783          	lbu	a5,5(s1)
    8000728c:	0017f793          	andi	a5,a5,1
    80007290:	fe0794e3          	bnez	a5,80007278 <uartintr+0x28>
    80007294:	00003617          	auipc	a2,0x3
    80007298:	15c60613          	addi	a2,a2,348 # 8000a3f0 <uart_tx_r>
    8000729c:	00003517          	auipc	a0,0x3
    800072a0:	15c50513          	addi	a0,a0,348 # 8000a3f8 <uart_tx_w>
    800072a4:	00063783          	ld	a5,0(a2)
    800072a8:	00053703          	ld	a4,0(a0)
    800072ac:	04f70263          	beq	a4,a5,800072f0 <uartintr+0xa0>
    800072b0:	100005b7          	lui	a1,0x10000
    800072b4:	00004817          	auipc	a6,0x4
    800072b8:	40c80813          	addi	a6,a6,1036 # 8000b6c0 <uart_tx_buf>
    800072bc:	01c0006f          	j	800072d8 <uartintr+0x88>
    800072c0:	0006c703          	lbu	a4,0(a3)
    800072c4:	00f63023          	sd	a5,0(a2)
    800072c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800072cc:	00063783          	ld	a5,0(a2)
    800072d0:	00053703          	ld	a4,0(a0)
    800072d4:	00f70e63          	beq	a4,a5,800072f0 <uartintr+0xa0>
    800072d8:	01f7f713          	andi	a4,a5,31
    800072dc:	00e806b3          	add	a3,a6,a4
    800072e0:	0055c703          	lbu	a4,5(a1)
    800072e4:	00178793          	addi	a5,a5,1
    800072e8:	02077713          	andi	a4,a4,32
    800072ec:	fc071ae3          	bnez	a4,800072c0 <uartintr+0x70>
    800072f0:	01813083          	ld	ra,24(sp)
    800072f4:	01013403          	ld	s0,16(sp)
    800072f8:	00813483          	ld	s1,8(sp)
    800072fc:	02010113          	addi	sp,sp,32
    80007300:	00008067          	ret
    80007304:	00003617          	auipc	a2,0x3
    80007308:	0ec60613          	addi	a2,a2,236 # 8000a3f0 <uart_tx_r>
    8000730c:	00003517          	auipc	a0,0x3
    80007310:	0ec50513          	addi	a0,a0,236 # 8000a3f8 <uart_tx_w>
    80007314:	00063783          	ld	a5,0(a2)
    80007318:	00053703          	ld	a4,0(a0)
    8000731c:	04f70263          	beq	a4,a5,80007360 <uartintr+0x110>
    80007320:	100005b7          	lui	a1,0x10000
    80007324:	00004817          	auipc	a6,0x4
    80007328:	39c80813          	addi	a6,a6,924 # 8000b6c0 <uart_tx_buf>
    8000732c:	01c0006f          	j	80007348 <uartintr+0xf8>
    80007330:	0006c703          	lbu	a4,0(a3)
    80007334:	00f63023          	sd	a5,0(a2)
    80007338:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000733c:	00063783          	ld	a5,0(a2)
    80007340:	00053703          	ld	a4,0(a0)
    80007344:	02f70063          	beq	a4,a5,80007364 <uartintr+0x114>
    80007348:	01f7f713          	andi	a4,a5,31
    8000734c:	00e806b3          	add	a3,a6,a4
    80007350:	0055c703          	lbu	a4,5(a1)
    80007354:	00178793          	addi	a5,a5,1
    80007358:	02077713          	andi	a4,a4,32
    8000735c:	fc071ae3          	bnez	a4,80007330 <uartintr+0xe0>
    80007360:	00008067          	ret
    80007364:	00008067          	ret

0000000080007368 <kinit>:
    80007368:	fc010113          	addi	sp,sp,-64
    8000736c:	02913423          	sd	s1,40(sp)
    80007370:	fffff7b7          	lui	a5,0xfffff
    80007374:	00005497          	auipc	s1,0x5
    80007378:	36b48493          	addi	s1,s1,875 # 8000c6df <end+0xfff>
    8000737c:	02813823          	sd	s0,48(sp)
    80007380:	01313c23          	sd	s3,24(sp)
    80007384:	00f4f4b3          	and	s1,s1,a5
    80007388:	02113c23          	sd	ra,56(sp)
    8000738c:	03213023          	sd	s2,32(sp)
    80007390:	01413823          	sd	s4,16(sp)
    80007394:	01513423          	sd	s5,8(sp)
    80007398:	04010413          	addi	s0,sp,64
    8000739c:	000017b7          	lui	a5,0x1
    800073a0:	01100993          	li	s3,17
    800073a4:	00f487b3          	add	a5,s1,a5
    800073a8:	01b99993          	slli	s3,s3,0x1b
    800073ac:	06f9e063          	bltu	s3,a5,8000740c <kinit+0xa4>
    800073b0:	00004a97          	auipc	s5,0x4
    800073b4:	330a8a93          	addi	s5,s5,816 # 8000b6e0 <end>
    800073b8:	0754ec63          	bltu	s1,s5,80007430 <kinit+0xc8>
    800073bc:	0734fa63          	bgeu	s1,s3,80007430 <kinit+0xc8>
    800073c0:	00088a37          	lui	s4,0x88
    800073c4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800073c8:	00003917          	auipc	s2,0x3
    800073cc:	03890913          	addi	s2,s2,56 # 8000a400 <kmem>
    800073d0:	00ca1a13          	slli	s4,s4,0xc
    800073d4:	0140006f          	j	800073e8 <kinit+0x80>
    800073d8:	000017b7          	lui	a5,0x1
    800073dc:	00f484b3          	add	s1,s1,a5
    800073e0:	0554e863          	bltu	s1,s5,80007430 <kinit+0xc8>
    800073e4:	0534f663          	bgeu	s1,s3,80007430 <kinit+0xc8>
    800073e8:	00001637          	lui	a2,0x1
    800073ec:	00100593          	li	a1,1
    800073f0:	00048513          	mv	a0,s1
    800073f4:	00000097          	auipc	ra,0x0
    800073f8:	5e4080e7          	jalr	1508(ra) # 800079d8 <__memset>
    800073fc:	00093783          	ld	a5,0(s2)
    80007400:	00f4b023          	sd	a5,0(s1)
    80007404:	00993023          	sd	s1,0(s2)
    80007408:	fd4498e3          	bne	s1,s4,800073d8 <kinit+0x70>
    8000740c:	03813083          	ld	ra,56(sp)
    80007410:	03013403          	ld	s0,48(sp)
    80007414:	02813483          	ld	s1,40(sp)
    80007418:	02013903          	ld	s2,32(sp)
    8000741c:	01813983          	ld	s3,24(sp)
    80007420:	01013a03          	ld	s4,16(sp)
    80007424:	00813a83          	ld	s5,8(sp)
    80007428:	04010113          	addi	sp,sp,64
    8000742c:	00008067          	ret
    80007430:	00001517          	auipc	a0,0x1
    80007434:	1b050513          	addi	a0,a0,432 # 800085e0 <digits+0x18>
    80007438:	fffff097          	auipc	ra,0xfffff
    8000743c:	4b4080e7          	jalr	1204(ra) # 800068ec <panic>

0000000080007440 <freerange>:
    80007440:	fc010113          	addi	sp,sp,-64
    80007444:	000017b7          	lui	a5,0x1
    80007448:	02913423          	sd	s1,40(sp)
    8000744c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007450:	009504b3          	add	s1,a0,s1
    80007454:	fffff537          	lui	a0,0xfffff
    80007458:	02813823          	sd	s0,48(sp)
    8000745c:	02113c23          	sd	ra,56(sp)
    80007460:	03213023          	sd	s2,32(sp)
    80007464:	01313c23          	sd	s3,24(sp)
    80007468:	01413823          	sd	s4,16(sp)
    8000746c:	01513423          	sd	s5,8(sp)
    80007470:	01613023          	sd	s6,0(sp)
    80007474:	04010413          	addi	s0,sp,64
    80007478:	00a4f4b3          	and	s1,s1,a0
    8000747c:	00f487b3          	add	a5,s1,a5
    80007480:	06f5e463          	bltu	a1,a5,800074e8 <freerange+0xa8>
    80007484:	00004a97          	auipc	s5,0x4
    80007488:	25ca8a93          	addi	s5,s5,604 # 8000b6e0 <end>
    8000748c:	0954e263          	bltu	s1,s5,80007510 <freerange+0xd0>
    80007490:	01100993          	li	s3,17
    80007494:	01b99993          	slli	s3,s3,0x1b
    80007498:	0734fc63          	bgeu	s1,s3,80007510 <freerange+0xd0>
    8000749c:	00058a13          	mv	s4,a1
    800074a0:	00003917          	auipc	s2,0x3
    800074a4:	f6090913          	addi	s2,s2,-160 # 8000a400 <kmem>
    800074a8:	00002b37          	lui	s6,0x2
    800074ac:	0140006f          	j	800074c0 <freerange+0x80>
    800074b0:	000017b7          	lui	a5,0x1
    800074b4:	00f484b3          	add	s1,s1,a5
    800074b8:	0554ec63          	bltu	s1,s5,80007510 <freerange+0xd0>
    800074bc:	0534fa63          	bgeu	s1,s3,80007510 <freerange+0xd0>
    800074c0:	00001637          	lui	a2,0x1
    800074c4:	00100593          	li	a1,1
    800074c8:	00048513          	mv	a0,s1
    800074cc:	00000097          	auipc	ra,0x0
    800074d0:	50c080e7          	jalr	1292(ra) # 800079d8 <__memset>
    800074d4:	00093703          	ld	a4,0(s2)
    800074d8:	016487b3          	add	a5,s1,s6
    800074dc:	00e4b023          	sd	a4,0(s1)
    800074e0:	00993023          	sd	s1,0(s2)
    800074e4:	fcfa76e3          	bgeu	s4,a5,800074b0 <freerange+0x70>
    800074e8:	03813083          	ld	ra,56(sp)
    800074ec:	03013403          	ld	s0,48(sp)
    800074f0:	02813483          	ld	s1,40(sp)
    800074f4:	02013903          	ld	s2,32(sp)
    800074f8:	01813983          	ld	s3,24(sp)
    800074fc:	01013a03          	ld	s4,16(sp)
    80007500:	00813a83          	ld	s5,8(sp)
    80007504:	00013b03          	ld	s6,0(sp)
    80007508:	04010113          	addi	sp,sp,64
    8000750c:	00008067          	ret
    80007510:	00001517          	auipc	a0,0x1
    80007514:	0d050513          	addi	a0,a0,208 # 800085e0 <digits+0x18>
    80007518:	fffff097          	auipc	ra,0xfffff
    8000751c:	3d4080e7          	jalr	980(ra) # 800068ec <panic>

0000000080007520 <kfree>:
    80007520:	fe010113          	addi	sp,sp,-32
    80007524:	00813823          	sd	s0,16(sp)
    80007528:	00113c23          	sd	ra,24(sp)
    8000752c:	00913423          	sd	s1,8(sp)
    80007530:	02010413          	addi	s0,sp,32
    80007534:	03451793          	slli	a5,a0,0x34
    80007538:	04079c63          	bnez	a5,80007590 <kfree+0x70>
    8000753c:	00004797          	auipc	a5,0x4
    80007540:	1a478793          	addi	a5,a5,420 # 8000b6e0 <end>
    80007544:	00050493          	mv	s1,a0
    80007548:	04f56463          	bltu	a0,a5,80007590 <kfree+0x70>
    8000754c:	01100793          	li	a5,17
    80007550:	01b79793          	slli	a5,a5,0x1b
    80007554:	02f57e63          	bgeu	a0,a5,80007590 <kfree+0x70>
    80007558:	00001637          	lui	a2,0x1
    8000755c:	00100593          	li	a1,1
    80007560:	00000097          	auipc	ra,0x0
    80007564:	478080e7          	jalr	1144(ra) # 800079d8 <__memset>
    80007568:	00003797          	auipc	a5,0x3
    8000756c:	e9878793          	addi	a5,a5,-360 # 8000a400 <kmem>
    80007570:	0007b703          	ld	a4,0(a5)
    80007574:	01813083          	ld	ra,24(sp)
    80007578:	01013403          	ld	s0,16(sp)
    8000757c:	00e4b023          	sd	a4,0(s1)
    80007580:	0097b023          	sd	s1,0(a5)
    80007584:	00813483          	ld	s1,8(sp)
    80007588:	02010113          	addi	sp,sp,32
    8000758c:	00008067          	ret
    80007590:	00001517          	auipc	a0,0x1
    80007594:	05050513          	addi	a0,a0,80 # 800085e0 <digits+0x18>
    80007598:	fffff097          	auipc	ra,0xfffff
    8000759c:	354080e7          	jalr	852(ra) # 800068ec <panic>

00000000800075a0 <kalloc>:
    800075a0:	fe010113          	addi	sp,sp,-32
    800075a4:	00813823          	sd	s0,16(sp)
    800075a8:	00913423          	sd	s1,8(sp)
    800075ac:	00113c23          	sd	ra,24(sp)
    800075b0:	02010413          	addi	s0,sp,32
    800075b4:	00003797          	auipc	a5,0x3
    800075b8:	e4c78793          	addi	a5,a5,-436 # 8000a400 <kmem>
    800075bc:	0007b483          	ld	s1,0(a5)
    800075c0:	02048063          	beqz	s1,800075e0 <kalloc+0x40>
    800075c4:	0004b703          	ld	a4,0(s1)
    800075c8:	00001637          	lui	a2,0x1
    800075cc:	00500593          	li	a1,5
    800075d0:	00048513          	mv	a0,s1
    800075d4:	00e7b023          	sd	a4,0(a5)
    800075d8:	00000097          	auipc	ra,0x0
    800075dc:	400080e7          	jalr	1024(ra) # 800079d8 <__memset>
    800075e0:	01813083          	ld	ra,24(sp)
    800075e4:	01013403          	ld	s0,16(sp)
    800075e8:	00048513          	mv	a0,s1
    800075ec:	00813483          	ld	s1,8(sp)
    800075f0:	02010113          	addi	sp,sp,32
    800075f4:	00008067          	ret

00000000800075f8 <initlock>:
    800075f8:	ff010113          	addi	sp,sp,-16
    800075fc:	00813423          	sd	s0,8(sp)
    80007600:	01010413          	addi	s0,sp,16
    80007604:	00813403          	ld	s0,8(sp)
    80007608:	00b53423          	sd	a1,8(a0)
    8000760c:	00052023          	sw	zero,0(a0)
    80007610:	00053823          	sd	zero,16(a0)
    80007614:	01010113          	addi	sp,sp,16
    80007618:	00008067          	ret

000000008000761c <acquire>:
    8000761c:	fe010113          	addi	sp,sp,-32
    80007620:	00813823          	sd	s0,16(sp)
    80007624:	00913423          	sd	s1,8(sp)
    80007628:	00113c23          	sd	ra,24(sp)
    8000762c:	01213023          	sd	s2,0(sp)
    80007630:	02010413          	addi	s0,sp,32
    80007634:	00050493          	mv	s1,a0
    80007638:	10002973          	csrr	s2,sstatus
    8000763c:	100027f3          	csrr	a5,sstatus
    80007640:	ffd7f793          	andi	a5,a5,-3
    80007644:	10079073          	csrw	sstatus,a5
    80007648:	fffff097          	auipc	ra,0xfffff
    8000764c:	8e0080e7          	jalr	-1824(ra) # 80005f28 <mycpu>
    80007650:	07852783          	lw	a5,120(a0)
    80007654:	06078e63          	beqz	a5,800076d0 <acquire+0xb4>
    80007658:	fffff097          	auipc	ra,0xfffff
    8000765c:	8d0080e7          	jalr	-1840(ra) # 80005f28 <mycpu>
    80007660:	07852783          	lw	a5,120(a0)
    80007664:	0004a703          	lw	a4,0(s1)
    80007668:	0017879b          	addiw	a5,a5,1
    8000766c:	06f52c23          	sw	a5,120(a0)
    80007670:	04071063          	bnez	a4,800076b0 <acquire+0x94>
    80007674:	00100713          	li	a4,1
    80007678:	00070793          	mv	a5,a4
    8000767c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007680:	0007879b          	sext.w	a5,a5
    80007684:	fe079ae3          	bnez	a5,80007678 <acquire+0x5c>
    80007688:	0ff0000f          	fence
    8000768c:	fffff097          	auipc	ra,0xfffff
    80007690:	89c080e7          	jalr	-1892(ra) # 80005f28 <mycpu>
    80007694:	01813083          	ld	ra,24(sp)
    80007698:	01013403          	ld	s0,16(sp)
    8000769c:	00a4b823          	sd	a0,16(s1)
    800076a0:	00013903          	ld	s2,0(sp)
    800076a4:	00813483          	ld	s1,8(sp)
    800076a8:	02010113          	addi	sp,sp,32
    800076ac:	00008067          	ret
    800076b0:	0104b903          	ld	s2,16(s1)
    800076b4:	fffff097          	auipc	ra,0xfffff
    800076b8:	874080e7          	jalr	-1932(ra) # 80005f28 <mycpu>
    800076bc:	faa91ce3          	bne	s2,a0,80007674 <acquire+0x58>
    800076c0:	00001517          	auipc	a0,0x1
    800076c4:	f2850513          	addi	a0,a0,-216 # 800085e8 <digits+0x20>
    800076c8:	fffff097          	auipc	ra,0xfffff
    800076cc:	224080e7          	jalr	548(ra) # 800068ec <panic>
    800076d0:	00195913          	srli	s2,s2,0x1
    800076d4:	fffff097          	auipc	ra,0xfffff
    800076d8:	854080e7          	jalr	-1964(ra) # 80005f28 <mycpu>
    800076dc:	00197913          	andi	s2,s2,1
    800076e0:	07252e23          	sw	s2,124(a0)
    800076e4:	f75ff06f          	j	80007658 <acquire+0x3c>

00000000800076e8 <release>:
    800076e8:	fe010113          	addi	sp,sp,-32
    800076ec:	00813823          	sd	s0,16(sp)
    800076f0:	00113c23          	sd	ra,24(sp)
    800076f4:	00913423          	sd	s1,8(sp)
    800076f8:	01213023          	sd	s2,0(sp)
    800076fc:	02010413          	addi	s0,sp,32
    80007700:	00052783          	lw	a5,0(a0)
    80007704:	00079a63          	bnez	a5,80007718 <release+0x30>
    80007708:	00001517          	auipc	a0,0x1
    8000770c:	ee850513          	addi	a0,a0,-280 # 800085f0 <digits+0x28>
    80007710:	fffff097          	auipc	ra,0xfffff
    80007714:	1dc080e7          	jalr	476(ra) # 800068ec <panic>
    80007718:	01053903          	ld	s2,16(a0)
    8000771c:	00050493          	mv	s1,a0
    80007720:	fffff097          	auipc	ra,0xfffff
    80007724:	808080e7          	jalr	-2040(ra) # 80005f28 <mycpu>
    80007728:	fea910e3          	bne	s2,a0,80007708 <release+0x20>
    8000772c:	0004b823          	sd	zero,16(s1)
    80007730:	0ff0000f          	fence
    80007734:	0f50000f          	fence	iorw,ow
    80007738:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000773c:	ffffe097          	auipc	ra,0xffffe
    80007740:	7ec080e7          	jalr	2028(ra) # 80005f28 <mycpu>
    80007744:	100027f3          	csrr	a5,sstatus
    80007748:	0027f793          	andi	a5,a5,2
    8000774c:	04079a63          	bnez	a5,800077a0 <release+0xb8>
    80007750:	07852783          	lw	a5,120(a0)
    80007754:	02f05e63          	blez	a5,80007790 <release+0xa8>
    80007758:	fff7871b          	addiw	a4,a5,-1
    8000775c:	06e52c23          	sw	a4,120(a0)
    80007760:	00071c63          	bnez	a4,80007778 <release+0x90>
    80007764:	07c52783          	lw	a5,124(a0)
    80007768:	00078863          	beqz	a5,80007778 <release+0x90>
    8000776c:	100027f3          	csrr	a5,sstatus
    80007770:	0027e793          	ori	a5,a5,2
    80007774:	10079073          	csrw	sstatus,a5
    80007778:	01813083          	ld	ra,24(sp)
    8000777c:	01013403          	ld	s0,16(sp)
    80007780:	00813483          	ld	s1,8(sp)
    80007784:	00013903          	ld	s2,0(sp)
    80007788:	02010113          	addi	sp,sp,32
    8000778c:	00008067          	ret
    80007790:	00001517          	auipc	a0,0x1
    80007794:	e8050513          	addi	a0,a0,-384 # 80008610 <digits+0x48>
    80007798:	fffff097          	auipc	ra,0xfffff
    8000779c:	154080e7          	jalr	340(ra) # 800068ec <panic>
    800077a0:	00001517          	auipc	a0,0x1
    800077a4:	e5850513          	addi	a0,a0,-424 # 800085f8 <digits+0x30>
    800077a8:	fffff097          	auipc	ra,0xfffff
    800077ac:	144080e7          	jalr	324(ra) # 800068ec <panic>

00000000800077b0 <holding>:
    800077b0:	00052783          	lw	a5,0(a0)
    800077b4:	00079663          	bnez	a5,800077c0 <holding+0x10>
    800077b8:	00000513          	li	a0,0
    800077bc:	00008067          	ret
    800077c0:	fe010113          	addi	sp,sp,-32
    800077c4:	00813823          	sd	s0,16(sp)
    800077c8:	00913423          	sd	s1,8(sp)
    800077cc:	00113c23          	sd	ra,24(sp)
    800077d0:	02010413          	addi	s0,sp,32
    800077d4:	01053483          	ld	s1,16(a0)
    800077d8:	ffffe097          	auipc	ra,0xffffe
    800077dc:	750080e7          	jalr	1872(ra) # 80005f28 <mycpu>
    800077e0:	01813083          	ld	ra,24(sp)
    800077e4:	01013403          	ld	s0,16(sp)
    800077e8:	40a48533          	sub	a0,s1,a0
    800077ec:	00153513          	seqz	a0,a0
    800077f0:	00813483          	ld	s1,8(sp)
    800077f4:	02010113          	addi	sp,sp,32
    800077f8:	00008067          	ret

00000000800077fc <push_off>:
    800077fc:	fe010113          	addi	sp,sp,-32
    80007800:	00813823          	sd	s0,16(sp)
    80007804:	00113c23          	sd	ra,24(sp)
    80007808:	00913423          	sd	s1,8(sp)
    8000780c:	02010413          	addi	s0,sp,32
    80007810:	100024f3          	csrr	s1,sstatus
    80007814:	100027f3          	csrr	a5,sstatus
    80007818:	ffd7f793          	andi	a5,a5,-3
    8000781c:	10079073          	csrw	sstatus,a5
    80007820:	ffffe097          	auipc	ra,0xffffe
    80007824:	708080e7          	jalr	1800(ra) # 80005f28 <mycpu>
    80007828:	07852783          	lw	a5,120(a0)
    8000782c:	02078663          	beqz	a5,80007858 <push_off+0x5c>
    80007830:	ffffe097          	auipc	ra,0xffffe
    80007834:	6f8080e7          	jalr	1784(ra) # 80005f28 <mycpu>
    80007838:	07852783          	lw	a5,120(a0)
    8000783c:	01813083          	ld	ra,24(sp)
    80007840:	01013403          	ld	s0,16(sp)
    80007844:	0017879b          	addiw	a5,a5,1
    80007848:	06f52c23          	sw	a5,120(a0)
    8000784c:	00813483          	ld	s1,8(sp)
    80007850:	02010113          	addi	sp,sp,32
    80007854:	00008067          	ret
    80007858:	0014d493          	srli	s1,s1,0x1
    8000785c:	ffffe097          	auipc	ra,0xffffe
    80007860:	6cc080e7          	jalr	1740(ra) # 80005f28 <mycpu>
    80007864:	0014f493          	andi	s1,s1,1
    80007868:	06952e23          	sw	s1,124(a0)
    8000786c:	fc5ff06f          	j	80007830 <push_off+0x34>

0000000080007870 <pop_off>:
    80007870:	ff010113          	addi	sp,sp,-16
    80007874:	00813023          	sd	s0,0(sp)
    80007878:	00113423          	sd	ra,8(sp)
    8000787c:	01010413          	addi	s0,sp,16
    80007880:	ffffe097          	auipc	ra,0xffffe
    80007884:	6a8080e7          	jalr	1704(ra) # 80005f28 <mycpu>
    80007888:	100027f3          	csrr	a5,sstatus
    8000788c:	0027f793          	andi	a5,a5,2
    80007890:	04079663          	bnez	a5,800078dc <pop_off+0x6c>
    80007894:	07852783          	lw	a5,120(a0)
    80007898:	02f05a63          	blez	a5,800078cc <pop_off+0x5c>
    8000789c:	fff7871b          	addiw	a4,a5,-1
    800078a0:	06e52c23          	sw	a4,120(a0)
    800078a4:	00071c63          	bnez	a4,800078bc <pop_off+0x4c>
    800078a8:	07c52783          	lw	a5,124(a0)
    800078ac:	00078863          	beqz	a5,800078bc <pop_off+0x4c>
    800078b0:	100027f3          	csrr	a5,sstatus
    800078b4:	0027e793          	ori	a5,a5,2
    800078b8:	10079073          	csrw	sstatus,a5
    800078bc:	00813083          	ld	ra,8(sp)
    800078c0:	00013403          	ld	s0,0(sp)
    800078c4:	01010113          	addi	sp,sp,16
    800078c8:	00008067          	ret
    800078cc:	00001517          	auipc	a0,0x1
    800078d0:	d4450513          	addi	a0,a0,-700 # 80008610 <digits+0x48>
    800078d4:	fffff097          	auipc	ra,0xfffff
    800078d8:	018080e7          	jalr	24(ra) # 800068ec <panic>
    800078dc:	00001517          	auipc	a0,0x1
    800078e0:	d1c50513          	addi	a0,a0,-740 # 800085f8 <digits+0x30>
    800078e4:	fffff097          	auipc	ra,0xfffff
    800078e8:	008080e7          	jalr	8(ra) # 800068ec <panic>

00000000800078ec <push_on>:
    800078ec:	fe010113          	addi	sp,sp,-32
    800078f0:	00813823          	sd	s0,16(sp)
    800078f4:	00113c23          	sd	ra,24(sp)
    800078f8:	00913423          	sd	s1,8(sp)
    800078fc:	02010413          	addi	s0,sp,32
    80007900:	100024f3          	csrr	s1,sstatus
    80007904:	100027f3          	csrr	a5,sstatus
    80007908:	0027e793          	ori	a5,a5,2
    8000790c:	10079073          	csrw	sstatus,a5
    80007910:	ffffe097          	auipc	ra,0xffffe
    80007914:	618080e7          	jalr	1560(ra) # 80005f28 <mycpu>
    80007918:	07852783          	lw	a5,120(a0)
    8000791c:	02078663          	beqz	a5,80007948 <push_on+0x5c>
    80007920:	ffffe097          	auipc	ra,0xffffe
    80007924:	608080e7          	jalr	1544(ra) # 80005f28 <mycpu>
    80007928:	07852783          	lw	a5,120(a0)
    8000792c:	01813083          	ld	ra,24(sp)
    80007930:	01013403          	ld	s0,16(sp)
    80007934:	0017879b          	addiw	a5,a5,1
    80007938:	06f52c23          	sw	a5,120(a0)
    8000793c:	00813483          	ld	s1,8(sp)
    80007940:	02010113          	addi	sp,sp,32
    80007944:	00008067          	ret
    80007948:	0014d493          	srli	s1,s1,0x1
    8000794c:	ffffe097          	auipc	ra,0xffffe
    80007950:	5dc080e7          	jalr	1500(ra) # 80005f28 <mycpu>
    80007954:	0014f493          	andi	s1,s1,1
    80007958:	06952e23          	sw	s1,124(a0)
    8000795c:	fc5ff06f          	j	80007920 <push_on+0x34>

0000000080007960 <pop_on>:
    80007960:	ff010113          	addi	sp,sp,-16
    80007964:	00813023          	sd	s0,0(sp)
    80007968:	00113423          	sd	ra,8(sp)
    8000796c:	01010413          	addi	s0,sp,16
    80007970:	ffffe097          	auipc	ra,0xffffe
    80007974:	5b8080e7          	jalr	1464(ra) # 80005f28 <mycpu>
    80007978:	100027f3          	csrr	a5,sstatus
    8000797c:	0027f793          	andi	a5,a5,2
    80007980:	04078463          	beqz	a5,800079c8 <pop_on+0x68>
    80007984:	07852783          	lw	a5,120(a0)
    80007988:	02f05863          	blez	a5,800079b8 <pop_on+0x58>
    8000798c:	fff7879b          	addiw	a5,a5,-1
    80007990:	06f52c23          	sw	a5,120(a0)
    80007994:	07853783          	ld	a5,120(a0)
    80007998:	00079863          	bnez	a5,800079a8 <pop_on+0x48>
    8000799c:	100027f3          	csrr	a5,sstatus
    800079a0:	ffd7f793          	andi	a5,a5,-3
    800079a4:	10079073          	csrw	sstatus,a5
    800079a8:	00813083          	ld	ra,8(sp)
    800079ac:	00013403          	ld	s0,0(sp)
    800079b0:	01010113          	addi	sp,sp,16
    800079b4:	00008067          	ret
    800079b8:	00001517          	auipc	a0,0x1
    800079bc:	c8050513          	addi	a0,a0,-896 # 80008638 <digits+0x70>
    800079c0:	fffff097          	auipc	ra,0xfffff
    800079c4:	f2c080e7          	jalr	-212(ra) # 800068ec <panic>
    800079c8:	00001517          	auipc	a0,0x1
    800079cc:	c5050513          	addi	a0,a0,-944 # 80008618 <digits+0x50>
    800079d0:	fffff097          	auipc	ra,0xfffff
    800079d4:	f1c080e7          	jalr	-228(ra) # 800068ec <panic>

00000000800079d8 <__memset>:
    800079d8:	ff010113          	addi	sp,sp,-16
    800079dc:	00813423          	sd	s0,8(sp)
    800079e0:	01010413          	addi	s0,sp,16
    800079e4:	1a060e63          	beqz	a2,80007ba0 <__memset+0x1c8>
    800079e8:	40a007b3          	neg	a5,a0
    800079ec:	0077f793          	andi	a5,a5,7
    800079f0:	00778693          	addi	a3,a5,7
    800079f4:	00b00813          	li	a6,11
    800079f8:	0ff5f593          	andi	a1,a1,255
    800079fc:	fff6071b          	addiw	a4,a2,-1
    80007a00:	1b06e663          	bltu	a3,a6,80007bac <__memset+0x1d4>
    80007a04:	1cd76463          	bltu	a4,a3,80007bcc <__memset+0x1f4>
    80007a08:	1a078e63          	beqz	a5,80007bc4 <__memset+0x1ec>
    80007a0c:	00b50023          	sb	a1,0(a0)
    80007a10:	00100713          	li	a4,1
    80007a14:	1ae78463          	beq	a5,a4,80007bbc <__memset+0x1e4>
    80007a18:	00b500a3          	sb	a1,1(a0)
    80007a1c:	00200713          	li	a4,2
    80007a20:	1ae78a63          	beq	a5,a4,80007bd4 <__memset+0x1fc>
    80007a24:	00b50123          	sb	a1,2(a0)
    80007a28:	00300713          	li	a4,3
    80007a2c:	18e78463          	beq	a5,a4,80007bb4 <__memset+0x1dc>
    80007a30:	00b501a3          	sb	a1,3(a0)
    80007a34:	00400713          	li	a4,4
    80007a38:	1ae78263          	beq	a5,a4,80007bdc <__memset+0x204>
    80007a3c:	00b50223          	sb	a1,4(a0)
    80007a40:	00500713          	li	a4,5
    80007a44:	1ae78063          	beq	a5,a4,80007be4 <__memset+0x20c>
    80007a48:	00b502a3          	sb	a1,5(a0)
    80007a4c:	00700713          	li	a4,7
    80007a50:	18e79e63          	bne	a5,a4,80007bec <__memset+0x214>
    80007a54:	00b50323          	sb	a1,6(a0)
    80007a58:	00700e93          	li	t4,7
    80007a5c:	00859713          	slli	a4,a1,0x8
    80007a60:	00e5e733          	or	a4,a1,a4
    80007a64:	01059e13          	slli	t3,a1,0x10
    80007a68:	01c76e33          	or	t3,a4,t3
    80007a6c:	01859313          	slli	t1,a1,0x18
    80007a70:	006e6333          	or	t1,t3,t1
    80007a74:	02059893          	slli	a7,a1,0x20
    80007a78:	40f60e3b          	subw	t3,a2,a5
    80007a7c:	011368b3          	or	a7,t1,a7
    80007a80:	02859813          	slli	a6,a1,0x28
    80007a84:	0108e833          	or	a6,a7,a6
    80007a88:	03059693          	slli	a3,a1,0x30
    80007a8c:	003e589b          	srliw	a7,t3,0x3
    80007a90:	00d866b3          	or	a3,a6,a3
    80007a94:	03859713          	slli	a4,a1,0x38
    80007a98:	00389813          	slli	a6,a7,0x3
    80007a9c:	00f507b3          	add	a5,a0,a5
    80007aa0:	00e6e733          	or	a4,a3,a4
    80007aa4:	000e089b          	sext.w	a7,t3
    80007aa8:	00f806b3          	add	a3,a6,a5
    80007aac:	00e7b023          	sd	a4,0(a5)
    80007ab0:	00878793          	addi	a5,a5,8
    80007ab4:	fed79ce3          	bne	a5,a3,80007aac <__memset+0xd4>
    80007ab8:	ff8e7793          	andi	a5,t3,-8
    80007abc:	0007871b          	sext.w	a4,a5
    80007ac0:	01d787bb          	addw	a5,a5,t4
    80007ac4:	0ce88e63          	beq	a7,a4,80007ba0 <__memset+0x1c8>
    80007ac8:	00f50733          	add	a4,a0,a5
    80007acc:	00b70023          	sb	a1,0(a4)
    80007ad0:	0017871b          	addiw	a4,a5,1
    80007ad4:	0cc77663          	bgeu	a4,a2,80007ba0 <__memset+0x1c8>
    80007ad8:	00e50733          	add	a4,a0,a4
    80007adc:	00b70023          	sb	a1,0(a4)
    80007ae0:	0027871b          	addiw	a4,a5,2
    80007ae4:	0ac77e63          	bgeu	a4,a2,80007ba0 <__memset+0x1c8>
    80007ae8:	00e50733          	add	a4,a0,a4
    80007aec:	00b70023          	sb	a1,0(a4)
    80007af0:	0037871b          	addiw	a4,a5,3
    80007af4:	0ac77663          	bgeu	a4,a2,80007ba0 <__memset+0x1c8>
    80007af8:	00e50733          	add	a4,a0,a4
    80007afc:	00b70023          	sb	a1,0(a4)
    80007b00:	0047871b          	addiw	a4,a5,4
    80007b04:	08c77e63          	bgeu	a4,a2,80007ba0 <__memset+0x1c8>
    80007b08:	00e50733          	add	a4,a0,a4
    80007b0c:	00b70023          	sb	a1,0(a4)
    80007b10:	0057871b          	addiw	a4,a5,5
    80007b14:	08c77663          	bgeu	a4,a2,80007ba0 <__memset+0x1c8>
    80007b18:	00e50733          	add	a4,a0,a4
    80007b1c:	00b70023          	sb	a1,0(a4)
    80007b20:	0067871b          	addiw	a4,a5,6
    80007b24:	06c77e63          	bgeu	a4,a2,80007ba0 <__memset+0x1c8>
    80007b28:	00e50733          	add	a4,a0,a4
    80007b2c:	00b70023          	sb	a1,0(a4)
    80007b30:	0077871b          	addiw	a4,a5,7
    80007b34:	06c77663          	bgeu	a4,a2,80007ba0 <__memset+0x1c8>
    80007b38:	00e50733          	add	a4,a0,a4
    80007b3c:	00b70023          	sb	a1,0(a4)
    80007b40:	0087871b          	addiw	a4,a5,8
    80007b44:	04c77e63          	bgeu	a4,a2,80007ba0 <__memset+0x1c8>
    80007b48:	00e50733          	add	a4,a0,a4
    80007b4c:	00b70023          	sb	a1,0(a4)
    80007b50:	0097871b          	addiw	a4,a5,9
    80007b54:	04c77663          	bgeu	a4,a2,80007ba0 <__memset+0x1c8>
    80007b58:	00e50733          	add	a4,a0,a4
    80007b5c:	00b70023          	sb	a1,0(a4)
    80007b60:	00a7871b          	addiw	a4,a5,10
    80007b64:	02c77e63          	bgeu	a4,a2,80007ba0 <__memset+0x1c8>
    80007b68:	00e50733          	add	a4,a0,a4
    80007b6c:	00b70023          	sb	a1,0(a4)
    80007b70:	00b7871b          	addiw	a4,a5,11
    80007b74:	02c77663          	bgeu	a4,a2,80007ba0 <__memset+0x1c8>
    80007b78:	00e50733          	add	a4,a0,a4
    80007b7c:	00b70023          	sb	a1,0(a4)
    80007b80:	00c7871b          	addiw	a4,a5,12
    80007b84:	00c77e63          	bgeu	a4,a2,80007ba0 <__memset+0x1c8>
    80007b88:	00e50733          	add	a4,a0,a4
    80007b8c:	00b70023          	sb	a1,0(a4)
    80007b90:	00d7879b          	addiw	a5,a5,13
    80007b94:	00c7f663          	bgeu	a5,a2,80007ba0 <__memset+0x1c8>
    80007b98:	00f507b3          	add	a5,a0,a5
    80007b9c:	00b78023          	sb	a1,0(a5)
    80007ba0:	00813403          	ld	s0,8(sp)
    80007ba4:	01010113          	addi	sp,sp,16
    80007ba8:	00008067          	ret
    80007bac:	00b00693          	li	a3,11
    80007bb0:	e55ff06f          	j	80007a04 <__memset+0x2c>
    80007bb4:	00300e93          	li	t4,3
    80007bb8:	ea5ff06f          	j	80007a5c <__memset+0x84>
    80007bbc:	00100e93          	li	t4,1
    80007bc0:	e9dff06f          	j	80007a5c <__memset+0x84>
    80007bc4:	00000e93          	li	t4,0
    80007bc8:	e95ff06f          	j	80007a5c <__memset+0x84>
    80007bcc:	00000793          	li	a5,0
    80007bd0:	ef9ff06f          	j	80007ac8 <__memset+0xf0>
    80007bd4:	00200e93          	li	t4,2
    80007bd8:	e85ff06f          	j	80007a5c <__memset+0x84>
    80007bdc:	00400e93          	li	t4,4
    80007be0:	e7dff06f          	j	80007a5c <__memset+0x84>
    80007be4:	00500e93          	li	t4,5
    80007be8:	e75ff06f          	j	80007a5c <__memset+0x84>
    80007bec:	00600e93          	li	t4,6
    80007bf0:	e6dff06f          	j	80007a5c <__memset+0x84>

0000000080007bf4 <__memmove>:
    80007bf4:	ff010113          	addi	sp,sp,-16
    80007bf8:	00813423          	sd	s0,8(sp)
    80007bfc:	01010413          	addi	s0,sp,16
    80007c00:	0e060863          	beqz	a2,80007cf0 <__memmove+0xfc>
    80007c04:	fff6069b          	addiw	a3,a2,-1
    80007c08:	0006881b          	sext.w	a6,a3
    80007c0c:	0ea5e863          	bltu	a1,a0,80007cfc <__memmove+0x108>
    80007c10:	00758713          	addi	a4,a1,7
    80007c14:	00a5e7b3          	or	a5,a1,a0
    80007c18:	40a70733          	sub	a4,a4,a0
    80007c1c:	0077f793          	andi	a5,a5,7
    80007c20:	00f73713          	sltiu	a4,a4,15
    80007c24:	00174713          	xori	a4,a4,1
    80007c28:	0017b793          	seqz	a5,a5
    80007c2c:	00e7f7b3          	and	a5,a5,a4
    80007c30:	10078863          	beqz	a5,80007d40 <__memmove+0x14c>
    80007c34:	00900793          	li	a5,9
    80007c38:	1107f463          	bgeu	a5,a6,80007d40 <__memmove+0x14c>
    80007c3c:	0036581b          	srliw	a6,a2,0x3
    80007c40:	fff8081b          	addiw	a6,a6,-1
    80007c44:	02081813          	slli	a6,a6,0x20
    80007c48:	01d85893          	srli	a7,a6,0x1d
    80007c4c:	00858813          	addi	a6,a1,8
    80007c50:	00058793          	mv	a5,a1
    80007c54:	00050713          	mv	a4,a0
    80007c58:	01088833          	add	a6,a7,a6
    80007c5c:	0007b883          	ld	a7,0(a5)
    80007c60:	00878793          	addi	a5,a5,8
    80007c64:	00870713          	addi	a4,a4,8
    80007c68:	ff173c23          	sd	a7,-8(a4)
    80007c6c:	ff0798e3          	bne	a5,a6,80007c5c <__memmove+0x68>
    80007c70:	ff867713          	andi	a4,a2,-8
    80007c74:	02071793          	slli	a5,a4,0x20
    80007c78:	0207d793          	srli	a5,a5,0x20
    80007c7c:	00f585b3          	add	a1,a1,a5
    80007c80:	40e686bb          	subw	a3,a3,a4
    80007c84:	00f507b3          	add	a5,a0,a5
    80007c88:	06e60463          	beq	a2,a4,80007cf0 <__memmove+0xfc>
    80007c8c:	0005c703          	lbu	a4,0(a1)
    80007c90:	00e78023          	sb	a4,0(a5)
    80007c94:	04068e63          	beqz	a3,80007cf0 <__memmove+0xfc>
    80007c98:	0015c603          	lbu	a2,1(a1)
    80007c9c:	00100713          	li	a4,1
    80007ca0:	00c780a3          	sb	a2,1(a5)
    80007ca4:	04e68663          	beq	a3,a4,80007cf0 <__memmove+0xfc>
    80007ca8:	0025c603          	lbu	a2,2(a1)
    80007cac:	00200713          	li	a4,2
    80007cb0:	00c78123          	sb	a2,2(a5)
    80007cb4:	02e68e63          	beq	a3,a4,80007cf0 <__memmove+0xfc>
    80007cb8:	0035c603          	lbu	a2,3(a1)
    80007cbc:	00300713          	li	a4,3
    80007cc0:	00c781a3          	sb	a2,3(a5)
    80007cc4:	02e68663          	beq	a3,a4,80007cf0 <__memmove+0xfc>
    80007cc8:	0045c603          	lbu	a2,4(a1)
    80007ccc:	00400713          	li	a4,4
    80007cd0:	00c78223          	sb	a2,4(a5)
    80007cd4:	00e68e63          	beq	a3,a4,80007cf0 <__memmove+0xfc>
    80007cd8:	0055c603          	lbu	a2,5(a1)
    80007cdc:	00500713          	li	a4,5
    80007ce0:	00c782a3          	sb	a2,5(a5)
    80007ce4:	00e68663          	beq	a3,a4,80007cf0 <__memmove+0xfc>
    80007ce8:	0065c703          	lbu	a4,6(a1)
    80007cec:	00e78323          	sb	a4,6(a5)
    80007cf0:	00813403          	ld	s0,8(sp)
    80007cf4:	01010113          	addi	sp,sp,16
    80007cf8:	00008067          	ret
    80007cfc:	02061713          	slli	a4,a2,0x20
    80007d00:	02075713          	srli	a4,a4,0x20
    80007d04:	00e587b3          	add	a5,a1,a4
    80007d08:	f0f574e3          	bgeu	a0,a5,80007c10 <__memmove+0x1c>
    80007d0c:	02069613          	slli	a2,a3,0x20
    80007d10:	02065613          	srli	a2,a2,0x20
    80007d14:	fff64613          	not	a2,a2
    80007d18:	00e50733          	add	a4,a0,a4
    80007d1c:	00c78633          	add	a2,a5,a2
    80007d20:	fff7c683          	lbu	a3,-1(a5)
    80007d24:	fff78793          	addi	a5,a5,-1
    80007d28:	fff70713          	addi	a4,a4,-1
    80007d2c:	00d70023          	sb	a3,0(a4)
    80007d30:	fec798e3          	bne	a5,a2,80007d20 <__memmove+0x12c>
    80007d34:	00813403          	ld	s0,8(sp)
    80007d38:	01010113          	addi	sp,sp,16
    80007d3c:	00008067          	ret
    80007d40:	02069713          	slli	a4,a3,0x20
    80007d44:	02075713          	srli	a4,a4,0x20
    80007d48:	00170713          	addi	a4,a4,1
    80007d4c:	00e50733          	add	a4,a0,a4
    80007d50:	00050793          	mv	a5,a0
    80007d54:	0005c683          	lbu	a3,0(a1)
    80007d58:	00178793          	addi	a5,a5,1
    80007d5c:	00158593          	addi	a1,a1,1
    80007d60:	fed78fa3          	sb	a3,-1(a5)
    80007d64:	fee798e3          	bne	a5,a4,80007d54 <__memmove+0x160>
    80007d68:	f89ff06f          	j	80007cf0 <__memmove+0xfc>

0000000080007d6c <__putc>:
    80007d6c:	fe010113          	addi	sp,sp,-32
    80007d70:	00813823          	sd	s0,16(sp)
    80007d74:	00113c23          	sd	ra,24(sp)
    80007d78:	02010413          	addi	s0,sp,32
    80007d7c:	00050793          	mv	a5,a0
    80007d80:	fef40593          	addi	a1,s0,-17
    80007d84:	00100613          	li	a2,1
    80007d88:	00000513          	li	a0,0
    80007d8c:	fef407a3          	sb	a5,-17(s0)
    80007d90:	fffff097          	auipc	ra,0xfffff
    80007d94:	b3c080e7          	jalr	-1220(ra) # 800068cc <console_write>
    80007d98:	01813083          	ld	ra,24(sp)
    80007d9c:	01013403          	ld	s0,16(sp)
    80007da0:	02010113          	addi	sp,sp,32
    80007da4:	00008067          	ret

0000000080007da8 <__getc>:
    80007da8:	fe010113          	addi	sp,sp,-32
    80007dac:	00813823          	sd	s0,16(sp)
    80007db0:	00113c23          	sd	ra,24(sp)
    80007db4:	02010413          	addi	s0,sp,32
    80007db8:	fe840593          	addi	a1,s0,-24
    80007dbc:	00100613          	li	a2,1
    80007dc0:	00000513          	li	a0,0
    80007dc4:	fffff097          	auipc	ra,0xfffff
    80007dc8:	ae8080e7          	jalr	-1304(ra) # 800068ac <console_read>
    80007dcc:	fe844503          	lbu	a0,-24(s0)
    80007dd0:	01813083          	ld	ra,24(sp)
    80007dd4:	01013403          	ld	s0,16(sp)
    80007dd8:	02010113          	addi	sp,sp,32
    80007ddc:	00008067          	ret

0000000080007de0 <console_handler>:
    80007de0:	fe010113          	addi	sp,sp,-32
    80007de4:	00813823          	sd	s0,16(sp)
    80007de8:	00113c23          	sd	ra,24(sp)
    80007dec:	00913423          	sd	s1,8(sp)
    80007df0:	02010413          	addi	s0,sp,32
    80007df4:	14202773          	csrr	a4,scause
    80007df8:	100027f3          	csrr	a5,sstatus
    80007dfc:	0027f793          	andi	a5,a5,2
    80007e00:	06079e63          	bnez	a5,80007e7c <console_handler+0x9c>
    80007e04:	00074c63          	bltz	a4,80007e1c <console_handler+0x3c>
    80007e08:	01813083          	ld	ra,24(sp)
    80007e0c:	01013403          	ld	s0,16(sp)
    80007e10:	00813483          	ld	s1,8(sp)
    80007e14:	02010113          	addi	sp,sp,32
    80007e18:	00008067          	ret
    80007e1c:	0ff77713          	andi	a4,a4,255
    80007e20:	00900793          	li	a5,9
    80007e24:	fef712e3          	bne	a4,a5,80007e08 <console_handler+0x28>
    80007e28:	ffffe097          	auipc	ra,0xffffe
    80007e2c:	6dc080e7          	jalr	1756(ra) # 80006504 <plic_claim>
    80007e30:	00a00793          	li	a5,10
    80007e34:	00050493          	mv	s1,a0
    80007e38:	02f50c63          	beq	a0,a5,80007e70 <console_handler+0x90>
    80007e3c:	fc0506e3          	beqz	a0,80007e08 <console_handler+0x28>
    80007e40:	00050593          	mv	a1,a0
    80007e44:	00000517          	auipc	a0,0x0
    80007e48:	6fc50513          	addi	a0,a0,1788 # 80008540 <CONSOLE_STATUS+0x530>
    80007e4c:	fffff097          	auipc	ra,0xfffff
    80007e50:	afc080e7          	jalr	-1284(ra) # 80006948 <__printf>
    80007e54:	01013403          	ld	s0,16(sp)
    80007e58:	01813083          	ld	ra,24(sp)
    80007e5c:	00048513          	mv	a0,s1
    80007e60:	00813483          	ld	s1,8(sp)
    80007e64:	02010113          	addi	sp,sp,32
    80007e68:	ffffe317          	auipc	t1,0xffffe
    80007e6c:	6d430067          	jr	1748(t1) # 8000653c <plic_complete>
    80007e70:	fffff097          	auipc	ra,0xfffff
    80007e74:	3e0080e7          	jalr	992(ra) # 80007250 <uartintr>
    80007e78:	fddff06f          	j	80007e54 <console_handler+0x74>
    80007e7c:	00000517          	auipc	a0,0x0
    80007e80:	7c450513          	addi	a0,a0,1988 # 80008640 <digits+0x78>
    80007e84:	fffff097          	auipc	ra,0xfffff
    80007e88:	a68080e7          	jalr	-1432(ra) # 800068ec <panic>
	...
