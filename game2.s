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
	.word	baby
	.word	hOff
	.word	vOff
	.size	initGame2, .-initGame2
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
	.size	initPlayer2, .-initPlayer2
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
	ldr	r0, .L14
	ldr	r3, .L14+4
	ldr	r2, [r0]
	ldr	r3, [r3]
	sub	r2, r2, r3
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	push	{r4, r5, r6, r7, r8, lr}
	mvn	lr, r2, lsl #17
	mvn	lr, lr, lsr #17
	ldr	ip, [r0, #28]
	cmp	ip, #2
	mov	r5, #67108864
	movne	r6, lr
	mov	r7, #0
	ldr	r1, .L14+8
	ldr	r3, [r0, #4]
	ldrh	r4, [r1]
	ldreq	r6, .L14+12
	ldr	r8, [r0, #36]
	ldr	r1, .L14+16
	orreq	r6, r2, r6
	sub	r3, r3, r4
	ldrb	r2, [r0, #44]	@ zero_extendqisi2
	ldr	r0, .L14+20
	add	ip, ip, r8, lsl #6
	and	r3, r3, #255
	orr	r3, r3, #32768
	and	ip, r0, ip, lsl #1
	lsl	r0, r2, #3
	add	r2, r1, r2, lsl #3
	strh	r6, [r1, #2]	@ movhi
	strh	r3, [r1]	@ movhi
	strh	lr, [r2, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	strh	r3, [r1, r0]	@ movhi
	strh	r7, [r5, #16]	@ movhi
	strh	r4, [r5, #18]	@ movhi
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
	.size	drawPlayer2, .-drawPlayer2
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
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r2, .L38
	ldrh	r2, [r2]
	ldr	r4, .L38+4
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
	ldr	r3, .L38+8
	ands	r1, r2, #128
	ldr	r8, [r3]
	ldr	r9, [r4, #20]
	bne	.L18
	ldr	r0, [r4, #4]
	add	ip, r0, r9
	cmp	ip, r8
	blt	.L37
.L18:
	tst	r2, #32
	ldr	r6, [r3, #4]
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
	add	r3, r5, r7
	cmp	r3, r6
	blt	.L30
.L31:
	ldr	r5, [r4]
	b	.L21
.L19:
	cmp	r1, #0
	bne	.L22
	ldr	r5, [r4]
	add	r3, r5, r7
	cmp	r3, r6
	bge	.L22
.L30:
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
	ldr	r3, .L38+12
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #10
	str	r1, [r4, #36]
	str	r3, [r4, #24]
.L24:
	ldr	r1, [r4, #4]
	sub	ip, r8, #159
	sub	r0, r1, #80
	cmp	r0, ip
	subge	r0, r8, #160
	cmp	r0, #0
	movlt	r2, #0
	ldr	r3, .L38+16
	sub	r6, r6, r7
	str	r0, [r3]
	strlt	r2, [r3]
	cmp	r6, r5
	strle	r6, [r4]
	movle	r5, r6
	mov	ip, #30
	mov	r4, #500
	mov	lr, #105
	stmib	sp, {r4, ip}
	mov	r3, r9
	mov	r2, r7
	mov	r0, r5
	str	ip, [sp, #12]
	str	lr, [sp]
	ldr	r4, .L38+20
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	movne	r2, #3
	ldrne	r3, .L38+24
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
	b	.L31
.L37:
	mov	lr, #1
	ldr	ip, [r4, #12]
	add	r0, ip, r0
	str	r1, [r4, #28]
	str	r0, [r4, #4]
	str	lr, [r4, #32]
	b	.L18
.L39:
	.align	2
.L38:
	.word	buttons
	.word	player
	.word	.LANCHOR0
	.word	__aeabi_idivmod
	.word	vOff
	.word	collision
	.word	intro
	.size	updatePlayer2, .-updatePlayer2
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
	@ link register save eliminated.
	b	updatePlayer2
	.size	updateGame2, .-updateGame2
	.align	2
	.global	drawBaby
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBaby, %function
drawBaby:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L44
	ldr	r3, .L44+4
	ldr	r2, [r1, #4]
	ldrh	r0, [r3]
	sub	r2, r2, r0
	and	r2, r2, #255
	mvn	r2, r2, lsl #17
	ldr	r3, .L44+8
	str	lr, [sp, #-4]!
	ldr	lr, [r3]
	ldr	r3, [r1]
	ldr	ip, [r1, #28]
	sub	r3, r3, lr
	lsl	r3, r3, #23
	cmp	ip, #2
	lsr	r3, r3, #23
	orreq	r3, r3, #4096
	mvn	r2, r2, lsr #17
	mvn	r3, r3, lsl #18
	ldr	r1, .L44+12
	mov	lr, #0
	strh	r2, [r1, #40]	@ movhi
	mvn	r3, r3, lsr #18
	mov	r2, #67108864
	mov	ip, #512
	strh	r3, [r1, #42]	@ movhi
	strh	lr, [r2, #16]	@ movhi
	strh	ip, [r1, #44]	@ movhi
	ldr	lr, [sp], #4
	strh	r0, [r2, #18]	@ movhi
	bx	lr
.L45:
	.align	2
.L44:
	.word	baby
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.size	drawBaby, .-drawBaby
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
	ldr	r3, .L48
	mov	lr, pc
	bx	r3
	bl	drawPlayer2
	bl	drawBaby
	ldr	r3, .L48+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L48+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L48+12
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L49:
	.align	2
.L48:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.size	drawGame2, .-drawGame2
	.align	2
	.global	initBaby
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBaby, %function
initBaby:
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
	ldr	r3, .L52
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
.L53:
	.align	2
.L52:
	.word	baby
	.size	initBaby, .-initBaby
	.global	g2sh
	.global	g2sw
	.comm	intro,4,4
	.comm	shadowOAM,1024,4
	.comm	baby,52,4
	.comm	player,52,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g2sh, %object
	.size	g2sh, 4
g2sh:
	.word	512
	.type	g2sw, %object
	.size	g2sw, 4
g2sw:
	.word	240
	.ident	"GCC: (devkitARM release 53) 9.1.0"
