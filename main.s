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
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	game1.part.0, %function
game1.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+8
	mov	lr, pc
	bx	r3
	mov	r2, #7
	ldr	r3, .L4+12
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	pausestate
	.word	waitForVBlank
	.word	flipPages
	.word	state
	.size	game1.part.0, .-game1.part.0
	.set	game4.part.0,game1.part.0
	.set	game3.part.0,game1.part.0
	.set	game2.part.0,game1.part.0
	.set	bh.part.0,game1.part.0
	.align	2
	.global	initialize0
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize0, %function
initialize0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #4352
	mov	r2, #0
	strh	r1, [r3]	@ movhi
	add	r3, r3, #256
	ldrh	r0, [r3, #48]
	ldr	r1, .L8+4
	ldr	r3, .L8+8
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	mgba_open
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
	ldr	r2, .L17
	ldr	r3, [r2]
	push	{r4, lr}
	add	r3, r3, #1
	ldr	r4, .L17+4
	str	r3, [r2]
	mov	lr, pc
	bx	r4
	ldr	r3, .L17+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L10
	ldr	r3, .L17+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L16
.L10:
	pop	{r4, lr}
	bx	lr
.L16:
	ldr	r3, .L17+16
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r4
	ldr	r3, .L17+20
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L17+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L18:
	.align	2
.L17:
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
	ldr	r1, .L21
	mov	r3, #256
	mov	r0, #3
	ldr	r4, .L21+4
	mov	lr, pc
	bx	r4
	ldr	r0, .L21+8
	ldr	r3, .L21+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L21+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L21+20
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r1, .L21+24
	ldr	r2, .L21+28
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L22:
	.align	2
.L21:
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
	ldr	r3, .L25
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	r2, #0
	ldr	r0, .L25+4
	ldr	r3, .L25+8
	strh	r0, [r1]	@ movhi
	ldr	r1, .L25+12
	ldrh	r0, [r3, #48]
	ldr	r3, .L25+16
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	bl	startframe
	ldr	r3, .L25+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L26:
	.align	2
.L25:
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
	ldr	r3, .L29
	mov	lr, pc
	bx	r3
	ldr	r3, .L29+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L29+8
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L29+12
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L30:
	.align	2
.L29:
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
	ldr	r3, .L33
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r3, #4352
	mov	r5, #0
	strh	r3, [r2]	@ movhi
	ldr	r3, .L33+4
	ldr	r0, .L33+8
	ldrh	ip, [r3, #48]
	ldr	r1, .L33+12
	ldr	r3, .L33+16
	strh	ip, [r0]	@ movhi
	ldr	r4, .L33+20
	strh	r5, [r3]	@ movhi
	mov	r0, #3
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #11264
	mov	r2, #100663296
	ldr	r1, .L33+24
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L33+28
	ldr	r1, .L33+32
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L33+36
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L33+40
	ldr	r1, .L33+44
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L33+48
	ldr	r1, .L33+52
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L33+56
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L33+60
	mov	lr, pc
	bx	r4
	ldr	r2, .L33+64
	ldr	r1, .L33+68
	ldr	r3, .L33+72
	str	r5, [r2]
	str	r5, [r1]
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L33+76
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L34:
	.align	2
.L33:
	.word	mgba_open
	.word	67109120
	.word	buttons
	.word	-9344
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
	.word	shadowOAM
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
	ldr	r3, .L42
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L42+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L35
	ldr	r3, .L42+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L41
.L35:
	pop	{r4, lr}
	bx	lr
.L41:
	bl	game1frame
	ldr	r3, .L42+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L43:
	.align	2
.L42:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	initGame1
	.size	inst, .-inst
	.align	2
	.global	bhframe
	.syntax unified
	.arm
	.fpu softvfp
	.type	bhframe, %function
bhframe:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L46
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r3, #4352
	mov	r5, #0
	strh	r3, [r2]	@ movhi
	ldr	r3, .L46+4
	ldr	r0, .L46+8
	ldrh	ip, [r3, #48]
	ldr	r1, .L46+12
	ldr	r3, .L46+16
	strh	ip, [r0]	@ movhi
	ldr	r4, .L46+20
	strh	r5, [r3]	@ movhi
	mov	r0, #3
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #19200
	mov	r2, #100663296
	ldr	r1, .L46+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L46+28
	ldr	r1, .L46+32
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L46+36
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L46+40
	ldr	r1, .L46+44
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L46+48
	ldr	r1, .L46+52
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L46+56
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L46+60
	mov	lr, pc
	bx	r4
	ldr	r2, .L46+64
	ldr	r1, .L46+68
	ldr	r3, .L46+72
	str	r5, [r2]
	str	r5, [r1]
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L46+76
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L47:
	.align	2
.L46:
	.word	mgba_open
	.word	67109120
	.word	buttons
	.word	-9344
	.word	oldButtons
	.word	DMANow
	.word	bh1Tiles
	.word	100718592
	.word	bhtmMap
	.word	bh1Pal
	.word	100728832
	.word	chiriroTiles
	.word	83886592
	.word	chiriroPal
	.word	hideSprites
	.word	shadowOAM
	.word	vOff
	.word	hOff
	.word	initbh
	.word	state
	.size	bhframe, .-bhframe
	.align	2
	.global	game2frame
	.syntax unified
	.arm
	.fpu softvfp
	.type	game2frame, %function
game2frame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L50
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r3, #4352
	mov	r5, #0
	strh	r3, [r2]	@ movhi
	ldr	r3, .L50+4
	ldr	r0, .L50+8
	ldrh	ip, [r3, #48]
	ldr	r1, .L50+12
	ldr	r3, .L50+16
	strh	ip, [r0]	@ movhi
	ldr	r4, .L50+20
	strh	r5, [r3]	@ movhi
	mov	r0, #3
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #11264
	mov	r2, #100663296
	ldr	r1, .L50+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L50+28
	ldr	r1, .L50+32
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L50+36
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L50+40
	ldr	r1, .L50+44
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L50+48
	ldr	r1, .L50+52
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L50+56
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L50+60
	mov	lr, pc
	bx	r4
	ldr	r2, .L50+64
	ldr	r1, .L50+68
	ldr	r3, .L50+72
	str	r5, [r2]
	str	r5, [r1]
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L50+76
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L51:
	.align	2
.L50:
	.word	mgba_open
	.word	67109120
	.word	buttons
	.word	-27520
	.word	oldButtons
	.word	DMANow
	.word	tilesetTiles
	.word	100704256
	.word	bathhouseMap
	.word	tilesetPal
	.word	100728832
	.word	chiriroTiles
	.word	83886592
	.word	chiriroPal
	.word	hideSprites
	.word	shadowOAM
	.word	vOff
	.word	hOff
	.word	initGame2
	.word	state
	.size	game2frame, .-game2frame
	.align	2
	.global	bh
	.syntax unified
	.arm
	.fpu softvfp
	.type	bh, %function
bh:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L61
	mov	lr, pc
	bx	r3
	ldr	r3, .L61+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L61+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L61+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L61+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L61+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L53
	ldr	r3, .L61+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L59
.L53:
	ldr	r3, .L61+28
	ldr	r3, [r3]
	cmp	r3, #2
	beq	.L60
	pop	{r4, lr}
	bx	lr
.L59:
	pop	{r4, lr}
	b	bh.part.0
.L60:
	pop	{r4, lr}
	b	game2frame
.L62:
	.align	2
.L61:
	.word	updatebh
	.word	waitForVBlank
	.word	drawbh
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.size	bh, .-bh
	.align	2
	.global	game3frame
	.syntax unified
	.arm
	.fpu softvfp
	.type	game3frame, %function
game3frame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L65
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r3, #4352
	mov	r5, #0
	strh	r3, [r2]	@ movhi
	ldr	r3, .L65+4
	ldr	r0, .L65+8
	ldrh	ip, [r3, #48]
	ldr	r1, .L65+12
	ldr	r3, .L65+16
	strh	ip, [r0]	@ movhi
	ldr	r4, .L65+20
	strh	r5, [r3]	@ movhi
	mov	r0, #3
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #11264
	mov	r2, #100663296
	ldr	r1, .L65+24
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L65+28
	ldr	r1, .L65+32
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L65+36
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L65+40
	ldr	r1, .L65+44
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L65+48
	ldr	r1, .L65+52
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L65+56
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L65+60
	mov	lr, pc
	bx	r4
	ldr	r2, .L65+64
	ldr	r1, .L65+68
	ldr	r3, .L65+72
	str	r5, [r2]
	str	r5, [r1]
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L65+76
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L66:
	.align	2
.L65:
	.word	mgba_open
	.word	67109120
	.word	buttons
	.word	-10624
	.word	oldButtons
	.word	DMANow
	.word	tilesetTiles
	.word	100708352
	.word	mazeMap
	.word	tilesetPal
	.word	100728832
	.word	chiriroTiles
	.word	83886592
	.word	chiriroPal
	.word	hideSprites
	.word	shadowOAM
	.word	vOff
	.word	hOff
	.word	initGame3
	.word	state
	.size	game3frame, .-game3frame
	.align	2
	.global	game2
	.syntax unified
	.arm
	.fpu softvfp
	.type	game2, %function
game2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L76
	mov	lr, pc
	bx	r3
	ldr	r3, .L76+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L76+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L76+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L76+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L76+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L68
	ldr	r3, .L76+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L74
.L68:
	ldr	r3, .L76+28
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L75
	pop	{r4, lr}
	bx	lr
.L74:
	pop	{r4, lr}
	b	game2.part.0
.L75:
	pop	{r4, lr}
	b	game3frame
.L77:
	.align	2
.L76:
	.word	updateGame2
	.word	waitForVBlank
	.word	drawGame2
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.size	game2, .-game2
	.align	2
	.global	game3
	.syntax unified
	.arm
	.fpu softvfp
	.type	game3, %function
game3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L87
	mov	lr, pc
	bx	r3
	ldr	r3, .L87+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L87+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L87+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L87+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L87+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L79
	ldr	r3, .L87+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L85
.L79:
	ldr	r3, .L87+28
	ldr	r3, [r3]
	cmp	r3, #4
	beq	.L86
	pop	{r4, lr}
	bx	lr
.L85:
	pop	{r4, lr}
	b	game3.part.0
.L86:
	pop	{r4, lr}
	b	game1frame
.L88:
	.align	2
.L87:
	.word	updateGame3
	.word	waitForVBlank
	.word	drawGame3
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.size	game3, .-game3
	.align	2
	.global	game4frame
	.syntax unified
	.arm
	.fpu softvfp
	.type	game4frame, %function
game4frame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L91
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r3, #4352
	mov	r5, #0
	strh	r3, [r2]	@ movhi
	ldr	r3, .L91+4
	ldr	r0, .L91+8
	ldrh	ip, [r3, #48]
	ldr	r1, .L91+12
	ldr	r3, .L91+16
	strh	ip, [r0]	@ movhi
	ldr	r4, .L91+20
	strh	r5, [r3]	@ movhi
	mov	r0, #3
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #11264
	mov	r2, #100663296
	ldr	r1, .L91+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L91+28
	ldr	r1, .L91+32
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L91+36
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L91+40
	ldr	r1, .L91+44
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L91+48
	ldr	r1, .L91+52
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L91+56
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L91+60
	mov	lr, pc
	bx	r4
	ldr	r2, .L91+64
	ldr	r1, .L91+68
	ldr	r3, .L91+72
	str	r5, [r2]
	str	r5, [r1]
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L91+76
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L92:
	.align	2
.L91:
	.word	mgba_open
	.word	67109120
	.word	buttons
	.word	-8576
	.word	oldButtons
	.word	DMANow
	.word	tilesetTiles
	.word	100724736
	.word	trainMap
	.word	tilesetPal
	.word	100728832
	.word	chiriroTiles
	.word	83886592
	.word	chiriroPal
	.word	hideSprites
	.word	shadowOAM
	.word	vOff
	.word	hOff
	.word	initGame4
	.word	state
	.size	game4frame, .-game4frame
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
	push	{r4, lr}
	ldr	r3, .L104
	mov	lr, pc
	bx	r3
	ldr	r3, .L104+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L104+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L104+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L104+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L104+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L94
	ldr	r3, .L104+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L101
.L94:
	ldr	r3, .L104+28
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L102
	cmp	r3, #5
	beq	.L103
	pop	{r4, lr}
	bx	lr
.L101:
	pop	{r4, lr}
	b	game1.part.0
.L102:
	pop	{r4, lr}
	b	bhframe
.L103:
	pop	{r4, lr}
	b	game4frame
.L105:
	.align	2
.L104:
	.word	updateGame1
	.word	waitForVBlank
	.word	drawGame1
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.size	game1, .-game1
	.align	2
	.global	game4
	.syntax unified
	.arm
	.fpu softvfp
	.type	game4, %function
game4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L113
	mov	lr, pc
	bx	r3
	ldr	r3, .L113+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L113+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L113+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L113+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L113+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L106
	ldr	r3, .L113+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L112
.L106:
	pop	{r4, lr}
	bx	lr
.L112:
	pop	{r4, lr}
	b	game4.part.0
.L114:
	.align	2
.L113:
	.word	updateGame4
	.word	waitForVBlank
	.word	drawGame4
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.size	game4, .-game4
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
	ldr	r3, .L117
	mov	lr, pc
	bx	r3
	ldr	r3, .L117+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L117+8
	mov	lr, pc
	bx	r3
	mov	r2, #7
	ldr	r3, .L117+12
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L118:
	.align	2
.L117:
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
	ldr	r3, .L131
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L131+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L120
	ldr	r2, .L131+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L129
.L120:
	tst	r3, #4
	beq	.L119
	ldr	r3, .L131+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L130
.L119:
	pop	{r4, lr}
	bx	lr
.L129:
	bl	game1frame
	ldr	r3, .L131+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L130:
	pop	{r4, lr}
	b	startframe
.L132:
	.align	2
.L131:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	initGame1
	.size	pause, .-pause
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"State: %d\012\000"
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r7, fp, lr}
	ldr	r3, .L197
	sub	sp, sp, #12
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r1, r3
	ldr	r6, .L197+4
	ldr	r9, .L197+8
	str	r3, [r6]
	ldr	r5, .L197+12
	ldr	r4, .L197+16
	ldr	fp, .L197+20
	ldr	r10, .L197+24
	ldr	r8, .L197+28
	ldr	r7, .L197+32
.L135:
	mov	r0, r8
	mov	lr, pc
	bx	r9
	ldrh	r3, [r4]
	strh	r3, [r5]	@ movhi
	ldr	r1, [r6]
	ldrh	r3, [r7, #48]
	strh	r3, [r4]	@ movhi
	cmp	r1, #7
	ldrls	pc, [pc, r1, asl #2]
	b	.L135
.L137:
	.word	.L144
	.word	.L143
	.word	.L142
	.word	.L141
	.word	.L140
	.word	.L139
	.word	.L138
	.word	.L136
.L141:
	ldr	r3, .L197+36
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	tst	r3, #4
	beq	.L153
	ldrh	r2, [r4]
	ands	r2, r2, #4
	beq	.L191
.L153:
	tst	r3, #8
	beq	.L140
	ldrh	r3, [r4]
	tst	r3, #8
	bne	.L140
	mov	r3, #3
	ldr	r2, .L197+40
	str	r3, [r2]
	ldr	r3, .L197
	mov	lr, pc
	bx	r3
	ldr	r3, .L197+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L197+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L197+52
	mov	lr, pc
	bx	r3
	mov	r3, #7
	str	r3, [r6]
.L140:
	ldr	r3, .L197+56
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	tst	r3, #4
	beq	.L154
	ldrh	r2, [r4]
	ands	r2, r2, #4
	beq	.L192
.L154:
	tst	r3, #8
	beq	.L139
	ldrh	r3, [r4]
	tst	r3, #8
	bne	.L139
	mov	r3, #4
	ldr	r2, .L197+40
	str	r3, [r2]
	ldr	r3, .L197
	mov	lr, pc
	bx	r3
	ldr	r3, .L197+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L197+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L197+52
	mov	lr, pc
	bx	r3
	mov	r3, #7
	str	r3, [r6]
.L139:
	mov	lr, pc
	bx	fp
	ldrh	r3, [r5]
	tst	r3, #4
	beq	.L155
	ldrh	r2, [r4]
	ands	r2, r2, #4
	beq	.L193
.L155:
	tst	r3, #8
	beq	.L136
	ldrh	r3, [r4]
	tst	r3, #8
	bne	.L136
	mov	r3, #5
	ldr	r2, .L197+40
	str	r3, [r2]
	ldr	r3, .L197
	mov	lr, pc
	bx	r3
	ldr	r3, .L197+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L197+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L197+52
	mov	lr, pc
	bx	r3
	mov	r3, #7
	str	r3, [r6]
.L136:
	mov	lr, pc
	bx	r10
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L145
	ldrh	r3, [r4]
	ands	r3, r3, #8
	beq	.L194
.L145:
	ldr	r1, [r6]
	b	.L135
.L138:
	ldr	r3, .L197+60
	str	r1, [sp, #4]
	mov	lr, pc
	bx	r3
	ldr	r3, .L197+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L197+52
	mov	lr, pc
	bx	r3
	mov	r3, #6
	ldrh	r2, [r5]
	tst	r2, #8
	str	r3, [r6]
	ldr	r1, [sp, #4]
	beq	.L135
	ldrh	r3, [r4]
	tst	r3, #8
	bne	.L135
	ldr	r3, .L197+64
	mov	lr, pc
	bx	r3
	mov	r1, #1
	str	r1, [r6]
	b	.L135
.L143:
	ldr	r3, .L197+68
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	tst	r3, #4
	beq	.L147
	ldrh	r2, [r4]
	ands	r2, r2, #4
	beq	.L195
.L147:
	tst	r3, #8
	beq	.L145
	ldrh	r3, [r4]
	tst	r3, #8
	moveq	r3, #1
	bne	.L145
.L190:
	ldr	r2, .L197+40
	str	r3, [r2]
	ldr	r3, .L197
	mov	lr, pc
	bx	r3
	ldr	r3, .L197+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L197+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L197+52
	mov	lr, pc
	bx	r3
	mov	r1, #7
	str	r1, [r6]
	b	.L135
.L142:
	ldr	r3, .L197+72
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	tst	r3, #4
	beq	.L150
	ldrh	r2, [r4]
	ands	r2, r2, #4
	beq	.L196
.L150:
	tst	r3, #8
	beq	.L145
	ldrh	r3, [r4]
	tst	r3, #8
	bne	.L145
	mov	r3, #2
	b	.L190
.L144:
	ldr	r3, .L197+76
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L145
	ldrh	r3, [r4]
	tst	r3, #8
	bne	.L145
	ldr	r3, .L197
	mov	lr, pc
	bx	r3
	ldr	r3, .L197+80
	mov	lr, pc
	bx	r3
	mov	r1, #6
	str	r1, [r6]
	b	.L135
.L194:
	str	r3, [sp, #4]
	ldr	r3, .L197+84
	mov	lr, pc
	bx	r3
	mov	r2, #4352
	mov	r3, #67108864
	strh	r2, [r3]	@ movhi
	ldr	r3, .L197+40
	ldrh	r2, [r7, #48]
	ldr	r1, [r3]
	ldr	r3, [sp, #4]
	strh	r2, [r4]	@ movhi
	strh	r3, [r5]	@ movhi
	str	r1, [r6]
	b	.L135
.L193:
	ldr	r3, .L197
	str	r2, [sp, #4]
	mov	lr, pc
	bx	r3
	ldr	r2, [sp, #4]
	ldrh	r3, [r5]
	str	r2, [r6]
	b	.L155
.L192:
	ldr	r3, .L197
	str	r2, [sp, #4]
	mov	lr, pc
	bx	r3
	ldr	r2, [sp, #4]
	ldrh	r3, [r5]
	str	r2, [r6]
	b	.L154
.L191:
	ldr	r3, .L197
	str	r2, [sp, #4]
	mov	lr, pc
	bx	r3
	ldr	r2, [sp, #4]
	ldrh	r3, [r5]
	str	r2, [r6]
	b	.L153
.L195:
	ldr	r3, .L197
	str	r2, [sp, #4]
	mov	lr, pc
	bx	r3
	ldr	r2, [sp, #4]
	ldrh	r3, [r5]
	str	r2, [r6]
	b	.L147
.L196:
	ldr	r3, .L197
	str	r2, [sp, #4]
	mov	lr, pc
	bx	r3
	ldr	r2, [sp, #4]
	ldrh	r3, [r5]
	str	r2, [r6]
	b	.L150
.L198:
	.align	2
.L197:
	.word	initialize4
	.word	state
	.word	mgba_printf
	.word	oldButtons
	.word	buttons
	.word	game4
	.word	pause
	.word	.LC0
	.word	67109120
	.word	game2
	.word	prevstate
	.word	pausestate
	.word	waitForVBlank
	.word	flipPages
	.word	game3
	.word	inststate
	.word	game1frame
	.word	game1
	.word	bh
	.word	startframe
	.word	inst
	.word	mgba_open
	.size	main, .-main
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	shadowOAM,1024,4
	.comm	rSeed,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.global	intro
	.comm	prevstate,4,4
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
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	intro, %object
	.size	intro, 4
intro:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
