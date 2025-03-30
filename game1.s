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
	mov	r3, #9408
	ldr	r4, .L4
	mov	r0, #3
	ldr	r2, .L4+4
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+20
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L4+24
	mov	lr, pc
	bx	r4
	mov	r2, #0
	mov	lr, #10
	mov	ip, #1
	mov	r1, #3
	mov	r5, #16
	mov	r4, #32
	mov	r0, #30
	ldr	r3, .L4+28
	str	lr, [r3, #24]
	str	ip, [r3, #48]
	ldr	lr, .L4+32
	ldr	ip, .L4+36
	strb	r2, [r3, #44]
	str	r5, [r3, #16]
	str	r4, [r3, #20]
	str	r2, [lr]
	str	r0, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #40]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [ip]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	100728832
	.word	chiriroTiles
	.word	83886592
	.word	chiriroPal
	.word	hideSprites
	.word	shadowOAM
	.word	player
	.word	hOff
	.word	vOff
	.size	initGame1, .-initGame1
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
	push	{r4, r5, r6, lr}
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	mov	r5, #0
	mov	r1, #67108864
	ldr	r2, .L8+4
	ldr	r3, .L8+8
	ldr	ip, .L8+12
	ldrh	r0, [r2]
	ldrh	ip, [ip]
	ldr	r2, [r3, #4]
	ldr	r3, [r3]
	sub	r3, r3, ip
	ldr	lr, .L8+16
	sub	r2, r2, r0
	lsl	r3, r3, #23
	ldr	r4, .L8+20
	and	r2, r2, #255
	lsr	r3, r3, #23
	orr	r2, r2, lr
	orr	r3, r3, lr
	strh	r2, [r4]	@ movhi
	strh	ip, [r1, #16]	@ movhi
	ldr	r2, .L8+24
	strh	r0, [r1, #18]	@ movhi
	strh	r3, [r4, #2]	@ movhi
	strh	r5, [r4, #4]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r1, r4
	mov	r3, #512
	ldr	r4, .L8+28
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	hideSprites
	.word	vOff
	.word	player
	.word	hOff
	.word	-32768
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.size	drawGame1, .-drawGame1
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
	mov	ip, #0
	push	{r4, r5, lr}
	mov	r2, #3
	mov	r5, #16
	mov	r4, #32
	mov	lr, #10
	mov	r1, #30
	mov	r0, #1
	ldr	r3, .L12
	strb	ip, [r3, #44]
	str	r5, [r3, #16]
	str	r4, [r3, #20]
	str	lr, [r3, #24]
	str	r0, [r3, #48]
	str	r1, [r3]
	str	r1, [r3, #4]
	str	r2, [r3, #40]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	pop	{r4, r5, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	player
	.size	initPlayer, .-initPlayer
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
	ldr	r3, .L31
	ldr	r1, .L31+4
	ldrh	r0, [r3]
	ldr	r2, [r1, #4]
	lsr	r3, r0, #6
	eor	r3, r3, #1
	cmp	r2, #0
	movle	r3, #0
	andgt	r3, r3, #1
	cmp	r3, #0
	push	{r4, lr}
	ldrne	r4, [r1, #12]
	subne	r2, r2, r4
	strne	r2, [r1, #4]
	tst	r0, #128
	ldr	r3, [r1]
	ldr	lr, [r1, #16]
	ldr	ip, [r1, #20]
	bne	.L16
	add	ip, ip, r2
	cmp	ip, #512
	ldrlt	ip, [r1, #12]
	addlt	r2, r2, ip
	strlt	r2, [r1, #4]
.L16:
	lsr	ip, r0, #5
	eor	ip, ip, #1
	cmp	r3, #0
	movle	ip, #0
	andgt	ip, ip, #1
	cmp	ip, #0
	movne	ip, #1
	ldrne	r4, [r1, #8]
	subne	r3, r3, r4
	strne	r3, [r1]
	strne	ip, [r1, #28]
	ands	r0, r0, #16
	bne	.L18
	add	lr, lr, r3
	cmp	lr, #512
	ldrlt	ip, [r1, #8]
	addlt	r3, r3, ip
	strlt	r0, [r1, #28]
	strlt	r3, [r1]
.L18:
	ldr	r1, .L31+8
	sub	r2, r2, #80
	sub	r3, r3, #120
	cmp	r2, #352
	str	r3, [r1]
	ble	.L19
	mov	r0, #352
	ldr	r2, .L31+12
	str	r0, [r2]
.L20:
	cmp	r3, #272
	movgt	r3, #272
	strgt	r3, [r1]
	bgt	.L14
	cmp	r3, #0
	movlt	r3, #0
	strlt	r3, [r1]
.L14:
	pop	{r4, lr}
	bx	lr
.L19:
	cmp	r2, #0
	movlt	r0, #0
	ldrge	r0, .L31+12
	ldrlt	r2, .L31+12
	strge	r2, [r0]
	strlt	r0, [r2]
	b	.L20
.L32:
	.align	2
.L31:
	.word	buttons
	.word	player
	.word	hOff
	.word	vOff
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
	push	{r4, r5, lr}
	mov	r0, #67108864
	mov	r5, #0
	ldr	r2, .L36
	ldr	ip, .L36+4
	ldr	r1, .L36+8
	ldrh	lr, [ip]
	ldr	r3, [r2]
	ldrh	ip, [r1]
	ldr	r2, [r2, #4]
	sub	r3, r3, lr
	ldr	r4, .L36+12
	sub	r2, r2, ip
	lsl	r3, r3, #23
	ldr	r1, .L36+16
	and	r2, r2, #255
	lsr	r3, r3, #23
	orr	r2, r2, r4
	orr	r3, r3, r4
	strh	r2, [r1]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	lr, [r0, #16]	@ movhi
	strh	r5, [r1, #4]	@ movhi
	strh	ip, [r0, #18]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L37:
	.align	2
.L36:
	.word	player
	.word	hOff
	.word	vOff
	.word	-32768
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.comm	shadowOAM,1024,4
	.comm	player,52,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
