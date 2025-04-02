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
	.file	"game2.c"
	.text
	.align	2
	.global	initGame2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame2, %function
initGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #117440512
	ldr	r1, .L4
	mov	r3, #512
	mov	r0, #3
	ldr	r4, .L4+4
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+8
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r1, .L4+12
	ldr	r2, .L4+16
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	shadowOAM
	.word	DMANow
	.word	initPlayer
	.word	hOff
	.word	vOff
	.size	initGame2, .-initGame2
	.align	2
	.global	updateGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame2, %function
updateGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	updatePlayer
	.size	updateGame2, .-updateGame2
	.align	2
	.global	drawGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame2, %function
drawGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L12
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L12+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L12+16
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	hideSprites
	.word	drawPlayer
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.size	drawGame2, .-drawGame2
	.align	2
	.global	initPlayer2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer2, %function
initPlayer2:
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
	ldr	r3, .L16
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
.L17:
	.align	2
.L16:
	.word	player
	.size	initPlayer2, .-initPlayer2
	.global	__aeabi_idivmod
	.align	2
	.global	updatePlayer2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer2, %function
updatePlayer2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L41
	push	{r4, r5, r6, lr}
	ldrh	r3, [r3]
	ldr	r4, .L41+4
	lsr	r2, r3, #6
	ldr	r0, [r4, #4]
	eor	r2, r2, #1
	mov	r1, #0
	cmp	r0, #0
	movle	r2, #0
	andgt	r2, r2, #1
	cmp	r2, r1
	str	r1, [r4, #32]
	ldr	ip, [r4, #16]
	ldr	r1, [r4]
	ldr	r2, [r4, #20]
	bne	.L37
.L19:
	ands	r0, r3, #128
	bne	.L20
	ldr	lr, [r4, #4]
	add	r2, r2, lr
	cmp	r2, #512
	blt	.L38
.L20:
	lsr	r2, r3, #5
	eor	r2, r2, #1
	cmp	r1, #0
	movle	r2, #0
	andgt	r2, r2, #1
	cmp	r2, #0
	and	r3, r3, #16
	bne	.L39
	cmp	r3, #0
	bne	.L24
	add	ip, ip, r1
	cmp	ip, #512
	bge	.L24
.L31:
	mov	r0, #1
	mov	r2, #3
	ldr	r3, [r4, #8]
	add	r1, r3, r1
	str	r1, [r4]
	str	r0, [r4, #32]
	str	r2, [r4, #28]
.L23:
	ldr	r3, [r4, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #24]
	beq	.L40
.L27:
	mov	r2, #0
	ldr	r3, [r4, #4]
	ldr	r1, .L41+8
	sub	r3, r3, #80
	cmp	r3, #352
	str	r2, [r1]
	ble	.L28
	mov	r2, #352
	ldr	r3, .L41+12
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L24:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	streq	r3, [r4, #36]
	beq	.L27
	b	.L23
.L38:
	mov	r5, #1
	ldr	r2, [r4, #12]
	add	lr, r2, lr
	str	r0, [r4, #28]
	str	lr, [r4, #4]
	str	r5, [r4, #32]
	b	.L20
.L40:
	ldr	r0, [r4, #36]
	ldr	r3, .L41+16
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #10
	str	r1, [r4, #36]
	str	r3, [r4, #24]
	b	.L27
.L28:
	cmp	r3, #0
	ldrge	r2, .L41+12
	ldrlt	r3, .L41+12
	strge	r3, [r2]
	strlt	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L37:
	mov	lr, #1
	ldr	r5, [r4, #12]
	sub	r0, r0, r5
	str	r0, [r4, #4]
	str	lr, [r4, #32]
	str	lr, [r4, #28]
	b	.L19
.L39:
	mov	r0, #1
	mov	r2, #2
	cmp	r3, #0
	ldr	r3, [r4, #8]
	sub	r1, r1, r3
	str	r1, [r4]
	str	r0, [r4, #32]
	str	r2, [r4, #28]
	bne	.L23
	add	ip, ip, r1
	cmp	ip, #512
	blt	.L31
	b	.L23
.L42:
	.align	2
.L41:
	.word	buttons
	.word	player
	.word	hOff
	.word	vOff
	.word	__aeabi_idivmod
	.size	updatePlayer2, .-updatePlayer2
	.align	2
	.global	drawPlayer2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer2, %function
drawPlayer2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L47
	ldr	r3, .L47+4
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
	ldr	r1, .L47+8
	ldr	r3, [r0, #4]
	ldrh	r5, [r1]
	ldreq	r7, .L47+12
	ldr	r8, [r0, #36]
	ldr	r1, .L47+16
	orreq	r7, r2, r7
	sub	r3, r3, r5
	ldrb	r2, [r0, #44]	@ zero_extendqisi2
	ldr	r0, .L47+20
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
.L48:
	.align	2
.L47:
	.word	player
	.word	hOff
	.word	vOff
	.word	-28672
	.word	shadowOAM
	.word	1022
	.size	drawPlayer2, .-drawPlayer2
	.comm	intro,4,4
	.comm	shadowOAM,1024,4
	.comm	player,52,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
