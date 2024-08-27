.include "macros.inc"
.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.obj lbl_804A62A0, local
	.4byte .L_800ADCFC
	.4byte .L_800ADD04
	.4byte .L_800ADD48
	.4byte .L_800ADD5C
	.4byte .L_800ADD70
	.4byte .L_800ADD7C
	.4byte .L_800ADDD4
	.4byte .L_800ADE48
	.4byte .L_800ADE74
.endobj lbl_804A62A0

.section .sdata, "wa"  # 0x80514680 - 0x80514D80
.balign 8
.obj wsInitCallback__Q27JAInter8InitData, global
	.4byte initWsList__Q27JAInter8InitDataFPUl
.endobj wsInitCallback__Q27JAInter8InitData
.obj bnkInitCallback__Q27JAInter8InitData, global
	.4byte initBnkList__Q27JAInter8InitDataFPUl
.endobj bnkInitCallback__Q27JAInter8InitData

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
.obj aafPointer__Q27JAInter8InitData, global
	.skip 0x4
.endobj aafPointer__Q27JAInter8InitData

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.obj lbl_80516F40, local
	.asciz "%s%s%c"
.endobj lbl_80516F40

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.fn setWsInitCallback__Q27JAInter8InitDataFPFPUl_v, global
/* 800ADBA4 000AAAE4  90 6D 82 00 */	stw r3, wsInitCallback__Q27JAInter8InitData@sda21(r13)
/* 800ADBA8 000AAAE8  4E 80 00 20 */	blr 
.endfn setWsInitCallback__Q27JAInter8InitDataFPFPUl_v

.fn setBnkInitCallback__Q27JAInter8InitDataFPFPUl_v, global
/* 800ADBAC 000AAAEC  90 6D 82 04 */	stw r3, bnkInitCallback__Q27JAInter8InitData@sda21(r13)
/* 800ADBB0 000AAAF0  4E 80 00 20 */	blr 
.endfn setBnkInitCallback__Q27JAInter8InitDataFPFPUl_v

.fn checkInitDataFile__Q27JAInter8InitDataFv, global
/* 800ADBB4 000AAAF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ADBB8 000AAAF8  7C 08 02 A6 */	mflr r0
/* 800ADBBC 000AAAFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ADBC0 000AAB00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ADBC4 000AAB04  93 C1 00 08 */	stw r30, 8(r1)
/* 800ADBC8 000AAB08  4B FF FF 5D */	bl getParamInitDataFileName__18JAIGlobalParameterFv
/* 800ADBCC 000AAB0C  48 00 B3 19 */	bl checkFileExsistence__Q27JAInter15SystemInterfaceFPc
/* 800ADBD0 000AAB10  2C 03 00 00 */	cmpwi r3, 0
/* 800ADBD4 000AAB14  40 82 00 7C */	bne .L_800ADC50
/* 800ADBD8 000AAB18  4B FF FF 4D */	bl getParamInitDataFileName__18JAIGlobalParameterFv
/* 800ADBDC 000AAB1C  48 01 CD 35 */	bl strlen
/* 800ADBE0 000AAB20  7C 7F 1B 78 */	mr r31, r3
/* 800ADBE4 000AAB24  4B FF FF 61 */	bl getParamAudioResPath__18JAIGlobalParameterFv
/* 800ADBE8 000AAB28  48 01 CD 29 */	bl strlen
/* 800ADBEC 000AAB2C  7C 64 1B 78 */	mr r4, r3
/* 800ADBF0 000AAB30  38 1F 00 01 */	addi r0, r31, 1
/* 800ADBF4 000AAB34  80 6D 8A B8 */	lwz r3, JASDram@sda21(r13)
/* 800ADBF8 000AAB38  7C 84 02 14 */	add r4, r4, r0
/* 800ADBFC 000AAB3C  38 A0 00 00 */	li r5, 0
/* 800ADC00 000AAB40  4B F7 5A 41 */	bl alloc__7JKRHeapFUli
/* 800ADC04 000AAB44  7C 7E 1B 78 */	mr r30, r3
/* 800ADC08 000AAB48  4B FF FF 1D */	bl getParamInitDataFileName__18JAIGlobalParameterFv
/* 800ADC0C 000AAB4C  7C 7F 1B 78 */	mr r31, r3
/* 800ADC10 000AAB50  4B FF FF 35 */	bl getParamAudioResPath__18JAIGlobalParameterFv
/* 800ADC14 000AAB54  7C 65 1B 78 */	mr r5, r3
/* 800ADC18 000AAB58  7F C3 F3 78 */	mr r3, r30
/* 800ADC1C 000AAB5C  7F E6 FB 78 */	mr r6, r31
/* 800ADC20 000AAB60  38 82 8B E0 */	addi r4, r2, lbl_80516F40@sda21
/* 800ADC24 000AAB64  38 E0 00 00 */	li r7, 0
/* 800ADC28 000AAB68  4C C6 31 82 */	crclr 6
/* 800ADC2C 000AAB6C  48 01 98 0D */	bl sprintf
/* 800ADC30 000AAB70  7F C3 F3 78 */	mr r3, r30
/* 800ADC34 000AAB74  4B FF FD A5 */	bl setParamInitDataFileName__18JAIGlobalParameterFPc
/* 800ADC38 000AAB78  4B FF FE ED */	bl getParamInitDataFileName__18JAIGlobalParameterFv
/* 800ADC3C 000AAB7C  48 00 B2 A9 */	bl checkFileExsistence__Q27JAInter15SystemInterfaceFPc
/* 800ADC40 000AAB80  2C 03 00 00 */	cmpwi r3, 0
/* 800ADC44 000AAB84  40 82 00 0C */	bne .L_800ADC50
/* 800ADC48 000AAB88  38 60 00 00 */	li r3, 0
/* 800ADC4C 000AAB8C  48 00 00 34 */	b .L_800ADC80
.L_800ADC50:
/* 800ADC50 000AAB90  4B FF FE D5 */	bl getParamInitDataFileName__18JAIGlobalParameterFv
/* 800ADC54 000AAB94  38 8D 8B C8 */	addi r4, r13, aafPointer__Q27JAInter8InitData@sda21
/* 800ADC58 000AAB98  4B FF F6 61 */	bl loadTmpDVDFile__7JAInterFPcPPUc
/* 800ADC5C 000AAB9C  80 0D 8B C8 */	lwz r0, aafPointer__Q27JAInter8InitData@sda21(r13)
/* 800ADC60 000AABA0  28 00 00 00 */	cmplwi r0, 0
/* 800ADC64 000AABA4  41 82 00 18 */	beq .L_800ADC7C
/* 800ADC68 000AABA8  48 00 00 31 */	bl checkInitDataOnMemory__Q27JAInter8InitDataFv
/* 800ADC6C 000AABAC  38 6D 8B C8 */	addi r3, r13, aafPointer__Q27JAInter8InitData@sda21
/* 800ADC70 000AABB0  4B FF F7 2D */	bl deleteTmpDVDFile__7JAInterFPPUc
/* 800ADC74 000AABB4  38 60 00 01 */	li r3, 1
/* 800ADC78 000AABB8  48 00 00 08 */	b .L_800ADC80
.L_800ADC7C:
/* 800ADC7C 000AABBC  38 60 00 00 */	li r3, 0
.L_800ADC80:
/* 800ADC80 000AABC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ADC84 000AABC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ADC88 000AABC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800ADC8C 000AABCC  7C 08 03 A6 */	mtlr r0
/* 800ADC90 000AABD0  38 21 00 10 */	addi r1, r1, 0x10
/* 800ADC94 000AABD4  4E 80 00 20 */	blr 
.endfn checkInitDataFile__Q27JAInter8InitDataFv

.fn checkInitDataOnMemory__Q27JAInter8InitDataFv, global
/* 800ADC98 000AABD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800ADC9C 000AABDC  7C 08 02 A6 */	mflr r0
/* 800ADCA0 000AABE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800ADCA4 000AABE4  38 00 00 00 */	li r0, 0
/* 800ADCA8 000AABE8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800ADCAC 000AABEC  3B E0 00 01 */	li r31, 1
/* 800ADCB0 000AABF0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800ADCB4 000AABF4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800ADCB8 000AABF8  93 81 00 10 */	stw r28, 0x10(r1)
/* 800ADCBC 000AABFC  90 01 00 08 */	stw r0, 8(r1)
/* 800ADCC0 000AAC00  48 00 02 08 */	b .L_800ADEC8
.L_800ADCC4:
/* 800ADCC4 000AAC04  80 61 00 08 */	lwz r3, 8(r1)
/* 800ADCC8 000AAC08  80 AD 8B C8 */	lwz r5, aafPointer__Q27JAInter8InitData@sda21(r13)
/* 800ADCCC 000AAC0C  38 83 00 01 */	addi r4, r3, 1
/* 800ADCD0 000AAC10  54 60 10 3A */	slwi r0, r3, 2
/* 800ADCD4 000AAC14  90 81 00 08 */	stw r4, 8(r1)
/* 800ADCD8 000AAC18  7C 05 00 2E */	lwzx r0, r5, r0
/* 800ADCDC 000AAC1C  28 00 00 08 */	cmplwi r0, 8
/* 800ADCE0 000AAC20  41 81 01 CC */	bgt .L_800ADEAC
/* 800ADCE4 000AAC24  3C 60 80 4A */	lis r3, lbl_804A62A0@ha
/* 800ADCE8 000AAC28  54 00 10 3A */	slwi r0, r0, 2
/* 800ADCEC 000AAC2C  38 63 62 A0 */	addi r3, r3, lbl_804A62A0@l
/* 800ADCF0 000AAC30  7C 03 00 2E */	lwzx r0, r3, r0
/* 800ADCF4 000AAC34  7C 09 03 A6 */	mtctr r0
/* 800ADCF8 000AAC38  4E 80 04 20 */	bctr 
.L_800ADCFC:
/* 800ADCFC 000AAC3C  3B E0 00 00 */	li r31, 0
/* 800ADD00 000AAC40  48 00 01 C8 */	b .L_800ADEC8
.L_800ADD04:
/* 800ADD04 000AAC44  38 C4 00 01 */	addi r6, r4, 1
/* 800ADD08 000AAC48  54 84 10 3A */	slwi r4, r4, 2
/* 800ADD0C 000AAC4C  90 C1 00 08 */	stw r6, 8(r1)
/* 800ADD10 000AAC50  38 66 00 01 */	addi r3, r6, 1
/* 800ADD14 000AAC54  54 C0 10 3A */	slwi r0, r6, 2
/* 800ADD18 000AAC58  7C 85 20 2E */	lwzx r4, r5, r4
/* 800ADD1C 000AAC5C  90 61 00 08 */	stw r3, 8(r1)
/* 800ADD20 000AAC60  7C 65 22 14 */	add r3, r5, r4
/* 800ADD24 000AAC64  7F A5 00 2E */	lwzx r29, r5, r0
/* 800ADD28 000AAC68  7F A4 EB 78 */	mr r4, r29
/* 800ADD2C 000AAC6C  4B FF F4 99 */	bl transInitDataFile__7JAInterFPUcUl
/* 800ADD30 000AAC70  7F A4 EB 78 */	mr r4, r29
/* 800ADD34 000AAC74  48 00 97 19 */	bl init__Q27JAInter10SoundTableFPUcUl
/* 800ADD38 000AAC78  80 61 00 08 */	lwz r3, 8(r1)
/* 800ADD3C 000AAC7C  38 03 00 01 */	addi r0, r3, 1
/* 800ADD40 000AAC80  90 01 00 08 */	stw r0, 8(r1)
/* 800ADD44 000AAC84  48 00 01 84 */	b .L_800ADEC8
.L_800ADD48:
/* 800ADD48 000AAC88  81 8D 82 04 */	lwz r12, bnkInitCallback__Q27JAInter8InitData@sda21(r13)
/* 800ADD4C 000AAC8C  38 61 00 08 */	addi r3, r1, 8
/* 800ADD50 000AAC90  7D 89 03 A6 */	mtctr r12
/* 800ADD54 000AAC94  4E 80 04 21 */	bctrl 
/* 800ADD58 000AAC98  48 00 01 70 */	b .L_800ADEC8
.L_800ADD5C:
/* 800ADD5C 000AAC9C  81 8D 82 00 */	lwz r12, wsInitCallback__Q27JAInter8InitData@sda21(r13)
/* 800ADD60 000AACA0  38 61 00 08 */	addi r3, r1, 8
/* 800ADD64 000AACA4  7D 89 03 A6 */	mtctr r12
/* 800ADD68 000AACA8  4E 80 04 21 */	bctrl 
/* 800ADD6C 000AACAC  48 00 01 5C */	b .L_800ADEC8
.L_800ADD70:
/* 800ADD70 000AACB0  38 04 00 03 */	addi r0, r4, 3
/* 800ADD74 000AACB4  90 01 00 08 */	stw r0, 8(r1)
/* 800ADD78 000AACB8  48 00 01 50 */	b .L_800ADEC8
.L_800ADD7C:
/* 800ADD7C 000AACBC  54 80 10 3A */	slwi r0, r4, 2
/* 800ADD80 000AACC0  38 80 00 08 */	li r4, 8
/* 800ADD84 000AACC4  7C 65 02 14 */	add r3, r5, r0
/* 800ADD88 000AACC8  4B FF F4 3D */	bl transInitDataFile__7JAInterFPUcUl
/* 800ADD8C 000AACCC  80 01 00 08 */	lwz r0, 8(r1)
/* 800ADD90 000AACD0  80 AD 8B C8 */	lwz r5, aafPointer__Q27JAInter8InitData@sda21(r13)
/* 800ADD94 000AACD4  54 00 10 3A */	slwi r0, r0, 2
/* 800ADD98 000AACD8  90 6D 8C 54 */	stw r3, initOnCodeStrm__Q27JAInter9StreamMgr@sda21(r13)
/* 800ADD9C 000AACDC  7C 65 02 14 */	add r3, r5, r0
/* 800ADDA0 000AACE0  80 03 00 00 */	lwz r0, 0(r3)
/* 800ADDA4 000AACE4  80 83 00 04 */	lwz r4, 4(r3)
/* 800ADDA8 000AACE8  7C 65 02 14 */	add r3, r5, r0
/* 800ADDAC 000AACEC  4B FF F4 19 */	bl transInitDataFile__7JAInterFPUcUl
/* 800ADDB0 000AACF0  80 8D 8C 54 */	lwz r4, initOnCodeStrm__Q27JAInter9StreamMgr@sda21(r13)
/* 800ADDB4 000AACF4  90 64 00 00 */	stw r3, 0(r4)
/* 800ADDB8 000AACF8  80 8D 8C 54 */	lwz r4, initOnCodeStrm__Q27JAInter9StreamMgr@sda21(r13)
/* 800ADDBC 000AACFC  80 61 00 08 */	lwz r3, 8(r1)
/* 800ADDC0 000AAD00  80 84 00 00 */	lwz r4, 0(r4)
/* 800ADDC4 000AAD04  38 03 00 03 */	addi r0, r3, 3
/* 800ADDC8 000AAD08  90 8D 8C 4C */	stw r4, streamList__Q27JAInter9StreamMgr@sda21(r13)
/* 800ADDCC 000AAD0C  90 01 00 08 */	stw r0, 8(r1)
/* 800ADDD0 000AAD10  48 00 00 F8 */	b .L_800ADEC8
.L_800ADDD4:
/* 800ADDD4 000AAD14  54 80 10 3A */	slwi r0, r4, 2
/* 800ADDD8 000AAD18  7C 65 02 14 */	add r3, r5, r0
/* 800ADDDC 000AAD1C  80 03 00 00 */	lwz r0, 0(r3)
/* 800ADDE0 000AAD20  80 83 00 04 */	lwz r4, 4(r3)
/* 800ADDE4 000AAD24  7C 65 02 14 */	add r3, r5, r0
/* 800ADDE8 000AAD28  4B FF F3 DD */	bl transInitDataFile__7JAInterFPUcUl
/* 800ADDEC 000AAD2C  7C 7E 1B 78 */	mr r30, r3
/* 800ADDF0 000AAD30  80 63 00 00 */	lwz r3, 0(r3)
/* 800ADDF4 000AAD34  4B FF FB 71 */	bl setParamSoundSceneMax__18JAIGlobalParameterFUl
/* 800ADDF8 000AAD38  80 6D 8B 68 */	lwz r3, msBasic__8JAIBasic@sda21(r13)
/* 800ADDFC 000AAD3C  38 1E 00 04 */	addi r0, r30, 4
/* 800ADE00 000AAD40  3B 80 00 00 */	li r28, 0
/* 800ADE04 000AAD44  3B A0 00 00 */	li r29, 0
/* 800ADE08 000AAD48  90 03 00 1C */	stw r0, 0x1c(r3)
/* 800ADE0C 000AAD4C  48 00 00 20 */	b .L_800ADE2C
.L_800ADE10:
/* 800ADE10 000AAD50  80 6D 8B 68 */	lwz r3, msBasic__8JAIBasic@sda21(r13)
/* 800ADE14 000AAD54  3B 9C 00 01 */	addi r28, r28, 1
/* 800ADE18 000AAD58  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 800ADE1C 000AAD5C  7C 03 E8 2E */	lwzx r0, r3, r29
/* 800ADE20 000AAD60  7C 00 F2 14 */	add r0, r0, r30
/* 800ADE24 000AAD64  7C 03 E9 2E */	stwx r0, r3, r29
/* 800ADE28 000AAD68  3B BD 00 04 */	addi r29, r29, 4
.L_800ADE2C:
/* 800ADE2C 000AAD6C  4B FF FC 69 */	bl getParamSoundSceneMax__18JAIGlobalParameterFv
/* 800ADE30 000AAD70  7C 1C 18 40 */	cmplw r28, r3
/* 800ADE34 000AAD74  41 80 FF DC */	blt .L_800ADE10
/* 800ADE38 000AAD78  80 61 00 08 */	lwz r3, 8(r1)
/* 800ADE3C 000AAD7C  38 03 00 03 */	addi r0, r3, 3
/* 800ADE40 000AAD80  90 01 00 08 */	stw r0, 8(r1)
/* 800ADE44 000AAD84  48 00 00 84 */	b .L_800ADEC8
.L_800ADE48:
/* 800ADE48 000AAD88  54 80 10 3A */	slwi r0, r4, 2
/* 800ADE4C 000AAD8C  7C 65 02 14 */	add r3, r5, r0
/* 800ADE50 000AAD90  80 03 00 00 */	lwz r0, 0(r3)
/* 800ADE54 000AAD94  80 83 00 04 */	lwz r4, 4(r3)
/* 800ADE58 000AAD98  7C 65 02 14 */	add r3, r5, r0
/* 800ADE5C 000AAD9C  4B FF F3 69 */	bl transInitDataFile__7JAInterFPUcUl
/* 800ADE60 000AADA0  80 81 00 08 */	lwz r4, 8(r1)
/* 800ADE64 000AADA4  90 6D 8B A0 */	stw r3, initOnCodeFxScene__Q27JAInter2Fx@sda21(r13)
/* 800ADE68 000AADA8  38 04 00 03 */	addi r0, r4, 3
/* 800ADE6C 000AADAC  90 01 00 08 */	stw r0, 8(r1)
/* 800ADE70 000AADB0  48 00 00 58 */	b .L_800ADEC8
.L_800ADE74:
/* 800ADE74 000AADB4  54 80 10 3A */	slwi r0, r4, 2
/* 800ADE78 000AADB8  7C 85 02 14 */	add r4, r5, r0
/* 800ADE7C 000AADBC  80 04 00 04 */	lwz r0, 4(r4)
/* 800ADE80 000AADC0  80 64 00 00 */	lwz r3, 0(r4)
/* 800ADE84 000AADC4  54 04 04 36 */	rlwinm r4, r0, 0, 0x10, 0x1b
/* 800ADE88 000AADC8  7C 65 1A 14 */	add r3, r5, r3
/* 800ADE8C 000AADCC  38 84 00 10 */	addi r4, r4, 0x10
/* 800ADE90 000AADD0  4B FF F3 35 */	bl transInitDataFile__7JAInterFPUcUl
/* 800ADE94 000AADD4  80 8D 8B 68 */	lwz r4, msBasic__8JAIBasic@sda21(r13)
/* 800ADE98 000AADD8  90 64 00 18 */	stw r3, 0x18(r4)
/* 800ADE9C 000AADDC  80 61 00 08 */	lwz r3, 8(r1)
/* 800ADEA0 000AADE0  38 03 00 03 */	addi r0, r3, 3
/* 800ADEA4 000AADE4  90 01 00 08 */	stw r0, 8(r1)
/* 800ADEA8 000AADE8  48 00 00 20 */	b .L_800ADEC8
.L_800ADEAC:
/* 800ADEAC 000AADEC  80 81 00 08 */	lwz r4, 8(r1)
/* 800ADEB0 000AADF0  38 64 00 01 */	addi r3, r4, 1
/* 800ADEB4 000AADF4  54 80 10 3A */	slwi r0, r4, 2
/* 800ADEB8 000AADF8  90 61 00 08 */	stw r3, 8(r1)
/* 800ADEBC 000AADFC  7C 05 00 2E */	lwzx r0, r5, r0
/* 800ADEC0 000AAE00  28 00 00 00 */	cmplwi r0, 0
/* 800ADEC4 000AAE04  40 82 FF E8 */	bne .L_800ADEAC
.L_800ADEC8:
/* 800ADEC8 000AAE08  28 1F 00 00 */	cmplwi r31, 0
/* 800ADECC 000AAE0C  40 82 FD F8 */	bne .L_800ADCC4
/* 800ADED0 000AAE10  81 8D 81 48 */	lwz r12, initCallback__Q27JAInter8BankWave@sda21(r13)
/* 800ADED4 000AAE14  7D 89 03 A6 */	mtctr r12
/* 800ADED8 000AAE18  4E 80 04 21 */	bctrl 
/* 800ADEDC 000AAE1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800ADEE0 000AAE20  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800ADEE4 000AAE24  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800ADEE8 000AAE28  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800ADEEC 000AAE2C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800ADEF0 000AAE30  7C 08 03 A6 */	mtlr r0
/* 800ADEF4 000AAE34  38 21 00 20 */	addi r1, r1, 0x20
/* 800ADEF8 000AAE38  4E 80 00 20 */	blr 
.endfn checkInitDataOnMemory__Q27JAInter8InitDataFv

.fn initBnkList__Q27JAInter8InitDataFPUl, global
/* 800ADEFC 000AAE3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ADF00 000AAE40  7C 08 02 A6 */	mflr r0
/* 800ADF04 000AAE44  38 C0 00 00 */	li r6, 0
/* 800ADF08 000AAE48  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ADF0C 000AAE4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ADF10 000AAE50  3B E0 00 00 */	li r31, 0
/* 800ADF14 000AAE54  93 C1 00 08 */	stw r30, 8(r1)
/* 800ADF18 000AAE58  7C 7E 1B 78 */	mr r30, r3
/* 800ADF1C 000AAE5C  80 03 00 00 */	lwz r0, 0(r3)
/* 800ADF20 000AAE60  80 AD 8B C8 */	lwz r5, aafPointer__Q27JAInter8InitData@sda21(r13)
/* 800ADF24 000AAE64  54 04 10 3A */	slwi r4, r0, 2
/* 800ADF28 000AAE68  7C 65 22 14 */	add r3, r5, r4
/* 800ADF2C 000AAE6C  48 00 00 0C */	b .L_800ADF38
.L_800ADF30:
/* 800ADF30 000AAE70  38 84 00 0C */	addi r4, r4, 0xc
/* 800ADF34 000AAE74  38 C6 00 03 */	addi r6, r6, 3
.L_800ADF38:
/* 800ADF38 000AAE78  7C 05 20 2E */	lwzx r0, r5, r4
/* 800ADF3C 000AAE7C  28 00 00 00 */	cmplwi r0, 0
/* 800ADF40 000AAE80  40 82 FF F0 */	bne .L_800ADF30
/* 800ADF44 000AAE84  3C 80 AA AB */	lis r4, 0xAAAAAAAB@ha
/* 800ADF48 000AAE88  38 04 AA AB */	addi r0, r4, 0xAAAAAAAB@l
/* 800ADF4C 000AAE8C  7C 00 30 16 */	mulhwu r0, r0, r6
/* 800ADF50 000AAE90  54 00 F8 7E */	srwi r0, r0, 1
/* 800ADF54 000AAE94  1C 80 00 0C */	mulli r4, r0, 0xc
/* 800ADF58 000AAE98  38 84 00 04 */	addi r4, r4, 4
/* 800ADF5C 000AAE9C  4B FF F2 69 */	bl transInitDataFile__7JAInterFPUcUl
/* 800ADF60 000AAEA0  90 6D 8B 50 */	stw r3, initOnCodeBnk__Q27JAInter8BankWave@sda21(r13)
/* 800ADF64 000AAEA4  48 00 00 2C */	b .L_800ADF90
.L_800ADF68:
/* 800ADF68 000AAEA8  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 800ADF6C 000AAEAC  80 8D 8B 50 */	lwz r4, initOnCodeBnk__Q27JAInter8BankWave@sda21(r13)
/* 800ADF70 000AAEB0  1C 60 00 0C */	mulli r3, r0, 0xc
/* 800ADF74 000AAEB4  3B FF 00 01 */	addi r31, r31, 1
/* 800ADF78 000AAEB8  7C 04 18 2E */	lwzx r0, r4, r3
/* 800ADF7C 000AAEBC  7C 05 02 14 */	add r0, r5, r0
/* 800ADF80 000AAEC0  7C 04 19 2E */	stwx r0, r4, r3
/* 800ADF84 000AAEC4  80 7E 00 00 */	lwz r3, 0(r30)
/* 800ADF88 000AAEC8  38 03 00 03 */	addi r0, r3, 3
/* 800ADF8C 000AAECC  90 1E 00 00 */	stw r0, 0(r30)
.L_800ADF90:
/* 800ADF90 000AAED0  80 7E 00 00 */	lwz r3, 0(r30)
/* 800ADF94 000AAED4  80 AD 8B C8 */	lwz r5, aafPointer__Q27JAInter8InitData@sda21(r13)
/* 800ADF98 000AAED8  54 60 10 3A */	slwi r0, r3, 2
/* 800ADF9C 000AAEDC  7C 05 00 2E */	lwzx r0, r5, r0
/* 800ADFA0 000AAEE0  28 00 00 00 */	cmplwi r0, 0
/* 800ADFA4 000AAEE4  40 82 FF C4 */	bne .L_800ADF68
/* 800ADFA8 000AAEE8  38 03 00 01 */	addi r0, r3, 1
/* 800ADFAC 000AAEEC  90 1E 00 00 */	stw r0, 0(r30)
/* 800ADFB0 000AAEF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ADFB4 000AAEF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ADFB8 000AAEF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800ADFBC 000AAEFC  7C 08 03 A6 */	mtlr r0
/* 800ADFC0 000AAF00  38 21 00 10 */	addi r1, r1, 0x10
/* 800ADFC4 000AAF04  4E 80 00 20 */	blr 
.endfn initBnkList__Q27JAInter8InitDataFPUl

.fn initWsList__Q27JAInter8InitDataFPUl, global
/* 800ADFC8 000AAF08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ADFCC 000AAF0C  7C 08 02 A6 */	mflr r0
/* 800ADFD0 000AAF10  38 C0 00 00 */	li r6, 0
/* 800ADFD4 000AAF14  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ADFD8 000AAF18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ADFDC 000AAF1C  3B E0 00 00 */	li r31, 0
/* 800ADFE0 000AAF20  93 C1 00 08 */	stw r30, 8(r1)
/* 800ADFE4 000AAF24  7C 7E 1B 78 */	mr r30, r3
/* 800ADFE8 000AAF28  80 03 00 00 */	lwz r0, 0(r3)
/* 800ADFEC 000AAF2C  80 AD 8B C8 */	lwz r5, aafPointer__Q27JAInter8InitData@sda21(r13)
/* 800ADFF0 000AAF30  54 04 10 3A */	slwi r4, r0, 2
/* 800ADFF4 000AAF34  7C 65 22 14 */	add r3, r5, r4
/* 800ADFF8 000AAF38  48 00 00 0C */	b .L_800AE004
.L_800ADFFC:
/* 800ADFFC 000AAF3C  38 84 00 0C */	addi r4, r4, 0xc
/* 800AE000 000AAF40  38 C6 00 03 */	addi r6, r6, 3
.L_800AE004:
/* 800AE004 000AAF44  7C 05 20 2E */	lwzx r0, r5, r4
/* 800AE008 000AAF48  28 00 00 00 */	cmplwi r0, 0
/* 800AE00C 000AAF4C  40 82 FF F0 */	bne .L_800ADFFC
/* 800AE010 000AAF50  3C 80 AA AB */	lis r4, 0xAAAAAAAB@ha
/* 800AE014 000AAF54  38 04 AA AB */	addi r0, r4, 0xAAAAAAAB@l
/* 800AE018 000AAF58  7C 00 30 16 */	mulhwu r0, r0, r6
/* 800AE01C 000AAF5C  54 00 F8 7E */	srwi r0, r0, 1
/* 800AE020 000AAF60  1C 80 00 0C */	mulli r4, r0, 0xc
/* 800AE024 000AAF64  38 84 00 04 */	addi r4, r4, 4
/* 800AE028 000AAF68  4B FF F1 9D */	bl transInitDataFile__7JAInterFPUcUl
/* 800AE02C 000AAF6C  90 6D 8B 54 */	stw r3, initOnCodeWs__Q27JAInter8BankWave@sda21(r13)
/* 800AE030 000AAF70  48 00 00 38 */	b .L_800AE068
.L_800AE034:
/* 800AE034 000AAF74  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 800AE038 000AAF78  80 8D 8B 54 */	lwz r4, initOnCodeWs__Q27JAInter8BankWave@sda21(r13)
/* 800AE03C 000AAF7C  1C 60 00 0C */	mulli r3, r0, 0xc
/* 800AE040 000AAF80  3B FF 00 01 */	addi r31, r31, 1
/* 800AE044 000AAF84  7C 04 18 2E */	lwzx r0, r4, r3
/* 800AE048 000AAF88  7C 05 02 14 */	add r0, r5, r0
/* 800AE04C 000AAF8C  7C 04 19 2E */	stwx r0, r4, r3
/* 800AE050 000AAF90  80 6D 8B 60 */	lwz r3, wsMax__Q27JAInter8BankWave@sda21(r13)
/* 800AE054 000AAF94  38 03 00 01 */	addi r0, r3, 1
/* 800AE058 000AAF98  90 0D 8B 60 */	stw r0, wsMax__Q27JAInter8BankWave@sda21(r13)
/* 800AE05C 000AAF9C  80 7E 00 00 */	lwz r3, 0(r30)
/* 800AE060 000AAFA0  38 03 00 03 */	addi r0, r3, 3
/* 800AE064 000AAFA4  90 1E 00 00 */	stw r0, 0(r30)
.L_800AE068:
/* 800AE068 000AAFA8  80 7E 00 00 */	lwz r3, 0(r30)
/* 800AE06C 000AAFAC  80 AD 8B C8 */	lwz r5, aafPointer__Q27JAInter8InitData@sda21(r13)
/* 800AE070 000AAFB0  54 60 10 3A */	slwi r0, r3, 2
/* 800AE074 000AAFB4  7C 05 00 2E */	lwzx r0, r5, r0
/* 800AE078 000AAFB8  28 00 00 00 */	cmplwi r0, 0
/* 800AE07C 000AAFBC  40 82 FF B8 */	bne .L_800AE034
/* 800AE080 000AAFC0  38 03 00 01 */	addi r0, r3, 1
/* 800AE084 000AAFC4  90 1E 00 00 */	stw r0, 0(r30)
/* 800AE088 000AAFC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AE08C 000AAFCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800AE090 000AAFD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800AE094 000AAFD4  7C 08 03 A6 */	mtlr r0
/* 800AE098 000AAFD8  38 21 00 10 */	addi r1, r1, 0x10
/* 800AE09C 000AAFDC  4E 80 00 20 */	blr 
.endfn initWsList__Q27JAInter8InitDataFPUl
