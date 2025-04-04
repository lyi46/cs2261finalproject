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
	mov	r2, #40
	mov	r3, #67108864
	mov	r1, #120
	mvn	r0, #0
	push	{r4, lr}
	mov	lr, #15
	ldr	ip, .L4
	str	r2, [ip]
	add	r2, r2, #1004
	strh	r2, [r3]	@ movhi
	ldr	r4, .L4+4
	str	r1, [ip, #4]
	str	r0, [ip, #8]
	mov	r3, #200
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+8
	str	lr, [ip, #16]
	str	lr, [ip, #20]
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	bhPal
	.size	initbh, .-initbh
	.align	2
	.syntax unified
	.arm
	.fpu softvfp

drawbh:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L15
	ldr	r3, .L15+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
.L16:
	.align	2
.L15:
	.word	bhBitmap
	.word	drawFullscreenImage4
	.size	drawbh, .-drawbh
	.align	2
	.global	bhstate
	.syntax unified
	.arm
	.fpu softvfp
	.type	bhstate, %function
bhstate:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r10, .L27
	bl	initbh
	ldr	fp, .L27+4
	ldrh	r3, [r10]
	ldr	r8, .L27+8
	ldr	r7, .L27+12
	ldr	r6, .L27+16
	ldr	r5, .L27+20
	ldr	r4, .L27+24
	ldr	r9, .L27+28
.L18:
	strh	r3, [fp]	@ movhi
	ldrh	r3, [r5, #48]
	mov	r0, r4
	strh	r3, [r10]	@ movhi
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	ldrh	r2, [fp]
	tst	r2, #8
	ldrh	r3, [r10]
	beq	.L20
	tst	r3, #8
	beq	.L17
.L20:
	tst	r2, #4
	beq	.L18
	tst	r3, #4
	moveq	r2, #2
	streq	r2, [r9]
	b	.L18
.L17:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L28:
	.align	2
.L27:
	.word	buttons
	.word	oldButtons
	.word	drawFullscreenImage4
	.word	waitForVBlank
	.word	flipPages
	.word	67109120
	.word	bhBitmap
	.word	intro
	.size	bhstate, .-bhstate
	.comm	intro,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
