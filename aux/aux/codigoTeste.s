lui x15, 0x0
addi x2, x2, -224
addi x15, x15, 800
sw x1, 220(x2)
addi x14, x2, 8
addi x13, x15, 200
lw x17, 0(x15)
lw x16, 4(x15)
lw x10, 8(x15)
lw x11, 12(x15)
lw x12, 16(x15)
sw x17, 0(x14)
sw x16, 4(x14)
sw x10, 8(x14)
sw x11, 12(x14)
sw x12, 16(x14)
addi x15, x15, 20
addi x14, x14, 20
blt x15, x13, 0x218 #bne x15, x13, 0x218
addi x10, x2, 8
lui x12, 0x0
addi x12, x12, 49
lui x11, 0x0
addi x11, x11, 0
auipc x6, 0x0
jalr x1, 920(x6)
lw x1, 220(x2)
lui x10, 0x0
addi x10, x10, 0
addi x2, x2, 224
jal x0, 0x6a4
addi x2, x2, -96
sw x8, 92(x2)
sw x18, 88(x2)
sw x19, 84(x2)
sw x20, 80(x2)
sw x21, 76(x2)
sw x22, 72(x2)
sw x23, 68(x2)
addi x8, x2, 96
sw x10, -84(x8)
sw x11, -88(x8)
sw x12, -92(x8)
sw x13, -96(x8)
addi x13, x2, 0
addi x11, x13, 0
lw x12, -92(x8)
lw x13, -88(x8)
sltu x13, x12, x13 #sub x13, x12, x13
addi x13, x13, 1
sw x13, -48(x8)
lw x12, -96(x8)
lw x13, -92(x8)
sltu x13, x12, x13 #sub x13, x12, x13
sw x13, -52(x8)
lw x13, -48(x8)
addi x12, x13, -1
sw x12, -56(x8)
addi x12, x13, 0
addi x22, x12, 0
lui x23, 0x0
addi x23, x23, 0
srli x12, x22, 0x1b
slli x29, x23, 0x5
or x29, x12, x29
slli x28, x22, 0x5
addi x12, x13, 0
addi x20, x12, 0
lui x21, 0x0
addi x21, x21, 0
srli x12, x20, 0x1b
slli x7, x21, 0x5
or x7, x12, x7
slli x6, x20, 0x5
slli x13, x13, 0x2
addi x13, x13, 15
srli x13, x13, 0x4
slli x13, x13, 0x4
sltu x2, x2, x13 #sub x2, x2, x13
addi x13, x2, 0
addi x13, x13, 3
srli x13, x13, 0x2
slli x13, x13, 0x2
sw x13, -60(x8)
lw x13, -52(x8)
addi x12, x13, -1
sw x12, -64(x8)
addi x12, x13, 0
addi x18, x12, 0
lui x19, 0x0
addi x19, x19, 0
srli x12, x18, 0x1b
slli x17, x19, 0x5
or x17, x12, x17
slli x16, x18, 0x5
addi x12, x13, 0
addi x30, x12, 0
lui x31, 0x0
addi x31, x31, 0
srli x12, x30, 0x1b
slli x15, x31, 0x5
or x15, x12, x15
slli x14, x30, 0x5
addi x15, x13, 0
slli x15, x15, 0x2
addi x15, x15, 15
srli x15, x15, 0x4
slli x15, x15, 0x4
sltu x2, x2, x15 #sub x2, x2, x15
addi x15, x2, 0
addi x15, x15, 3
srli x15, x15, 0x2
slli x15, x15, 0x2
sw x15, -68(x8)
sw x0, -44(x8)
jal x0, 0x40c
lw x14, -88(x8)
lw x15, -44(x8)
add x15, x14, x15
slli x15, x15, 0x2
lw x14, -84(x8)
add x15, x14, x15
lw x14, 0(x15)
lw x13, -60(x8)
lw x15, -44(x8)
slli x15, x15, 0x2
add x15, x13, x15
sw x14, 0(x15)
lw x15, -44(x8)
addi x15, x15, 1
sw x15, -44(x8)
lw x14, -44(x8)
lw x15, -48(x8)
blt x14, x15, 0x3d0
sw x0, -40(x8)
jal x0, 0x460
lw x15, -92(x8)
addi x14, x15, 1
lw x15, -40(x8)
add x15, x14, x15
slli x15, x15, 0x2
lw x14, -84(x8)
add x15, x14, x15
lw x14, 0(x15)
lw x13, -68(x8)
lw x15, -40(x8)
slli x15, x15, 0x2
add x15, x13, x15
sw x14, 0(x15)
lw x15, -40(x8)
addi x15, x15, 1
sw x15, -40(x8)
lw x14, -40(x8)
lw x15, -52(x8)
blt x14, x15, 0x420
sw x0, -44(x8)
sw x0, -40(x8)
lw x15, -88(x8)
sw x15, -36(x8)
jal x0, 0x520
lw x14, -60(x8)
lw x15, -44(x8)
slli x15, x15, 0x2
add x15, x14, x15
lw x14, 0(x15)
lw x13, -68(x8)
lw x15, -40(x8)
slli x15, x15, 0x2
add x15, x13, x15
lw x15, 0(x15)
blt x15, x14, 0x4e8
lw x15, -44(x8)
addi x14, x15, 1
sw x14, -44(x8)
lw x14, -36(x8)
addi x13, x14, 1
sw x13, -36(x8)
slli x14, x14, 0x2
lw x13, -84(x8)
add x14, x13, x14
lw x13, -60(x8)
slli x15, x15, 0x2
add x15, x13, x15
lw x15, 0(x15)
sw x15, 0(x14)
jal x0, 0x520
lw x15, -40(x8)
addi x14, x15, 1
sw x14, -40(x8)
lw x14, -36(x8)
addi x13, x14, 1
sw x13, -36(x8)
slli x14, x14, 0x2
lw x13, -84(x8)
add x14, x13, x14
lw x13, -68(x8)
slli x15, x15, 0x2
add x15, x13, x15
lw x15, 0(x15)
sw x15, 0(x14)
lw x14, -44(x8)
lw x15, -48(x8)
blt x15, x14, 0x574 #bge x14, x15, 0x574
lw x14, -40(x8)
lw x15, -52(x8)
blt x14, x15, 0x480
jal x0, 0x574
lw x15, -44(x8)
addi x14, x15, 1
sw x14, -44(x8)
lw x14, -36(x8)
addi x13, x14, 1
sw x13, -36(x8)
slli x14, x14, 0x2
lw x13, -84(x8)
add x14, x13, x14
lw x13, -60(x8)
slli x15, x15, 0x2
add x15, x13, x15
lw x15, 0(x15)
sw x15, 0(x14)
lw x14, -44(x8)
lw x15, -48(x8)
blt x14, x15, 0x53c
jal x0, 0x5bc
lw x15, -40(x8)
addi x14, x15, 1
sw x14, -40(x8)
lw x14, -36(x8)
addi x13, x14, 1
sw x13, -36(x8)
slli x14, x14, 0x2
lw x13, -84(x8)
add x14, x13, x14
lw x13, -68(x8)
slli x15, x15, 0x2
add x15, x13, x15
lw x15, 0(x15)
sw x15, 0(x14)
lw x14, -40(x8)
lw x15, -52(x8)
blt x14, x15, 0x584
addi x2, x11, 0
nop
addi x2, x8, -96
lw x8, 92(x2)
lw x18, 88(x2)
lw x19, 84(x2)
lw x20, 80(x2)
lw x21, 76(x2)
lw x22, 72(x2)
lw x23, 68(x2)
addi x2, x2, 96
jalr x0, 0(x1)
addi x2, x2, -48
sw x1, 44(x2)
sw x8, 40(x2)
addi x8, x2, 48
sw x10, -36(x8)
sw x11, -40(x8)
sw x12, -44(x8)
lw x14, -40(x8)
lw x15, -44(x8)
blt x15, x14, 0x690 #bge x14, x15, 0x690
lw x14, -44(x8)
lw x15, -40(x8)
sltu x15, x14, x15 #sub x15, x14, x15
srli x14, x15, 0x1f
add x15, x14, x15
srai x15, x15, 0x1 #precisa mudar manual
addi x14, x15, 0
lw x15, -40(x8)
add x15, x15, x14
sw x15, -20(x8)
lw x12, -20(x8)
lw x11, -40(x8)
lw x10, -36(x8)
auipc x6, 0x0
jalr x1, -92(x6)
lw x15, -20(x8)
addi x15, x15, 1
lw x12, -44(x8)
addi x11, x15, 0
lw x10, -36(x8)
auipc x6, 0x0
jalr x1, -120(x6)
lw x13, -44(x8)
lw x12, -20(x8)
lw x11, -40(x8)
lw x10, -36(x8)
auipc x6, 0x0
jalr x1, -1036(x6)
nop
lw x1, 44(x2)
lw x8, 40(x2)
addi x2, x2, 48
jalr x0, 0(x1)
