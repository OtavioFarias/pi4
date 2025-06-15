
merge50.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <merge>:
   0:	fc010113          	addi	sp,sp,-64
   4:	03512223          	sw	s5,36(sp)
   8:	40b60ab3          	sub	s5,a2,a1
   c:	01812c23          	sw	s8,24(sp)
  10:	001a8c13          	addi	s8,s5,1
  14:	03212823          	sw	s2,48(sp)
  18:	03612023          	sw	s6,32(sp)
  1c:	00060913          	mv	s2,a2
  20:	40c68b33          	sub	s6,a3,a2
  24:	002c1613          	slli	a2,s8,0x2
  28:	01b12623          	sw	s11,12(sp)
  2c:	00f60713          	addi	a4,a2,15
  30:	002b1d93          	slli	s11,s6,0x2
  34:	02812c23          	sw	s0,56(sp)
  38:	03312623          	sw	s3,44(sp)
  3c:	03412423          	sw	s4,40(sp)
  40:	01712e23          	sw	s7,28(sp)
  44:	01912a23          	sw	s9,20(sp)
  48:	02112e23          	sw	ra,60(sp)
  4c:	02912a23          	sw	s1,52(sp)
  50:	01a12823          	sw	s10,16(sp)
  54:	04010413          	addi	s0,sp,64
  58:	ff077713          	andi	a4,a4,-16
  5c:	00fd8793          	addi	a5,s11,15
  60:	ff07f793          	andi	a5,a5,-16
  64:	40e10133          	sub	sp,sp,a4
  68:	00010c93          	mv	s9,sp
  6c:	40f10133          	sub	sp,sp,a5
  70:	00058993          	mv	s3,a1
  74:	00050a13          	mv	s4,a0
  78:	00010b93          	mv	s7,sp
  7c:	13805463          	blez	s8,1a4 <.L2>
  80:	00259d13          	slli	s10,a1,0x2
  84:	01a504b3          	add	s1,a0,s10
  88:	00048593          	mv	a1,s1
  8c:	000c8513          	mv	a0,s9
  90:	00000097          	auipc	ra,0x0
  94:	000080e7          	jalr	ra # 90 <merge+0x90>
  98:	13605a63          	blez	s6,1cc <.L21>
  9c:	00190593          	addi	a1,s2,1
  a0:	00259593          	slli	a1,a1,0x2
  a4:	00ba05b3          	add	a1,s4,a1
  a8:	000d8613          	mv	a2,s11
  ac:	000b8513          	mv	a0,s7
  b0:	00000097          	auipc	ra,0x0
  b4:	000080e7          	jalr	ra # b0 <merge+0xb0>
  b8:	00048593          	mv	a1,s1
  bc:	00000913          	li	s2,0
  c0:	00000493          	li	s1,0

000000c4 <.L9>:
  c4:	00291713          	slli	a4,s2,0x2
  c8:	00249793          	slli	a5,s1,0x2
  cc:	00ec8733          	add	a4,s9,a4
  d0:	00fb87b3          	add	a5,s7,a5
  d4:	00072703          	lw	a4,0(a4)
  d8:	0007a783          	lw	a5,0(a5)
  dc:	00198993          	addi	s3,s3,1
  e0:	0ae7cc63          	blt	a5,a4,198 <.L6>
  e4:	00190913          	addi	s2,s2,1
  e8:	00e5a023          	sw	a4,0(a1)

000000ec <.L7>:
  ec:	05895463          	bge	s2,s8,134 <.L16>
  f0:	00458593          	addi	a1,a1,4
  f4:	fd64c8e3          	blt	s1,s6,c4 <.L9>
  f8:	00299d13          	slli	s10,s3,0x2

000000fc <.L4>:
  fc:	01aa0533          	add	a0,s4,s10
 100:	00400613          	li	a2,4
 104:	012ac663          	blt	s5,s2,110 <.L13>
 108:	412c0633          	sub	a2,s8,s2
 10c:	00261613          	slli	a2,a2,0x2

00000110 <.L13>:
 110:	00291593          	slli	a1,s2,0x2
 114:	00bc85b3          	add	a1,s9,a1
 118:	00000097          	auipc	ra,0x0
 11c:	000080e7          	jalr	ra # 118 <.L13+0x8>
 120:	00198993          	addi	s3,s3,1
 124:	00000793          	li	a5,0
 128:	012ac463          	blt	s5,s2,130 <.L15>
 12c:	412a87b3          	sub	a5,s5,s2

00000130 <.L15>:
 130:	013789b3          	add	s3,a5,s3

00000134 <.L16>:
 134:	0364d263          	bge	s1,s6,158 <.L1>
 138:	00299513          	slli	a0,s3,0x2
 13c:	409b0633          	sub	a2,s6,s1
 140:	00249593          	slli	a1,s1,0x2
 144:	00261613          	slli	a2,a2,0x2
 148:	00bb85b3          	add	a1,s7,a1
 14c:	00aa0533          	add	a0,s4,a0
 150:	00000097          	auipc	ra,0x0
 154:	000080e7          	jalr	ra # 150 <.L16+0x1c>

00000158 <.L1>:
 158:	fc040113          	addi	sp,s0,-64
 15c:	03c12083          	lw	ra,60(sp)
 160:	03812403          	lw	s0,56(sp)
 164:	03412483          	lw	s1,52(sp)
 168:	03012903          	lw	s2,48(sp)
 16c:	02c12983          	lw	s3,44(sp)
 170:	02812a03          	lw	s4,40(sp)
 174:	02412a83          	lw	s5,36(sp)
 178:	02012b03          	lw	s6,32(sp)
 17c:	01c12b83          	lw	s7,28(sp)
 180:	01812c03          	lw	s8,24(sp)
 184:	01412c83          	lw	s9,20(sp)
 188:	01012d03          	lw	s10,16(sp)
 18c:	00c12d83          	lw	s11,12(sp)
 190:	04010113          	addi	sp,sp,64
 194:	00008067          	ret

00000198 <.L6>:
 198:	00f5a023          	sw	a5,0(a1)
 19c:	00148493          	addi	s1,s1,1
 1a0:	f4dff06f          	j	ec <.L7>

000001a4 <.L2>:
 1a4:	03605063          	blez	s6,1c4 <.L5>
 1a8:	00190593          	addi	a1,s2,1
 1ac:	00259593          	slli	a1,a1,0x2
 1b0:	000d8613          	mv	a2,s11
 1b4:	00ba05b3          	add	a1,s4,a1
 1b8:	000b8513          	mv	a0,s7
 1bc:	00000097          	auipc	ra,0x0
 1c0:	000080e7          	jalr	ra # 1bc <.L2+0x18>

000001c4 <.L5>:
 1c4:	00000493          	li	s1,0
 1c8:	f6dff06f          	j	134 <.L16>

000001cc <.L21>:
 1cc:	00000493          	li	s1,0
 1d0:	00000913          	li	s2,0
 1d4:	f29ff06f          	j	fc <.L4>

000001d8 <mergesort.part.0>:
 1d8:	fe010113          	addi	sp,sp,-32
 1dc:	00812c23          	sw	s0,24(sp)
 1e0:	40b60433          	sub	s0,a2,a1
 1e4:	40145413          	srai	s0,s0,0x1
 1e8:	00912a23          	sw	s1,20(sp)
 1ec:	01212823          	sw	s2,16(sp)
 1f0:	01312623          	sw	s3,12(sp)
 1f4:	00112e23          	sw	ra,28(sp)
 1f8:	00b40433          	add	s0,s0,a1
 1fc:	00058493          	mv	s1,a1
 200:	00060913          	mv	s2,a2
 204:	00050993          	mv	s3,a0
 208:	0285ce63          	blt	a1,s0,244 <.L26>
 20c:	00140593          	addi	a1,s0,1
 210:	0525c463          	blt	a1,s2,258 <.L27>

00000214 <.L24>:
 214:	00040613          	mv	a2,s0
 218:	01812403          	lw	s0,24(sp)
 21c:	01c12083          	lw	ra,28(sp)
 220:	00090693          	mv	a3,s2
 224:	00048593          	mv	a1,s1
 228:	01012903          	lw	s2,16(sp)
 22c:	01412483          	lw	s1,20(sp)
 230:	00098513          	mv	a0,s3
 234:	00c12983          	lw	s3,12(sp)
 238:	02010113          	addi	sp,sp,32
 23c:	00000317          	auipc	t1,0x0
 240:	00030067          	jr	t1 # 23c <.L24+0x28>

00000244 <.L26>:
 244:	00040613          	mv	a2,s0
 248:	00000097          	auipc	ra,0x0
 24c:	000080e7          	jalr	ra # 248 <.L26+0x4>
 250:	00140593          	addi	a1,s0,1
 254:	fd25d0e3          	bge	a1,s2,214 <.L24>

00000258 <.L27>:
 258:	00090613          	mv	a2,s2
 25c:	00098513          	mv	a0,s3
 260:	00000097          	auipc	ra,0x0
 264:	000080e7          	jalr	ra # 260 <.L27+0x8>
 268:	fadff06f          	j	214 <.L24>

0000026c <mergesort>:
 26c:	00c5c463          	blt	a1,a2,274 <.L30>
 270:	00008067          	ret

00000274 <.L30>:
 274:	00000317          	auipc	t1,0x0
 278:	00030067          	jr	t1 # 274 <.L30>

Disassembly of section .text.startup:

00000000 <main>:
   0:	000007b7          	lui	a5,0x0
   4:	f2010113          	addi	sp,sp,-224
   8:	00078793          	mv	a5,a5
   c:	0c112e23          	sw	ra,220(sp)
  10:	00c10713          	addi	a4,sp,12
  14:	0c078693          	addi	a3,a5,192 # c0 <.L32+0xa8>

00000018 <.L32>:
  18:	0007a803          	lw	a6,0(a5)
  1c:	0047a503          	lw	a0,4(a5)
  20:	0087a583          	lw	a1,8(a5)
  24:	00c7a603          	lw	a2,12(a5)
  28:	01072023          	sw	a6,0(a4)
  2c:	00a72223          	sw	a0,4(a4)
  30:	00b72423          	sw	a1,8(a4)
  34:	00c72623          	sw	a2,12(a4)
  38:	01078793          	addi	a5,a5,16
  3c:	01070713          	addi	a4,a4,16
  40:	fcd79ce3          	bne	a5,a3,18 <.L32>
  44:	0007a783          	lw	a5,0(a5)
  48:	00c10513          	addi	a0,sp,12
  4c:	03100613          	li	a2,49
  50:	00000593          	li	a1,0
  54:	00f72023          	sw	a5,0(a4)
  58:	00000097          	auipc	ra,0x0
  5c:	000080e7          	jalr	ra # 58 <.L32+0x40>
  60:	0dc12083          	lw	ra,220(sp)
  64:	00000513          	li	a0,0
  68:	0e010113          	addi	sp,sp,224
  6c:	00008067          	ret
