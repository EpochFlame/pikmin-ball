.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.fn __ct__17JPAResourceLoaderFPCUcP18JPAResourceManager, global
/* 800980D8 00095018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800980DC 0009501C  7C 08 02 A6 */	mflr r0
/* 800980E0 00095020  80 C4 00 04 */	lwz r6, 4(r4)
/* 800980E4 00095024  90 01 00 14 */	stw r0, 0x14(r1)
/* 800980E8 00095028  3C 06 CD D3 */	addis r0, r6, 0xcdd3
/* 800980EC 0009502C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800980F0 00095030  28 00 31 30 */	cmplwi r0, 0x3130
/* 800980F4 00095034  7C 7F 1B 78 */	mr r31, r3
/* 800980F8 00095038  40 82 00 08 */	bne .L_80098100
/* 800980FC 0009503C  48 00 00 1D */	bl load_jpc__17JPAResourceLoaderFPCUcP18JPAResourceManager
.L_80098100:
/* 80098100 00095040  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098104 00095044  7F E3 FB 78 */	mr r3, r31
/* 80098108 00095048  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009810C 0009504C  7C 08 03 A6 */	mtlr r0
/* 80098110 00095050  38 21 00 10 */	addi r1, r1, 0x10
/* 80098114 00095054  4E 80 00 20 */	blr 
.endfn __ct__17JPAResourceLoaderFPCUcP18JPAResourceManager

.fn load_jpc__17JPAResourceLoaderFPCUcP18JPAResourceManager, global
/* 80098118 00095058  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8009811C 0009505C  7C 08 02 A6 */	mflr r0
/* 80098120 00095060  A0 64 00 08 */	lhz r3, 8(r4)
/* 80098124 00095064  90 01 00 44 */	stw r0, 0x44(r1)
/* 80098128 00095068  A0 04 00 0A */	lhz r0, 0xa(r4)
/* 8009812C 0009506C  BE 41 00 08 */	stmw r18, 8(r1)
/* 80098130 00095070  7C B4 2B 78 */	mr r20, r5
/* 80098134 00095074  7C 97 23 78 */	mr r23, r4
/* 80098138 00095078  83 C5 00 00 */	lwz r30, 0(r5)
/* 8009813C 0009507C  38 A0 00 00 */	li r5, 0
/* 80098140 00095080  B0 74 00 0C */	sth r3, 0xc(r20)
/* 80098144 00095084  7F C4 F3 78 */	mr r4, r30
/* 80098148 00095088  B0 14 00 10 */	sth r0, 0x10(r20)
/* 8009814C 0009508C  A0 14 00 0C */	lhz r0, 0xc(r20)
/* 80098150 00095090  54 03 10 3A */	slwi r3, r0, 2
/* 80098154 00095094  4B F8 BE F5 */	bl __nwa__FUlP7JKRHeapi
/* 80098158 00095098  90 74 00 04 */	stw r3, 4(r20)
/* 8009815C 0009509C  7F C4 F3 78 */	mr r4, r30
/* 80098160 000950A0  38 A0 00 00 */	li r5, 0
/* 80098164 000950A4  A0 14 00 10 */	lhz r0, 0x10(r20)
/* 80098168 000950A8  54 03 10 3A */	slwi r3, r0, 2
/* 8009816C 000950AC  4B F8 BE DD */	bl __nwa__FUlP7JKRHeapi
/* 80098170 000950B0  3C 80 46 4C */	lis r4, 0x464C4431@ha
/* 80098174 000950B4  90 74 00 08 */	stw r3, 8(r20)
/* 80098178 000950B8  A2 57 00 08 */	lhz r18, 8(r23)
/* 8009817C 000950BC  3A C4 44 31 */	addi r22, r4, 0x464C4431@l
/* 80098180 000950C0  3B 40 00 10 */	li r26, 0x10
/* 80098184 000950C4  3A 60 00 00 */	li r19, 0
/* 80098188 000950C8  48 00 02 D8 */	b .L_80098460
.L_8009818C:
/* 8009818C 000950CC  7F C4 F3 78 */	mr r4, r30
/* 80098190 000950D0  7F 17 D2 14 */	add r24, r23, r26
/* 80098194 000950D4  38 60 00 48 */	li r3, 0x48
/* 80098198 000950D8  38 A0 00 00 */	li r5, 0
/* 8009819C 000950DC  4B F8 BD A5 */	bl __nw__FUlP7JKRHeapi
/* 800981A0 000950E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 800981A4 000950E4  41 82 00 0C */	beq .L_800981B0
/* 800981A8 000950E8  4B FF D4 45 */	bl __ct__11JPAResourceFv
/* 800981AC 000950EC  7C 7F 1B 78 */	mr r31, r3
.L_800981B0:
/* 800981B0 000950F0  88 18 00 04 */	lbz r0, 4(r24)
/* 800981B4 000950F4  98 1F 00 3E */	stb r0, 0x3e(r31)
/* 800981B8 000950F8  88 1F 00 3E */	lbz r0, 0x3e(r31)
/* 800981BC 000950FC  28 00 00 00 */	cmplwi r0, 0
/* 800981C0 00095100  41 82 00 18 */	beq .L_800981D8
/* 800981C4 00095104  7F C4 F3 78 */	mr r4, r30
/* 800981C8 00095108  54 03 15 BA */	rlwinm r3, r0, 2, 0x16, 0x1d
/* 800981CC 0009510C  38 A0 00 00 */	li r5, 0
/* 800981D0 00095110  4B F8 BE 79 */	bl __nwa__FUlP7JKRHeapi
/* 800981D4 00095114  48 00 00 08 */	b .L_800981DC
.L_800981D8:
/* 800981D8 00095118  38 60 00 00 */	li r3, 0
.L_800981DC:
/* 800981DC 0009511C  90 7F 00 30 */	stw r3, 0x30(r31)
/* 800981E0 00095120  88 18 00 05 */	lbz r0, 5(r24)
/* 800981E4 00095124  98 1F 00 3F */	stb r0, 0x3f(r31)
/* 800981E8 00095128  88 1F 00 3F */	lbz r0, 0x3f(r31)
/* 800981EC 0009512C  28 00 00 00 */	cmplwi r0, 0
/* 800981F0 00095130  41 82 00 18 */	beq .L_80098208
/* 800981F4 00095134  7F C4 F3 78 */	mr r4, r30
/* 800981F8 00095138  54 03 15 BA */	rlwinm r3, r0, 2, 0x16, 0x1d
/* 800981FC 0009513C  38 A0 00 00 */	li r5, 0
/* 80098200 00095140  4B F8 BE 49 */	bl __nwa__FUlP7JKRHeapi
/* 80098204 00095144  48 00 00 08 */	b .L_8009820C
.L_80098208:
/* 80098208 00095148  38 60 00 00 */	li r3, 0
.L_8009820C:
/* 8009820C 0009514C  90 7F 00 34 */	stw r3, 0x34(r31)
/* 80098210 00095150  3B A0 00 00 */	li r29, 0
/* 80098214 00095154  88 78 00 06 */	lbz r3, 6(r24)
/* 80098218 00095158  7F BC EB 78 */	mr r28, r29
/* 8009821C 0009515C  A0 18 00 00 */	lhz r0, 0(r24)
/* 80098220 00095160  3B 60 00 00 */	li r27, 0
/* 80098224 00095164  98 7F 00 40 */	stb r3, 0x40(r31)
/* 80098228 00095168  3B 5A 00 08 */	addi r26, r26, 8
/* 8009822C 0009516C  93 BF 00 38 */	stw r29, 0x38(r31)
/* 80098230 00095170  B0 1F 00 3C */	sth r0, 0x3c(r31)
/* 80098234 00095174  48 00 02 04 */	b .L_80098438
.L_80098238:
/* 80098238 00095178  7E B7 D2 14 */	add r21, r23, r26
/* 8009823C 0009517C  80 95 00 00 */	lwz r4, 0(r21)
/* 80098240 00095180  83 35 00 04 */	lwz r25, 4(r21)
/* 80098244 00095184  7C 04 B0 00 */	cmpw r4, r22
/* 80098248 00095188  41 82 00 94 */	beq .L_800982DC
/* 8009824C 0009518C  40 80 00 54 */	bge .L_800982A0
/* 80098250 00095190  3C 60 45 53 */	lis r3, 0x45535031@ha
/* 80098254 00095194  38 03 50 31 */	addi r0, r3, 0x45535031@l
/* 80098258 00095198  7C 04 00 00 */	cmpw r4, r0
/* 8009825C 0009519C  41 82 01 48 */	beq .L_800983A4
/* 80098260 000951A0  40 80 00 2C */	bge .L_8009828C
/* 80098264 000951A4  3C 60 42 53 */	lis r3, 0x42535031@ha
/* 80098268 000951A8  38 03 50 31 */	addi r0, r3, 0x42535031@l
/* 8009826C 000951AC  7C 04 00 00 */	cmpw r4, r0
/* 80098270 000951B0  41 82 01 04 */	beq .L_80098374
/* 80098274 000951B4  40 80 01 BC */	bge .L_80098430
/* 80098278 000951B8  3C 60 42 45 */	lis r3, 0x42454D31@ha
/* 8009827C 000951BC  38 03 4D 31 */	addi r0, r3, 0x42454D31@l
/* 80098280 000951C0  7C 04 00 00 */	cmpw r4, r0
/* 80098284 000951C4  41 82 00 C4 */	beq .L_80098348
/* 80098288 000951C8  48 00 01 A8 */	b .L_80098430
.L_8009828C:
/* 8009828C 000951CC  3C 60 45 54 */	lis r3, 0x45545831@ha
/* 80098290 000951D0  38 03 58 31 */	addi r0, r3, 0x45545831@l
/* 80098294 000951D4  7C 04 00 00 */	cmpw r4, r0
/* 80098298 000951D8  41 82 01 64 */	beq .L_800983FC
/* 8009829C 000951DC  48 00 01 94 */	b .L_80098430
.L_800982A0:
/* 800982A0 000951E0  3C 60 53 53 */	lis r3, 0x53535031@ha
/* 800982A4 000951E4  38 03 50 31 */	addi r0, r3, 0x53535031@l
/* 800982A8 000951E8  7C 04 00 00 */	cmpw r4, r0
/* 800982AC 000951EC  41 82 01 24 */	beq .L_800983D0
/* 800982B0 000951F0  40 80 00 18 */	bge .L_800982C8
/* 800982B4 000951F4  3C 60 4B 46 */	lis r3, 0x4B464131@ha
/* 800982B8 000951F8  38 03 41 31 */	addi r0, r3, 0x4B464131@l
/* 800982BC 000951FC  7C 04 00 00 */	cmpw r4, r0
/* 800982C0 00095200  41 82 00 54 */	beq .L_80098314
/* 800982C4 00095204  48 00 01 6C */	b .L_80098430
.L_800982C8:
/* 800982C8 00095208  3C 60 54 44 */	lis r3, 0x54444231@ha
/* 800982CC 0009520C  38 03 42 31 */	addi r0, r3, 0x54444231@l
/* 800982D0 00095210  7C 04 00 00 */	cmpw r4, r0
/* 800982D4 00095214  41 82 01 54 */	beq .L_80098428
/* 800982D8 00095218  48 00 01 58 */	b .L_80098430
.L_800982DC:
/* 800982DC 0009521C  7F C4 F3 78 */	mr r4, r30
/* 800982E0 00095220  38 60 00 2C */	li r3, 0x2c
/* 800982E4 00095224  38 A0 00 00 */	li r5, 0
/* 800982E8 00095228  4B F8 BC 59 */	bl __nw__FUlP7JKRHeapi
/* 800982EC 0009522C  7C 60 1B 79 */	or. r0, r3, r3
/* 800982F0 00095230  41 82 00 14 */	beq .L_80098304
/* 800982F4 00095234  7E A4 AB 78 */	mr r4, r21
/* 800982F8 00095238  7F C5 F3 78 */	mr r5, r30
/* 800982FC 0009523C  4B FF B0 99 */	bl __ct__13JPAFieldBlockFPCUcP7JKRHeap
/* 80098300 00095240  7C 60 1B 78 */	mr r0, r3
.L_80098304:
/* 80098304 00095244  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80098308 00095248  7C 03 E9 2E */	stwx r0, r3, r29
/* 8009830C 0009524C  3B BD 00 04 */	addi r29, r29, 4
/* 80098310 00095250  48 00 01 20 */	b .L_80098430
.L_80098314:
/* 80098314 00095254  7F C4 F3 78 */	mr r4, r30
/* 80098318 00095258  38 60 00 08 */	li r3, 8
/* 8009831C 0009525C  38 A0 00 00 */	li r5, 0
/* 80098320 00095260  4B F8 BC 21 */	bl __nw__FUlP7JKRHeapi
/* 80098324 00095264  7C 60 1B 79 */	or. r0, r3, r3
/* 80098328 00095268  41 82 00 10 */	beq .L_80098338
/* 8009832C 0009526C  7E A4 AB 78 */	mr r4, r21
/* 80098330 00095270  4B FF B7 11 */	bl __ct__11JPAKeyBlockFPCUc
/* 80098334 00095274  7C 60 1B 78 */	mr r0, r3
.L_80098338:
/* 80098338 00095278  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 8009833C 0009527C  7C 03 E1 2E */	stwx r0, r3, r28
/* 80098340 00095280  3B 9C 00 04 */	addi r28, r28, 4
/* 80098344 00095284  48 00 00 EC */	b .L_80098430
.L_80098348:
/* 80098348 00095288  7F C4 F3 78 */	mr r4, r30
/* 8009834C 0009528C  38 60 00 08 */	li r3, 8
/* 80098350 00095290  38 A0 00 00 */	li r5, 0
/* 80098354 00095294  4B F8 BB ED */	bl __nw__FUlP7JKRHeapi
/* 80098358 00095298  7C 60 1B 79 */	or. r0, r3, r3
/* 8009835C 0009529C  41 82 00 10 */	beq .L_8009836C
/* 80098360 000952A0  7E A4 AB 78 */	mr r4, r21
/* 80098364 000952A4  4B FF 76 69 */	bl __ct__16JPADynamicsBlockFPCUc
/* 80098368 000952A8  7C 60 1B 78 */	mr r0, r3
.L_8009836C:
/* 8009836C 000952AC  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 80098370 000952B0  48 00 00 C0 */	b .L_80098430
.L_80098374:
/* 80098374 000952B4  7F C4 F3 78 */	mr r4, r30
/* 80098378 000952B8  38 60 00 14 */	li r3, 0x14
/* 8009837C 000952BC  38 A0 00 00 */	li r5, 0
/* 80098380 000952C0  4B F8 BB C1 */	bl __nw__FUlP7JKRHeapi
/* 80098384 000952C4  7C 60 1B 79 */	or. r0, r3, r3
/* 80098388 000952C8  41 82 00 14 */	beq .L_8009839C
/* 8009838C 000952CC  7E A4 AB 78 */	mr r4, r21
/* 80098390 000952D0  7F C5 F3 78 */	mr r5, r30
/* 80098394 000952D4  4B FF 68 5D */	bl __ct__12JPABaseShapeFPCUcP7JKRHeap
/* 80098398 000952D8  7C 60 1B 78 */	mr r0, r3
.L_8009839C:
/* 8009839C 000952DC  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 800983A0 000952E0  48 00 00 90 */	b .L_80098430
.L_800983A4:
/* 800983A4 000952E4  7F C4 F3 78 */	mr r4, r30
/* 800983A8 000952E8  38 60 00 1C */	li r3, 0x1c
/* 800983AC 000952EC  38 A0 00 00 */	li r5, 0
/* 800983B0 000952F0  4B F8 BB 91 */	bl __nw__FUlP7JKRHeapi
/* 800983B4 000952F4  7C 60 1B 79 */	or. r0, r3, r3
/* 800983B8 000952F8  41 82 00 10 */	beq .L_800983C8
/* 800983BC 000952FC  7E A4 AB 78 */	mr r4, r21
/* 800983C0 00095300  4B FF 90 AD */	bl __ct__13JPAExtraShapeFPCUc
/* 800983C4 00095304  7C 60 1B 78 */	mr r0, r3
.L_800983C8:
/* 800983C8 00095308  90 1F 00 20 */	stw r0, 0x20(r31)
/* 800983CC 0009530C  48 00 00 64 */	b .L_80098430
.L_800983D0:
/* 800983D0 00095310  7F C4 F3 78 */	mr r4, r30
/* 800983D4 00095314  38 60 00 04 */	li r3, 4
/* 800983D8 00095318  38 A0 00 00 */	li r5, 0
/* 800983DC 0009531C  4B F8 BB 65 */	bl __nw__FUlP7JKRHeapi
/* 800983E0 00095320  7C 60 1B 79 */	or. r0, r3, r3
/* 800983E4 00095324  41 82 00 10 */	beq .L_800983F4
/* 800983E8 00095328  7E A4 AB 78 */	mr r4, r21
/* 800983EC 0009532C  4B FF 6B DD */	bl __ct__13JPAChildShapeFPCUc
/* 800983F0 00095330  7C 60 1B 78 */	mr r0, r3
.L_800983F4:
/* 800983F4 00095334  90 1F 00 24 */	stw r0, 0x24(r31)
/* 800983F8 00095338  48 00 00 38 */	b .L_80098430
.L_800983FC:
/* 800983FC 0009533C  7F C4 F3 78 */	mr r4, r30
/* 80098400 00095340  38 60 00 04 */	li r3, 4
/* 80098404 00095344  38 A0 00 00 */	li r5, 0
/* 80098408 00095348  4B F8 BB 39 */	bl __nw__FUlP7JKRHeapi
/* 8009840C 0009534C  7C 60 1B 79 */	or. r0, r3, r3
/* 80098410 00095350  41 82 00 10 */	beq .L_80098420
/* 80098414 00095354  7E A4 AB 78 */	mr r4, r21
/* 80098418 00095358  4B FF 8C 11 */	bl __ct__13JPAExTexShapeFPCUc
/* 8009841C 0009535C  7C 60 1B 78 */	mr r0, r3
.L_80098420:
/* 80098420 00095360  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80098424 00095364  48 00 00 0C */	b .L_80098430
.L_80098428:
/* 80098428 00095368  38 15 00 08 */	addi r0, r21, 8
/* 8009842C 0009536C  90 1F 00 38 */	stw r0, 0x38(r31)
.L_80098430:
/* 80098430 00095370  7F 5A CA 14 */	add r26, r26, r25
/* 80098434 00095374  3B 7B 00 01 */	addi r27, r27, 1
.L_80098438:
/* 80098438 00095378  A0 18 00 02 */	lhz r0, 2(r24)
/* 8009843C 0009537C  7C 1B 00 00 */	cmpw r27, r0
/* 80098440 00095380  41 80 FD F8 */	blt .L_80098238
/* 80098444 00095384  7F E3 FB 78 */	mr r3, r31
/* 80098448 00095388  7F C4 F3 78 */	mr r4, r30
/* 8009844C 0009538C  4B FF D2 11 */	bl init__11JPAResourceFP7JKRHeap
/* 80098450 00095390  7E 83 A3 78 */	mr r3, r20
/* 80098454 00095394  7F E4 FB 78 */	mr r4, r31
/* 80098458 00095398  48 00 01 AD */	bl registRes__18JPAResourceManagerFP11JPAResource
/* 8009845C 0009539C  3A 73 00 01 */	addi r19, r19, 1
.L_80098460:
/* 80098460 000953A0  7C 13 90 00 */	cmpw r19, r18
/* 80098464 000953A4  41 80 FD 28 */	blt .L_8009818C
/* 80098468 000953A8  82 B7 00 0C */	lwz r21, 0xc(r23)
/* 8009846C 000953AC  3A C0 00 00 */	li r22, 0
/* 80098470 000953B0  A2 57 00 0A */	lhz r18, 0xa(r23)
/* 80098474 000953B4  48 00 00 40 */	b .L_800984B4
.L_80098478:
/* 80098478 000953B8  7E 77 AA 14 */	add r19, r23, r21
/* 8009847C 000953BC  7F C4 F3 78 */	mr r4, r30
/* 80098480 000953C0  83 13 00 04 */	lwz r24, 4(r19)
/* 80098484 000953C4  38 60 00 48 */	li r3, 0x48
/* 80098488 000953C8  38 A0 00 00 */	li r5, 0
/* 8009848C 000953CC  4B F8 BA B5 */	bl __nw__FUlP7JKRHeapi
/* 80098490 000953D0  7C 64 1B 79 */	or. r4, r3, r3
/* 80098494 000953D4  41 82 00 10 */	beq .L_800984A4
/* 80098498 000953D8  7E 64 9B 78 */	mr r4, r19
/* 8009849C 000953DC  48 00 02 05 */	bl __ct__10JPATextureFPCUc
/* 800984A0 000953E0  7C 64 1B 78 */	mr r4, r3
.L_800984A4:
/* 800984A4 000953E4  7E 83 A3 78 */	mr r3, r20
/* 800984A8 000953E8  48 00 01 7D */	bl registTex__18JPAResourceManagerFP10JPATexture
/* 800984AC 000953EC  7E B5 C2 14 */	add r21, r21, r24
/* 800984B0 000953F0  3A D6 00 01 */	addi r22, r22, 1
.L_800984B4:
/* 800984B4 000953F4  7C 16 90 00 */	cmpw r22, r18
/* 800984B8 000953F8  41 80 FF C0 */	blt .L_80098478
/* 800984BC 000953FC  BA 41 00 08 */	lmw r18, 8(r1)
/* 800984C0 00095400  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800984C4 00095404  7C 08 03 A6 */	mtlr r0
/* 800984C8 00095408  38 21 00 40 */	addi r1, r1, 0x40
/* 800984CC 0009540C  4E 80 00 20 */	blr 
.endfn load_jpc__17JPAResourceLoaderFPCUcP18JPAResourceManager
