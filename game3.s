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
	.file	"game3.c"
	.text
	.align	2
	.global	initGame3
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame3, %function
initGame3:
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
	mov	ip, #32
	mov	r2, #0
	mov	r0, #10
	mov	r1, #3
	mov	r5, #16
	mov	r4, #480
	mov	lr, #1
	ldr	r3, .L4+8
	str	ip, [r3, #20]
	ldr	ip, .L4+12
	str	r0, [r3, #24]
	str	ip, [r3]
	ldr	r0, .L4+16
	ldr	ip, .L4+20
	strb	r2, [r3, #44]
	str	r5, [r3, #16]
	str	r4, [r3, #4]
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
	.word	498
	.word	vOff
	.word	hOff
	.size	initGame3, .-initGame3
	.align	2
	.global	drawGame3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame3, %function
drawGame3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L8+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L8+16
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	hideSprites
	.word	drawPlayer
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.size	drawGame3, .-drawGame3
	.align	2
	.global	initPlayer3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer3, %function
initPlayer3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r0, #0
	mov	lr, #32
	mov	r2, #3
	mov	r5, #16
	mov	r4, #480
	mov	ip, #10
	mov	r1, #1
	ldr	r3, .L12
	str	lr, [r3, #20]
	strb	r0, [r3, #44]
	ldr	lr, .L12+4
	str	r5, [r3, #16]
	str	r4, [r3, #4]
	str	lr, [r3]
	str	ip, [r3, #24]
	str	r1, [r3, #48]
	str	r2, [r3, #40]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	pop	{r4, r5, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	player
	.word	498
	.size	initPlayer3, .-initPlayer3
	.global	__aeabi_idivmod
	.align	2
	.global	updatePlayer3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer3, %function
updatePlayer3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L33
	ldrh	r3, [r3]
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L33+4
	tst	r3, #64
	str	r2, [r4, #32]
	bne	.L15
	ldr	r2, [r4, #4]
	cmp	r2, #0
	ble	.L15
	mov	r1, #1
	ldr	r0, [r4, #12]
	sub	r2, r2, r0
	str	r2, [r4, #4]
	str	r1, [r4, #32]
	str	r1, [r4, #28]
.L15:
	ldr	r2, .L33+8
	ands	r0, r3, #128
	ldr	r6, [r2]
	bne	.L16
	ldr	ip, [r4, #4]
	ldr	r1, [r4, #20]
	add	r1, ip, r1
	cmp	r1, r6
	blt	.L32
.L16:
	tst	r3, #32
	ldr	r7, [r2, #4]
	and	r3, r3, #16
	bne	.L17
	ldr	r2, [r4]
	cmp	r2, #0
	ble	.L17
	mov	r0, #1
	mov	r1, #2
	ldr	r5, [r4, #8]
	cmp	r3, #0
	sub	r5, r2, r5
	str	r5, [r4]
	str	r0, [r4, #32]
	str	r1, [r4, #28]
	bne	.L19
	ldr	r3, [r4, #16]
	add	r3, r5, r3
	cmp	r3, r7
	blt	.L28
.L29:
	ldr	r5, [r4]
	b	.L19
.L17:
	cmp	r3, #0
	bne	.L20
	ldr	r5, [r4]
	ldr	r3, [r4, #16]
	add	r3, r5, r3
	cmp	r3, r7
	bge	.L20
.L28:
	mov	r2, #1
	mov	r3, #3
	ldr	r1, [r4, #8]
	add	r5, r5, r1
	str	r5, [r4]
	str	r2, [r4, #32]
	str	r3, [r4, #28]
.L19:
	ldr	r3, [r4, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #24]
	bne	.L22
	ldr	r0, [r4, #36]
	ldr	r3, .L33+12
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #10
	str	r1, [r4, #36]
	str	r3, [r4, #24]
.L22:
	ldr	r3, [r4, #4]
	sub	r1, r6, #159
	sub	r3, r3, #80
	cmp	r3, r1
	subge	r3, r6, #160
	ldr	r1, .L33+16
	cmp	r3, #0
	str	r3, [r1]
	movlt	r3, #0
	sub	r2, r5, #120
	ldr	r0, .L33+20
	strlt	r3, [r1]
	sub	r3, r7, #239
	cmp	r2, r3
	str	r2, [r0]
	subge	r2, r7, #240
	strge	r2, [r0]
	cmp	r2, #0
	movlt	r3, #0
	pop	{r4, r5, r6, r7, r8, lr}
	strlt	r3, [r0]
	bx	lr
.L20:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	streq	r3, [r4, #36]
	ldreq	r5, [r4]
	beq	.L22
	b	.L29
.L32:
	mov	lr, #1
	ldr	r1, [r4, #12]
	add	ip, r1, ip
	str	r0, [r4, #28]
	str	ip, [r4, #4]
	str	lr, [r4, #32]
	b	.L16
.L34:
	.align	2
.L33:
	.word	buttons
	.word	player
	.word	.LANCHOR0
	.word	__aeabi_idivmod
	.word	vOff
	.word	hOff
	.size	updatePlayer3, .-updatePlayer3
	.align	2
	.global	updateGame3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame3, %function
updateGame3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	updatePlayer3
	.size	updateGame3, .-updateGame3
	.global	g3sh
	.global	g3sw
	.comm	intro,4,4
	.comm	shadowOAM,1024,4
	.comm	player,52,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g3sh, %object
	.size	g3sh, 4
g3sh:
	.word	512
	.type	g3sw, %object
	.size	g3sw, 4
g3sw:
	.word	512
	.ident	"GCC: (devkitARM release 53) 9.1.0"
