	.include "asm/macros.inc"
	.include "global.inc"
	.section .text
	.balign 4, 0

	thumb_func_start MOD05_021DBD84
MOD05_021DBD84: ; 0x021DBD84
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #0x18
	ldr r1, _021DBDE8 ; =UNK05_021F6608
	mul r0, r2
	add r6, r3, #0
	add r4, r1, r0
	cmp r2, #0x10
	blo _021DBD9E
	bl GF_AssertFail
_021DBD9E:
	mov r0, #4
	bl Camera_Alloc
	str r0, [r5, #0x20]
	ldrb r0, [r4, #0xc]
	add r2, r4, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x20]
	str r0, [sp, #8]
	ldrh r3, [r4, #0xe]
	ldr r1, [r4]
	add r0, r7, #0
	bl Camera_InitWithTargetAndAngle
	ldr r0, [r5, #0x20]
	bl Camera_SetWorkPtr
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r5, #0x20]
	bl Camera_SetPerspectiveClippingPlane
	cmp r6, #0
	beq _021DBDE2
	ldr r0, [r5, #0x20]
	mov r1, #6
	str r0, [sp]
	mov r0, #7
	mov r2, #2
	mov r3, #4
	bl Camera_AllocHistory
_021DBDE2:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021DBDE8: .word UNK05_021F6608

	thumb_func_start MOD05_021DBDEC
MOD05_021DBDEC: ; 0x021DBDEC
	push {r4, lr}
	add r4, r0, #0
	bl Camera_UnsetWorkPtr
	ldr r0, [r4, #0x20]
	bl Camera_FreeHistory
	ldr r0, [r4, #0x20]
	bl Camera_Free
	pop {r4, pc}
	.balign 4, 0

	.section .rodata

	.global UNK05_021F6608
UNK05_021F6608: ; 0x021F6608
	.byte 0xC1, 0xAE, 0x29, 0x00, 0x02, 0xD6, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x05
	.byte 0x00, 0x60, 0x09, 0x00, 0x00, 0x40, 0x38, 0x00, 0xC1, 0xAE, 0x29, 0x00, 0x62, 0xCF, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x05, 0x00, 0x60, 0x09, 0x00, 0x00, 0x40, 0x38, 0x00
	.byte 0x4C, 0x37, 0x20, 0x00, 0x22, 0xD9, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x07
	.byte 0x00, 0x60, 0x09, 0x00, 0x00, 0x40, 0x38, 0x00, 0xC1, 0xAE, 0x29, 0x00, 0x02, 0xD6, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x05, 0x00, 0x60, 0x09, 0x00, 0x00, 0x40, 0x38, 0x00
	.byte 0x9B, 0xB8, 0x61, 0x00, 0x62, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x81, 0x02
	.byte 0x00, 0x60, 0x09, 0x00, 0x00, 0x70, 0x6C, 0x00, 0x05, 0xC8, 0x13, 0x00, 0x03, 0xD6, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x0C, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x00
	.byte 0xDF, 0x28, 0x36, 0x00, 0x03, 0xCC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x81, 0x04
	.byte 0x00, 0x30, 0x07, 0x00, 0x00, 0x50, 0x4C, 0x00, 0xC1, 0xAE, 0x29, 0x00, 0x03, 0xD6, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x05, 0x00, 0x90, 0x09, 0x00, 0x00, 0x70, 0x40, 0x00
	.byte 0xC1, 0x6E, 0x29, 0x00, 0xE3, 0xCD, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x07
	.byte 0x00, 0x60, 0x09, 0x00, 0x00, 0xA0, 0x40, 0x00, 0xAC, 0x59, 0x16, 0x00, 0x23, 0xE3, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB0, 0x0A, 0x00, 0x60, 0x09, 0x00, 0x00, 0x40, 0x38, 0x00
	.byte 0xB1, 0x25, 0x4B, 0x00, 0xC3, 0xD4, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x03
	.byte 0x00, 0x60, 0x09, 0x00, 0x00, 0x20, 0x6D, 0x00, 0x55, 0x3D, 0x2A, 0x00, 0xE3, 0xD6, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x05, 0x00, 0x60, 0x0E, 0x00, 0x00, 0x70, 0x46, 0x00
	.byte 0x3F, 0xE9, 0x23, 0x00, 0x03, 0xD3, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x06
	.byte 0x00, 0x60, 0x09, 0x00, 0x00, 0x40, 0x38, 0x00, 0x4C, 0x37, 0x20, 0x00, 0x03, 0xDE, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x07, 0x00, 0x60, 0x09, 0x00, 0x00, 0x40, 0x38, 0x00
	.byte 0x65, 0x97, 0x0A, 0x00, 0x44, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x15
	.byte 0x00, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x00, 0xDF, 0xDE, 0x28, 0x00, 0x22, 0xD9, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x05, 0x00, 0x60, 0x09, 0x00, 0x00, 0x40, 0x38, 0x00
