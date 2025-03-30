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
	.file	"main.c"
	.text
	.align	2
	.global	initialize0
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize0, %function
initialize0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r0, #4352
	mov	r2, #0
	ldr	r1, .L4+4
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #8]	@ movhi
	ldr	r0, .L4+8
	ldr	r1, .L4+12
	ldrh	r0, [r0, #48]
	ldr	r3, .L4+16
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	mgba_open
	.word	-9344
	.word	67109120
	.word	buttons
	.word	oldButtons
	.size	initialize0, .-initialize0
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L13
	ldr	r3, [r2]
	push	{r4, lr}
	add	r3, r3, #1
	ldr	r4, .L13+4
	str	r3, [r2]
	mov	lr, pc
	bx	r4
	ldr	r3, .L13+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L6
	ldr	r3, .L13+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L12
.L6:
	pop	{r4, lr}
	bx	lr
.L12:
	ldr	r3, .L13+16
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r4
	ldr	r3, .L13+20
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L13+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L14:
	.align	2
.L13:
	.word	rSeed
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	inststate
	.word	flipPages
	.word	state
	.size	start, .-start
	.align	2
	.global	startframe
	.syntax unified
	.arm
	.fpu softvfp
	.type	startframe, %function
startframe:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #83886080
	ldr	r1, .L17
	mov	r3, #256
	mov	r0, #3
	ldr	r4, .L17+4
	mov	lr, pc
	bx	r4
	ldr	r0, .L17+8
	ldr	r3, .L17+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L17+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L17+20
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r1, .L17+24
	ldr	r2, .L17+28
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L18:
	.align	2
.L17:
	.word	startPal
	.word	DMANow
	.word	startBitmap
	.word	drawFullscreenImage4
	.word	waitForVBlank
	.word	flipPages
	.word	state
	.word	rSeed
	.size	startframe, .-startframe
	.align	2
	.global	initialize4
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize4, %function
initialize4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L21
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	r2, #0
	ldr	r0, .L21+4
	ldr	r3, .L21+8
	strh	r0, [r1]	@ movhi
	ldr	r1, .L21+12
	ldrh	r0, [r3, #48]
	ldr	r3, .L21+16
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	bl	startframe
	ldr	r3, .L21+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L22:
	.align	2
.L21:
	.word	mgba_open
	.word	1044
	.word	67109120
	.word	buttons
	.word	oldButtons
	.word	initSound
	.size	initialize4, .-initialize4
	.align	2
	.global	instframe
	.syntax unified
	.arm
	.fpu softvfp
	.type	instframe, %function
instframe:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L25
	mov	lr, pc
	bx	r3
	ldr	r3, .L25+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L25+8
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L25+12
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L26:
	.align	2
.L25:
	.word	inststate
	.word	waitForVBlank
	.word	flipPages
	.word	state
	.size	instframe, .-instframe
	.align	2
	.global	game1frame
	.syntax unified
	.arm
	.fpu softvfp
	.type	game1frame, %function
game1frame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L29
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r3, #4352
	mov	r5, #0
	ldr	r1, .L29+4
	strh	r3, [r2]	@ movhi
	strh	r1, [r2, #8]	@ movhi
	ldr	r3, .L29+8
	ldr	r0, .L29+12
	ldrh	ip, [r3, #48]
	ldr	r3, .L29+16
	strh	ip, [r0]	@ movhi
	ldr	r4, .L29+20
	strh	r5, [r3]	@ movhi
	mov	r0, #3
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #11264
	mov	r2, #100663296
	ldr	r1, .L29+24
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L29+28
	ldr	r1, .L29+32
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L29+36
	mov	lr, pc
	bx	r4
	mov	r3, #9408
	mov	r0, #3
	ldr	r2, .L29+40
	ldr	r1, .L29+44
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L29+48
	ldr	r1, .L29+52
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L29+56
	mov	lr, pc
	bx	r3
	ldr	r2, .L29+60
	ldr	r1, .L29+64
	ldr	r3, .L29+68
	str	r5, [r2]
	str	r5, [r1]
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L29+72
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L30:
	.align	2
.L29:
	.word	mgba_open
	.word	-9344
	.word	67109120
	.word	buttons
	.word	oldButtons
	.word	DMANow
	.word	tilesetTiles
	.word	100718592
	.word	tilemapMap
	.word	tilesetPal
	.word	100728832
	.word	chiriroTiles
	.word	83886592
	.word	chiriroPal
	.word	hideSprites
	.word	vOff
	.word	hOff
	.word	initGame1
	.word	state
	.size	game1frame, .-game1frame
	.align	2
	.global	inst
	.syntax unified
	.arm
	.fpu softvfp
	.type	inst, %function
inst:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L38
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L38+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L31
	ldr	r3, .L38+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L37
.L31:
	pop	{r4, lr}
	bx	lr
.L37:
	bl	game1frame
	ldr	r3, .L38+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	initGame1
	.size	inst, .-inst
	.align	2
	.global	game1
	.syntax unified
	.arm
	.fpu softvfp
	.type	game1, %function
game1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L47
	ldr	r4, .L47+4
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r4
	ldr	r3, .L47+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L47+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L47+16
	mov	lr, pc
	bx	r5
	ldr	r3, .L47+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L40
	ldr	r3, .L47+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L46
.L40:
	pop	{r4, r5, r6, lr}
	bx	lr
.L46:
	ldr	r3, .L47+28
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r4
	ldr	r3, .L47+32
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L47+36
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L48:
	.align	2
.L47:
	.word	updateGame1
	.word	waitForVBlank
	.word	drawGame1
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	pausestate
	.word	flipPages
	.word	state
	.size	game1, .-game1
	.align	2
	.global	pauseframe
	.syntax unified
	.arm
	.fpu softvfp
	.type	pauseframe, %function
pauseframe:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L51
	mov	lr, pc
	bx	r3
	ldr	r3, .L51+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L51+8
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L51+12
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L52:
	.align	2
.L51:
	.word	pausestate
	.word	waitForVBlank
	.word	flipPages
	.word	state
	.size	pauseframe, .-pauseframe
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L65
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L65+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L54
	ldr	r2, .L65+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L63
.L54:
	tst	r3, #4
	beq	.L53
	ldr	r3, .L65+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L64
.L53:
	pop	{r4, lr}
	bx	lr
.L63:
	bl	game1frame
	ldr	r3, .L65+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L64:
	pop	{r4, lr}
	b	startframe
.L66:
	.align	2
.L65:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	initGame1
	.size	pause, .-pause
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L91
	mov	lr, pc
	bx	r3
	mov	r2, #0
	mov	r10, r2
	ldr	r7, .L91+4
	ldr	r4, .L91+8
	str	r2, [r7]
	ldrh	r3, [r4]
	ldr	r5, .L91+12
	ldr	fp, .L91+16
	ldr	r9, .L91+20
	ldr	r8, .L91+24
	ldr	r6, .L91+28
.L69:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r6, #48]
	strh	r3, [r4]	@ movhi
	cmp	r10, #3
	ldrls	pc, [pc, r10, asl #2]
	b	.L69
.L71:
	.word	.L74
	.word	.L73
	.word	.L72
	.word	.L70
.L70:
	ldr	r3, .L91+32
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L75
	ldrh	r3, [r4]
	ands	r10, r3, #8
	beq	.L84
.L87:
	ldr	r10, [r7]
	b	.L69
.L72:
	ldr	r3, .L91+36
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r9
	mov	lr, pc
	bx	r8
	mov	r3, #2
	ldrh	r2, [r5]
	tst	r2, #8
	str	r3, [r7]
	beq	.L88
	ldrh	r3, [r4]
	tst	r3, #8
	bne	.L69
.L89:
	mov	r10, #1
	ldr	r3, .L91+40
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	str	r10, [r7]
	b	.L69
.L73:
	ldr	r3, .L91+44
	mov	lr, pc
	bx	r3
	ldrh	r2, [r5]
	tst	r2, #4
	ldrh	r3, [r4]
	beq	.L80
	ands	r10, r3, #4
	beq	.L90
.L80:
	tst	r2, #8
	beq	.L87
	tst	r3, #8
	bne	.L87
	mov	r10, #3
	ldr	r3, .L91
	mov	lr, pc
	bx	r3
	ldr	r3, .L91+48
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r9
	mov	lr, pc
	bx	r8
	ldrh	r3, [r4]
	str	r10, [r7]
	b	.L69
.L74:
	mov	lr, pc
	bx	fp
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L75
	ldrh	r3, [r4]
	tst	r3, #8
	bne	.L87
	mov	r10, #2
	ldr	r3, .L91
	mov	lr, pc
	bx	r3
	ldr	r3, .L91+52
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	str	r10, [r7]
	b	.L69
.L75:
	ldr	r10, [r7]
.L88:
	ldrh	r3, [r4]
	b	.L69
.L90:
	ldr	r3, .L91
	mov	lr, pc
	bx	r3
	str	r10, [r7]
	ldrh	r2, [r5]
	ldrh	r3, [r4]
	b	.L80
.L84:
	ldr	r3, .L91+56
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r3, #4352
	strh	r3, [r2]	@ movhi
	mov	r3, r2
	ldr	r2, .L91+60
	strh	r2, [r3, #8]	@ movhi
	ldrh	r3, [r6, #48]
	strh	r10, [r5]	@ movhi
	strh	r3, [r4]	@ movhi
	b	.L89
.L92:
	.align	2
.L91:
	.word	initialize4
	.word	state
	.word	buttons
	.word	oldButtons
	.word	startframe
	.word	waitForVBlank
	.word	flipPages
	.word	67109120
	.word	pause
	.word	inststate
	.word	game1frame
	.word	game1
	.word	pausestate
	.word	inst
	.word	mgba_open
	.word	-9344
	.size	main, .-main
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	shadowOAM,1024,4
	.comm	rSeed,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	state,4,4
	.global	colors
	.data
	.align	2
	.type	colors, %object
	.size	colors, 16
colors:
	.short	31
	.short	10676
	.short	31744
	.short	19164
	.short	32239
	.short	31775
	.short	32767
	.short	0
	.ident	"GCC: (devkitARM release 53) 9.1.0"
