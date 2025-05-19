	.file	"mergesort.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	merge
	.type	merge, @function
merge:
	addi	sp,sp,-64
	sw	s5,36(sp)
	sub	s5,a2,a1
	sw	s8,24(sp)
	addi	s8,s5,1
	sw	s2,48(sp)
	sw	s6,32(sp)
	mv	s2,a2
	sub	s6,a3,a2
	slli	a2,s8,2
	sw	s11,12(sp)
	addi	a4,a2,15
	slli	s11,s6,2
	sw	s0,56(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s7,28(sp)
	sw	s9,20(sp)
	sw	ra,60(sp)
	sw	s1,52(sp)
	sw	s10,16(sp)
	addi	s0,sp,64
	andi	a4,a4,-16
	addi	a5,s11,15
	andi	a5,a5,-16
	sub	sp,sp,a4
	mv	s9,sp
	sub	sp,sp,a5
	mv	s3,a1
	mv	s4,a0
	mv	s7,sp
	ble	s8,zero,.L2
	slli	s10,a1,2
	add	s1,a0,s10
	mv	a1,s1
	mv	a0,s9
	call	memcpy
	ble	s6,zero,.L21
	addi	a1,s2,1
	slli	a1,a1,2
	add	a1,s4,a1
	mv	a2,s11
	mv	a0,s7
	call	memcpy
	mv	a1,s1
	li	s2,0
	li	s1,0
.L9:
	slli	a4,s2,2
	slli	a5,s1,2
	add	a4,s9,a4
	add	a5,s7,a5
	lw	a4,0(a4)
	lw	a5,0(a5)
	addi	s3,s3,1
	bgt	a4,a5,.L6
	addi	s2,s2,1
	sw	a4,0(a1)
.L7:
	ble	s8,s2,.L16
	addi	a1,a1,4
	blt	s1,s6,.L9
	slli	s10,s3,2
.L4:
	add	a0,s4,s10
	li	a2,4
	blt	s5,s2,.L13
	sub	a2,s8,s2
	slli	a2,a2,2
.L13:
	slli	a1,s2,2
	add	a1,s9,a1
	call	memcpy
	addi	s3,s3,1
	li	a5,0
	blt	s5,s2,.L15
	sub	a5,s5,s2
.L15:
	add	s3,a5,s3
.L16:
	bge	s1,s6,.L1
	slli	a0,s3,2
	sub	a2,s6,s1
	slli	a1,s1,2
	slli	a2,a2,2
	add	a1,s7,a1
	add	a0,s4,a0
	call	memcpy
.L1:
	addi	sp,s0,-64
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	lw	s2,48(sp)
	lw	s3,44(sp)
	lw	s4,40(sp)
	lw	s5,36(sp)
	lw	s6,32(sp)
	lw	s7,28(sp)
	lw	s8,24(sp)
	lw	s9,20(sp)
	lw	s10,16(sp)
	lw	s11,12(sp)
	addi	sp,sp,64
	jr	ra
.L6:
	sw	a5,0(a1)
	addi	s1,s1,1
	j	.L7
.L2:
	ble	s6,zero,.L5
	addi	a1,s2,1
	slli	a1,a1,2
	mv	a2,s11
	add	a1,s4,a1
	mv	a0,s7
	call	memcpy
.L5:
	li	s1,0
	j	.L16
.L21:
	li	s1,0
	li	s2,0
	j	.L4
	.size	merge, .-merge
	.align	2
	.type	mergesort.part.0, @function
mergesort.part.0:
	addi	sp,sp,-32
	sw	s0,24(sp)
	sub	s0,a2,a1
	srai	s0,s0,1
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	add	s0,s0,a1
	mv	s1,a1
	mv	s2,a2
	mv	s3,a0
	blt	a1,s0,.L26
	addi	a1,s0,1
	bgt	s2,a1,.L27
.L24:
	mv	a2,s0
	lw	s0,24(sp)
	lw	ra,28(sp)
	mv	a3,s2
	mv	a1,s1
	lw	s2,16(sp)
	lw	s1,20(sp)
	mv	a0,s3
	lw	s3,12(sp)
	addi	sp,sp,32
	tail	merge
.L26:
	mv	a2,s0
	call	mergesort.part.0
	addi	a1,s0,1
	ble	s2,a1,.L24
.L27:
	mv	a2,s2
	mv	a0,s3
	call	mergesort.part.0
	j	.L24
	.size	mergesort.part.0, .-mergesort.part.0
	.align	2
	.globl	mergesort
	.type	mergesort, @function
mergesort:
	blt	a1,a2,.L30
	ret
.L30:
	tail	mergesort.part.0
	.size	mergesort, .-mergesort
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
	lui	a5,%hi(.LANCHOR0)
	addi	sp,sp,-224
	addi	a5,a5,%lo(.LANCHOR0)
	sw	ra,220(sp)
	addi	a4,sp,8
	addi	a3,a5,200
.L32:
	lw	a7,0(a5)
	lw	a6,4(a5)
	lw	a0,8(a5)
	lw	a1,12(a5)
	lw	a2,16(a5)
	sw	a7,0(a4)
	sw	a6,4(a4)
	sw	a0,8(a4)
	sw	a1,12(a4)
	sw	a2,16(a4)
	addi	a5,a5,20
	addi	a4,a4,20
	bne	a5,a3,.L32
	addi	a0,sp,8
	li	a2,49
	li	a1,0
	call	mergesort.part.0
	lw	ra,220(sp)
	li	a0,0
	addi	sp,sp,224
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.word	23
	.word	43
	.word	49
	.word	12
	.word	17
	.word	14
	.word	13
	.word	34
	.word	3
	.word	22
	.word	15
	.word	27
	.word	39
	.word	1
	.word	45
	.word	44
	.word	28
	.word	21
	.word	4
	.word	42
	.word	19
	.word	36
	.word	2
	.word	35
	.word	6
	.word	18
	.word	26
	.word	48
	.word	32
	.word	41
	.word	50
	.word	20
	.word	8
	.word	5
	.word	47
	.word	16
	.word	10
	.word	38
	.word	25
	.word	33
	.word	7
	.word	31
	.word	46
	.word	24
	.word	11
	.word	9
	.word	29
	.word	37
	.word	30
	.word	40
	.ident	"GCC: () 10.2.0"
