	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"bhstate.c"
	.text
	.align	2
	.global	initbh
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initbh, %function
initbh:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L4
	ldr	r4, .L4+4
	mov	lr, pc
	bx	r4
	mov	r10, #110
	mov	r2, #3
	mov	lr, #16
	mov	r4, #0
	mov	r1, #1
	mov	ip, #32
	mov	r0, #10
	mov	r9, #104
	mov	r5, #70
	mov	r8, #60
	mov	r6, #2
	mov	r7, #150
	ldr	r3, .L4+8
	str	r10, [r3]
	str	lr, [r3, #16]
	str	r9, [r3, #4]
	str	ip, [r3, #20]
	str	r2, [r3, #40]
	str	r0, [r3, #24]
	strb	r4, [r3, #44]
	str	r1, [r3, #48]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	ldr	r3, .L4+12
	str	r4, [r3]
	ldr	r3, .L4+16
	str	r4, [r3]
	ldr	r3, .L4+20
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	str	r2, [r3, #40]
	str	r0, [r3, #24]
	strb	r1, [r3, #44]
	str	r1, [r3, #48]
	str	r8, [r3]
	str	r5, [r3, #4]
	ldr	r3, .L4+24
	strb	r6, [r3, #44]
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	str	r5, [r3, #4]
	str	r2, [r3, #40]
	str	r0, [r3, #24]
	str	r1, [r3, #48]
	str	r7, [r3]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	shadowOAM
	.word	DMANow
	.word	player
	.word	hOff
	.word	vOff
	.word	haku
	.word	duck
	.size	initbh, .-initbh
	.align	2
	.global	initPlayerbh
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayerbh, %function
initPlayerbh:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #0
	push	{r4, r5, r6, lr}
	mov	r2, #3
	mov	r6, #16
	mov	r5, #32
	mov	r4, #110
	mov	lr, #104
	mov	ip, #10
	mov	r1, #1
	ldr	r3, .L8
	strb	r0, [r3, #44]
	stm	r3, {r4, lr}
	str	r6, [r3, #16]
	str	r5, [r3, #20]
	str	ip, [r3, #24]
	str	r1, [r3, #48]
	str	r2, [r3, #40]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	pop	{r4, r5, r6, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	player
	.size	initPlayerbh, .-initPlayerbh
	.align	2
	.global	drawPlayerbh
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayerbh, %function
drawPlayerbh:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L14
	ldr	r3, .L14+4
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r2, [r0]
	ldrh	lr, [r3]
	sub	r2, r2, lr
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	mvn	r4, r2, lsl #17
	mvn	r4, r4, lsr #17
	ldr	ip, [r0, #28]
	cmp	ip, #2
	mov	r6, #67108864
	movne	r7, r4
	ldr	r1, .L14+8
	ldr	r3, [r0, #4]
	ldrh	r5, [r1]
	ldreq	r7, .L14+12
	ldr	r8, [r0, #36]
	ldr	r1, .L14+16
	orreq	r7, r2, r7
	sub	r3, r3, r5
	ldrb	r2, [r0, #44]	@ zero_extendqisi2
	ldr	r0, .L14+20
	add	ip, ip, r8, lsl #6
	and	r3, r3, #255
	orr	r3, r3, #32768
	and	ip, r0, ip, lsl #1
	lsl	r0, r2, #3
	add	r2, r1, r2, lsl #3
	strh	r7, [r1, #2]	@ movhi
	strh	r3, [r1]	@ movhi
	strh	r4, [r2, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	strh	r3, [r1, r0]	@ movhi
	strh	lr, [r6, #16]	@ movhi
	strh	r5, [r6, #18]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	player
	.word	hOff
	.word	vOff
	.word	-28672
	.word	shadowOAM
	.word	1022
	.size	drawPlayerbh, .-drawPlayerbh
	.global	__aeabi_idivmod
	.align	2
	.global	updatePlayerbh
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayerbh, %function
updatePlayerbh:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r2, .L33
	ldrh	r2, [r2]
	ldr	r4, .L33+4
	tst	r2, #64
	str	r3, [r4, #32]
	sub	sp, sp, #20
	bne	.L17
	ldr	r3, [r4, #4]
	cmp	r3, #0
	ble	.L17
	mov	r1, #1
	ldr	r0, [r4, #12]
	sub	r3, r3, r0
	str	r3, [r4, #4]
	str	r1, [r4, #32]
	str	r1, [r4, #28]
.L17:
	ands	r3, r2, #128
	ldr	r6, [r4, #20]
	bne	.L18
	ldr	r0, .L33+8
	ldr	r1, [r4, #4]
	ldr	r0, [r0]
	add	ip, r1, r6
	cmp	ip, r0
	blt	.L32
.L18:
	tst	r2, #32
	ldr	r7, [r4, #16]
	and	r1, r2, #16
	bne	.L19
	ldr	r5, [r4]
	cmp	r5, #0
	ble	.L19
	mov	r2, #1
	mov	r3, #2
	cmp	r1, #0
	ldr	r1, [r4, #8]
	sub	r5, r5, r1
	str	r5, [r4]
	str	r2, [r4, #32]
	str	r3, [r4, #28]
	bne	.L21
	ldr	r3, .L33+8
	ldr	r2, [r3, #4]
	add	r3, r5, r7
	cmp	r2, r3
	bgt	.L26
.L27:
	ldr	r5, [r4]
	b	.L21
.L19:
	cmp	r1, #0
	bne	.L22
	ldr	r3, .L33+8
	ldr	r5, [r4]
	ldr	r3, [r3, #4]
	add	r2, r5, r7
	cmp	r2, r3
	bge	.L22
.L26:
	mov	r2, #1
	mov	r3, #3
	ldr	r1, [r4, #8]
	add	r5, r5, r1
	str	r5, [r4]
	str	r2, [r4, #32]
	str	r3, [r4, #28]
.L21:
	ldr	r3, [r4, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #24]
	bne	.L24
	ldr	r0, [r4, #36]
	ldr	r3, .L33+12
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #10
	str	r1, [r4, #36]
	str	r3, [r4, #24]
.L24:
	mov	lr, #10
	mov	ip, #100
	mov	r9, #60
	mov	r8, #40
	ldr	r1, [r4, #4]
	mov	r3, r6
	mov	r2, r7
	mov	r0, r5
	stm	sp, {ip, lr}
	str	r9, [sp, #12]
	str	r8, [sp, #8]
	ldr	r4, .L33+16
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	movne	r2, #2
	ldrne	r3, .L33+20
	strne	r2, [r3]
.L16:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L22:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	streq	r3, [r4, #36]
	ldreq	r5, [r4]
	beq	.L24
	b	.L27
.L32:
	mov	ip, #1
	ldr	r0, [r4, #12]
	add	r1, r0, r1
	str	r3, [r4, #28]
	str	r1, [r4, #4]
	str	ip, [r4, #32]
	b	.L18
.L34:
	.align	2
.L33:
	.word	buttons
	.word	player
	.word	.LANCHOR0
	.word	__aeabi_idivmod
	.word	collision
	.word	intro
	.size	updatePlayerbh, .-updatePlayerbh
	.align	2
	.global	updatebh
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatebh, %function
updatebh:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	updatePlayerbh
	.size	updatebh, .-updatebh
	.align	2
	.global	inithaku
	.syntax unified
	.arm
	.fpu softvfp
	.type	inithaku, %function
inithaku:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #1
	push	{r4, r5, lr}
	mov	ip, #70
	mov	r5, #16
	mov	r4, #32
	mov	lr, #60
	mov	r0, #3
	mov	r1, #10
	ldr	r3, .L38
	strb	r2, [r3, #44]
	str	r5, [r3, #16]
	str	r4, [r3, #20]
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #40]
	str	r1, [r3, #24]
	str	r2, [r3, #48]
	pop	{r4, r5, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	haku
	.size	inithaku, .-inithaku
	.align	2
	.global	drawhaku
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawhaku, %function
drawhaku:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L44
	ldr	r3, .L44+4
	push	{r4, r5, r6, r7, lr}
	ldr	r2, [r0]
	ldrh	r4, [r3]
	sub	r2, r2, r4
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	mvn	ip, r2, lsl #17
	mvn	ip, ip, lsr #17
	ldr	lr, [r0, #28]
	cmp	lr, #2
	movne	r6, ip
	mov	lr, #67108864
	mov	r7, #384
	ldr	r1, .L44+8
	ldr	r3, [r0, #4]
	ldrh	r5, [r1]
	ldreq	r6, .L44+12
	ldr	r1, .L44+16
	orreq	r6, r2, r6
	sub	r3, r3, r5
	ldrb	r2, [r0, #44]	@ zero_extendqisi2
	and	r3, r3, #255
	orr	r3, r3, #32768
	lsl	r0, r2, #3
	add	r2, r1, r2, lsl #3
	strh	r6, [r1, #10]	@ movhi
	strh	r3, [r1, #8]	@ movhi
	strh	r7, [r1, #12]	@ movhi
	strh	r3, [r1, r0]	@ movhi
	strh	ip, [r2, #2]	@ movhi
	strh	r4, [lr, #16]	@ movhi
	strh	r5, [lr, #18]	@ movhi
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L45:
	.align	2
.L44:
	.word	haku
	.word	hOff
	.word	vOff
	.word	-28672
	.word	shadowOAM
	.size	drawhaku, .-drawhaku
	.align	2
	.global	initduck
	.syntax unified
	.arm
	.fpu softvfp
	.type	initduck, %function
initduck:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #2
	push	{r4, r5, r6, lr}
	mov	ip, #3
	mov	r6, #16
	mov	r5, #32
	mov	r4, #150
	mov	lr, #70
	mov	r0, #10
	mov	r2, #1
	ldr	r3, .L48
	strb	r1, [r3, #44]
	stm	r3, {r4, lr}
	str	r6, [r3, #16]
	str	r5, [r3, #20]
	str	ip, [r3, #40]
	str	r0, [r3, #24]
	str	r2, [r3, #48]
	pop	{r4, r5, r6, lr}
	bx	lr
.L49:
	.align	2
.L48:
	.word	duck
	.size	initduck, .-initduck
	.align	2
	.global	drawduck
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawduck, %function
drawduck:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L54
	ldr	r3, .L54+4
	push	{r4, r5, r6, lr}
	ldr	r2, [r0]
	ldrh	r4, [r3]
	sub	r2, r2, r4
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	mvn	ip, r2, lsl #17
	mvn	ip, ip, lsr #17
	ldr	lr, [r0, #28]
	cmp	lr, #2
	movne	r6, ip
	mov	lr, #67108864
	ldr	r1, .L54+8
	ldr	r3, [r0, #4]
	ldrh	r5, [r1]
	ldreq	r6, .L54+12
	sub	r3, r3, r5
	orreq	r6, r2, r6
	ldrb	r2, [r0, #44]	@ zero_extendqisi2
	ldr	r1, .L54+16
	and	r3, r3, #255
	orr	r3, r3, #32768
	lsl	r0, r2, #3
	strh	r3, [r1, #16]	@ movhi
	strh	r3, [r1, r0]	@ movhi
	ldr	r3, .L54+20
	add	r2, r1, r2, lsl #3
	strh	r6, [r1, #18]	@ movhi
	strh	r3, [r1, #20]	@ movhi
	strh	ip, [r2, #2]	@ movhi
	strh	r4, [lr, #16]	@ movhi
	strh	r5, [lr, #18]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L55:
	.align	2
.L54:
	.word	duck
	.word	hOff
	.word	vOff
	.word	-28672
	.word	shadowOAM
	.word	386
	.size	drawduck, .-drawduck
	.align	2
	.global	drawbh
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawbh, %function
drawbh:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L58
	mov	lr, pc
	bx	r3
	bl	drawPlayerbh
	bl	drawhaku
	bl	drawduck
	ldr	r3, .L58+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L58+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L58+12
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L59:
	.align	2
.L58:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.size	drawbh, .-drawbh
	.global	bhsh
	.global	bhsw
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	intro,4,4
	.comm	duck,52,4
	.comm	haku,52,4
	.comm	player,52,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	bhsh, %object
	.size	bhsh, 4
bhsh:
	.word	136
	.type	bhsw, %object
	.size	bhsw, 4
bhsw:
	.word	240
	.ident	"GCC: (devkitARM release 53) 9.1.0"
