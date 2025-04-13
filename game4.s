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
	.file	"game4.c"
	.text
	.align	2
	.global	initGame4
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame4, %function
initGame4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L4
	ldr	r4, .L4+4
	mov	lr, pc
	bx	r4
	mov	r3, #70
	mov	r1, #3
	mov	ip, #32
	mov	r0, #0
	mov	r5, #5
	mov	r4, #10
	mov	lr, #1
	mov	r8, #16
	mov	r7, #112
	mov	r6, #104
	ldr	r2, .L4+8
	str	r3, [r2, #4]
	ldr	r3, .L4+12
	str	ip, [r2, #20]
	str	r1, [r2, #40]
	str	r1, [r2, #8]
	str	r1, [r2, #12]
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r1, [r3, #40]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	ldr	ip, .L4+16
	strb	r5, [r3, #44]
	ldr	r1, .L4+20
	strb	r0, [r2, #44]
	str	r8, [r2, #16]
	str	r7, [r2]
	str	r4, [r2, #24]
	str	r4, [r3, #24]
	str	r6, [r3]
	str	lr, [r2, #48]
	str	lr, [r3, #48]
	str	r0, [r3, #4]
	str	r0, [ip]
	str	r0, [r1]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	shadowOAM
	.word	DMANow
	.word	player
	.word	noface
	.word	hOff
	.word	vOff
	.size	initGame4, .-initGame4
	.align	2
	.global	initPlayer4
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer4, %function
initPlayer4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #0
	push	{r4, r5, r6, lr}
	mov	r2, #3
	mov	r6, #16
	mov	r5, #32
	mov	r4, #112
	mov	lr, #70
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
	.size	initPlayer4, .-initPlayer4
	.align	2
	.global	drawPlayer4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer4, %function
drawPlayer4:
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
	.size	drawPlayer4, .-drawPlayer4
	.global	__aeabi_idivmod
	.align	2
	.global	updatePlayer4
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer4, %function
updatePlayer4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r2, .L39
	ldrh	r2, [r2]
	ldr	r4, .L39+4
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
	ldr	r3, .L39+8
	ands	r1, r2, #128
	ldr	r6, [r3]
	ldr	r7, [r4, #20]
	bne	.L18
	ldr	r0, [r4, #4]
	add	ip, r0, r7
	cmp	ip, r6
	blt	.L38
.L18:
	tst	r2, #32
	ldr	r9, [r3, #4]
	ldr	r8, [r4, #16]
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
	add	r3, r5, r8
	cmp	r3, r9
	blt	.L31
.L32:
	ldr	r5, [r4]
	b	.L21
.L19:
	cmp	r1, #0
	bne	.L22
	ldr	r5, [r4]
	add	r3, r5, r8
	cmp	r3, r9
	bge	.L22
.L31:
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
	ldr	r3, .L39+12
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #10
	str	r1, [r4, #36]
	str	r3, [r4, #24]
.L24:
	ldr	r1, [r4, #4]
	sub	r0, r6, #159
	sub	ip, r1, #80
	cmp	ip, r0
	ldr	r2, .L39+16
	subge	ip, r6, #160
	cmp	ip, #0
	str	ip, [r2]
	movlt	ip, #0
	sub	r0, r5, #120
	strlt	ip, [r2]
	ldr	r3, .L39+20
	sub	r2, r9, #239
	cmp	r0, r2
	str	r0, [r3]
	subge	r0, r9, #240
	strge	r0, [r3]
	cmp	r0, #0
	movlt	r2, #0
	mov	ip, #30
	mov	r4, #500
	mov	lr, #105
	strlt	r2, [r3]
	mov	r0, r5
	stmib	sp, {r4, ip}
	mov	r3, r7
	mov	r2, r8
	str	ip, [sp, #12]
	str	lr, [sp]
	ldr	r4, .L39+24
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	movne	r2, #3
	ldrne	r3, .L39+28
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
	b	.L32
.L38:
	mov	lr, #1
	ldr	ip, [r4, #12]
	add	r0, ip, r0
	str	r1, [r4, #28]
	str	r0, [r4, #4]
	str	lr, [r4, #32]
	b	.L18
.L40:
	.align	2
.L39:
	.word	buttons
	.word	player
	.word	.LANCHOR0
	.word	__aeabi_idivmod
	.word	vOff
	.word	hOff
	.word	collision
	.word	intro
	.size	updatePlayer4, .-updatePlayer4
	.align	2
	.global	updateGame4
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame4, %function
updateGame4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	updatePlayer4
	.size	updateGame4, .-updateGame4
	.align	2
	.global	drawnoface
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawnoface, %function
drawnoface:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L45
	ldr	r3, .L45+4
	ldr	r2, [r1, #4]
	ldrh	r0, [r3]
	sub	r2, r2, r0
	and	r2, r2, #255
	mvn	r2, r2, lsl #17
	ldr	r3, .L45+8
	ldrh	ip, [r3]
	ldr	r3, [r1]
	str	lr, [sp, #-4]!
	sub	r3, r3, ip
	ldr	lr, [r1, #28]
	lsl	r3, r3, #23
	cmp	lr, #2
	lsr	r3, r3, #23
	orreq	r3, r3, #4096
	mvn	r2, r2, lsr #17
	mvn	r3, r3, lsl #18
	ldr	r1, .L45+12
	mov	lr, #256
	strh	r2, [r1, #40]	@ movhi
	mvn	r3, r3, lsr #18
	mov	r2, #67108864
	strh	r3, [r1, #42]	@ movhi
	strh	ip, [r2, #16]	@ movhi
	strh	lr, [r1, #44]	@ movhi
	strh	r0, [r2, #18]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L46:
	.align	2
.L45:
	.word	noface
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.size	drawnoface, .-drawnoface
	.align	2
	.global	drawGame4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame4, %function
drawGame4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L49
	mov	lr, pc
	bx	r3
	bl	drawPlayer4
	bl	drawnoface
	ldr	r3, .L49+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L49+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L49+12
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L50:
	.align	2
.L49:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.size	drawGame4, .-drawGame4
	.align	2
	.global	initnoface
	.syntax unified
	.arm
	.fpu softvfp
	.type	initnoface, %function
initnoface:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #5
	push	{r4, r5, lr}
	mov	r2, #3
	mov	r1, #32
	mov	r5, #104
	mov	r4, #0
	mov	lr, #10
	mov	r0, #1
	ldr	r3, .L53
	strb	ip, [r3, #44]
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #24]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r0, [r3, #48]
	str	r2, [r3, #40]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	pop	{r4, r5, lr}
	bx	lr
.L54:
	.align	2
.L53:
	.word	noface
	.size	initnoface, .-initnoface
	.global	g4sh
	.global	g4sw
	.comm	intro,4,4
	.comm	shadowOAM,1024,4
	.comm	noface,52,4
	.comm	player,52,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g4sh, %object
	.size	g4sh, 4
g4sh:
	.word	140
	.type	g4sw, %object
	.size	g4sw, 4
g4sw:
	.word	512
	.ident	"GCC: (devkitARM release 53) 9.1.0"
