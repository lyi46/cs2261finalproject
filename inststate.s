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
	.file	"inststate.c"
	.text
	.align	2
	.global	initinst
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initinst, %function
initinst:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	instructionsPal
	.size	initinst, .-initinst
	.align	2
	.global	drawinst
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawinst, %function
drawinst:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L8
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	instructionsBitmap
	.word	drawFullscreenImage4
	.size	drawinst, .-drawinst
	.align	2
	.global	inststate
	.syntax unified
	.arm
	.fpu softvfp
	.type	inststate, %function
inststate:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L15
	mov	r3, #256
	ldr	r5, .L15+4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L15+8
	mov	lr, pc
	bx	r5
	ldr	r9, .L15+12
	ldr	r5, .L15+16
	ldrh	r3, [r4]
	ldr	r8, .L15+20
	ldr	r7, .L15+24
	ldr	r6, .L15+28
	ldr	r10, .L15+32
.L11:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r6, #48]
	mov	r0, r10
	strh	r3, [r4]	@ movhi
	mov	lr, pc
	bx	r9
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r7
	ldrh	r3, [r5]
	tst	r3, #8
	ldrh	r3, [r4]
	beq	.L11
	tst	r3, #8
	bne	.L11
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	buttons
	.word	DMANow
	.word	instructionsPal
	.word	drawFullscreenImage4
	.word	oldButtons
	.word	waitForVBlank
	.word	flipPages
	.word	67109120
	.word	instructionsBitmap
	.size	inststate, .-inststate
	.ident	"GCC: (devkitARM release 53) 9.1.0"
