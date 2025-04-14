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
	.file	"game1.c"
	.text
	.align	2
	.global	initGame1
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame1, %function
initGame1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L4
	ldr	r4, .L4+4
	mov	lr, pc
	bx	r4
	mov	r2, #0
	mov	r4, #45
	mov	ip, #420
	mov	r0, #10
	mov	r1, #3
	mov	r6, #16
	mov	r5, #32
	mov	lr, #1
	ldr	r3, .L4+8
	stm	r3, {r4, ip}
	str	r0, [r3, #24]
	ldr	ip, .L4+12
	ldr	r0, .L4+16
	strb	r2, [r3, #44]
	str	r6, [r3, #16]
	str	r5, [r3, #20]
	str	lr, [r3, #48]
	str	r1, [r3, #40]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [ip]
	str	r2, [r0]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	shadowOAM
	.word	DMANow
	.word	player
	.word	hOff
	.word	vOff
	.size	initGame1, .-initGame1
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #0
	push	{r4, r5, r6, lr}
	mov	r2, #3
	mov	r6, #16
	mov	r5, #32
	mov	r4, #45
	mov	lr, #420
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
	.size	initPlayer, .-initPlayer
	.global	__aeabi_idivmod
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L41
	push	{r4, r5, r6, r7, r8, lr}
	ldrh	r1, [r3]
	ldr	r4, .L41+4
	lsr	r3, r1, #6
	ldr	r2, [r4, #4]
	eor	r3, r3, #1
	mov	r0, #0
	cmp	r2, #0
	movle	r3, #0
	andgt	r3, r3, #1
	add	r6, r4, #16
	cmp	r3, r0
	str	r0, [r4, #32]
	ldr	r5, [r4]
	ldm	r6, {r6, r7}
	sub	sp, sp, #16
	bne	.L38
.L11:
	ands	r3, r1, #128
	bne	.L12
	ldr	r2, [r4, #4]
	add	r0, r7, r2
	cmp	r0, #512
	blt	.L39
.L12:
	lsr	r0, r1, #5
	eor	r0, r0, #1
	cmp	r5, #0
	movle	r0, #0
	andgt	r0, r0, #1
	cmp	r0, #0
	and	r1, r1, #16
	bne	.L40
	cmp	r1, #0
	bne	.L16
	add	r3, r6, r5
	cmp	r3, #512
	bge	.L16
.L26:
	mov	r2, #1
	mov	r3, #3
	ldr	r1, [r4, #8]
	add	r5, r5, r1
	str	r5, [r4]
	str	r2, [r4, #32]
	str	r3, [r4, #28]
.L15:
	ldr	r3, [r4, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #24]
	bne	.L18
	ldr	r0, [r4, #36]
	ldr	r3, .L41+8
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #10
	str	r1, [r4, #36]
	str	r3, [r4, #24]
.L18:
	ldr	r1, [r4, #4]
	ldr	r3, .L41+12
	sub	r2, r1, #80
	sub	r0, r5, #120
	cmp	r2, #352
	str	r0, [r3]
	ble	.L19
	mov	ip, #352
	ldr	r2, .L41+16
	str	ip, [r2]
.L20:
	cmp	r0, #272
	movgt	r2, #272
	strgt	r2, [r3]
	bgt	.L23
	cmp	r0, #0
	movlt	r2, #0
	strlt	r2, [r3]
.L23:
	mov	ip, #30
	mov	lr, #170
	mov	r8, #300
	mov	r3, r7
	mov	r2, r6
	mov	r0, r5
	stmib	sp, {r8, ip}
	str	ip, [sp, #12]
	str	lr, [sp]
	ldr	r5, .L41+20
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r2, #1
	ldrne	r3, .L41+24
	mov	r1, #220
	strne	r2, [r3]
	mov	r3, #30
	mov	r2, #150
	stmib	sp, {r1, r3}
	str	r2, [sp]
	str	r3, [sp, #12]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r2, #5
	ldrne	r3, .L41+24
	strne	r2, [r3]
.L10:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L16:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	streq	r3, [r4, #36]
	ldreq	r5, [r4]
	beq	.L18
	b	.L27
.L39:
	mov	ip, #1
	ldr	r0, [r4, #12]
	add	r2, r0, r2
	str	r3, [r4, #28]
	str	r2, [r4, #4]
	str	ip, [r4, #32]
	b	.L12
.L19:
	cmp	r2, #0
	movlt	ip, #0
	ldrge	ip, .L41+16
	ldrlt	r2, .L41+16
	strge	r2, [ip]
	strlt	ip, [r2]
	b	.L20
.L40:
	mov	r2, #1
	mov	r3, #2
	cmp	r1, #0
	ldr	r1, [r4, #8]
	sub	r5, r5, r1
	str	r5, [r4]
	str	r2, [r4, #32]
	str	r3, [r4, #28]
	bne	.L15
	add	r3, r6, r5
	cmp	r3, #512
	blt	.L26
.L27:
	ldr	r5, [r4]
	b	.L15
.L38:
	mov	r3, #1
	ldr	r0, [r4, #12]
	sub	r2, r2, r0
	str	r2, [r4, #4]
	str	r3, [r4, #32]
	str	r3, [r4, #28]
	b	.L11
.L42:
	.align	2
.L41:
	.word	buttons
	.word	player
	.word	__aeabi_idivmod
	.word	hOff
	.word	vOff
	.word	collision
	.word	intro
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateGame1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame1, %function
updateGame1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	updatePlayer
	.size	updateGame1, .-updateGame1
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L48
	ldr	r3, .L48+4
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
	ldr	r1, .L48+8
	ldr	r3, [r0, #4]
	ldrh	r5, [r1]
	ldreq	r7, .L48+12
	ldr	r8, [r0, #36]
	ldr	r1, .L48+16
	orreq	r7, r2, r7
	sub	r3, r3, r5
	ldrb	r2, [r0, #44]	@ zero_extendqisi2
	ldr	r0, .L48+20
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
.L49:
	.align	2
.L48:
	.word	player
	.word	hOff
	.word	vOff
	.word	-28672
	.word	shadowOAM
	.word	1022
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	drawGame1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame1, %function
drawGame1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L52
	mov	lr, pc
	bx	r3
	bl	drawPlayer
	ldr	r3, .L52+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L52+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L52+12
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L53:
	.align	2
.L52:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.size	drawGame1, .-drawGame1
	.comm	intro,4,4
	.comm	shadowOAM,1024,4
	.comm	player,52,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
