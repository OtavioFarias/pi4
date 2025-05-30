
mergeStall.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <merge>:
   0:	00000097          	auipc	ra,0x0
   4:	000080e7          	jalr	ra # 0 <merge>
   8:	fa010113          	addi	sp,sp,-96
   c:	04812e23          	sw	s0,92(sp)
  10:	05212c23          	sw	s2,88(sp)
  14:	05312a23          	sw	s3,84(sp)
  18:	05412823          	sw	s4,80(sp)
  1c:	05512623          	sw	s5,76(sp)
  20:	05612423          	sw	s6,72(sp)
  24:	05712223          	sw	s7,68(sp)
  28:	06010413          	addi	s0,sp,96
  2c:	faa42623          	sw	a0,-84(s0)
  30:	fab42423          	sw	a1,-88(s0)
  34:	fac42223          	sw	a2,-92(s0)
  38:	fad42023          	sw	a3,-96(s0)
  3c:	00010693          	mv	a3,sp
  40:	00068593          	mv	a1,a3
  44:	fa442603          	lw	a2,-92(s0)
  48:	fa842683          	lw	a3,-88(s0)
  4c:	40d606b3          	sub	a3,a2,a3
  50:	00168693          	addi	a3,a3,1
  54:	fcd42823          	sw	a3,-48(s0)
  58:	fa042603          	lw	a2,-96(s0)
  5c:	fa442683          	lw	a3,-92(s0)
  60:	40d606b3          	sub	a3,a2,a3
  64:	fcd42623          	sw	a3,-52(s0)
  68:	fd042683          	lw	a3,-48(s0)
  6c:	fff68613          	addi	a2,a3,-1
  70:	fcc42423          	sw	a2,-56(s0)
  74:	00068613          	mv	a2,a3
  78:	00060b13          	mv	s6,a2
  7c:	00000b93          	li	s7,0
  80:	01bb5613          	srli	a2,s6,0x1b
  84:	005b9e93          	slli	t4,s7,0x5
  88:	01d66eb3          	or	t4,a2,t4
  8c:	005b1e13          	slli	t3,s6,0x5
  90:	00068613          	mv	a2,a3
  94:	00060a13          	mv	s4,a2
  98:	00000a93          	li	s5,0
  9c:	01ba5613          	srli	a2,s4,0x1b
  a0:	005a9393          	slli	t2,s5,0x5
  a4:	007663b3          	or	t2,a2,t2
  a8:	005a1313          	slli	t1,s4,0x5
  ac:	00269693          	slli	a3,a3,0x2
  b0:	00f68693          	addi	a3,a3,15
  b4:	0046d693          	srli	a3,a3,0x4
  b8:	00469693          	slli	a3,a3,0x4
  bc:	40d10133          	sub	sp,sp,a3
  c0:	00010693          	mv	a3,sp
  c4:	00368693          	addi	a3,a3,3
  c8:	0026d693          	srli	a3,a3,0x2
  cc:	00269693          	slli	a3,a3,0x2
  d0:	fcd42223          	sw	a3,-60(s0)
  d4:	fcc42683          	lw	a3,-52(s0)
  d8:	fff68613          	addi	a2,a3,-1
  dc:	fcc42023          	sw	a2,-64(s0)
  e0:	00068613          	mv	a2,a3
  e4:	00060913          	mv	s2,a2
  e8:	00000993          	li	s3,0
  ec:	01b95613          	srli	a2,s2,0x1b
  f0:	00599893          	slli	a7,s3,0x5
  f4:	011668b3          	or	a7,a2,a7
  f8:	00591813          	slli	a6,s2,0x5
  fc:	00068613          	mv	a2,a3
 100:	00060f13          	mv	t5,a2
 104:	00000f93          	li	t6,0
 108:	01bf5613          	srli	a2,t5,0x1b
 10c:	005f9793          	slli	a5,t6,0x5
 110:	00f667b3          	or	a5,a2,a5
 114:	005f1713          	slli	a4,t5,0x5
 118:	00068793          	mv	a5,a3
 11c:	00279793          	slli	a5,a5,0x2
 120:	00f78793          	addi	a5,a5,15
 124:	0047d793          	srli	a5,a5,0x4
 128:	00479793          	slli	a5,a5,0x4
 12c:	40f10133          	sub	sp,sp,a5
 130:	00010793          	mv	a5,sp
 134:	00378793          	addi	a5,a5,3
 138:	0027d793          	srli	a5,a5,0x2
 13c:	00279793          	slli	a5,a5,0x2
 140:	faf42e23          	sw	a5,-68(s0)
 144:	fc042a23          	sw	zero,-44(s0)
 148:	0400006f          	j	188 <.L2>

0000014c <.L3>:
 14c:	fa842703          	lw	a4,-88(s0)
 150:	fd442783          	lw	a5,-44(s0)
 154:	00f707b3          	add	a5,a4,a5
 158:	00279793          	slli	a5,a5,0x2
 15c:	fac42703          	lw	a4,-84(s0)
 160:	00f707b3          	add	a5,a4,a5
 164:	0007a703          	lw	a4,0(a5)
 168:	fc442683          	lw	a3,-60(s0)
 16c:	fd442783          	lw	a5,-44(s0)
 170:	00279793          	slli	a5,a5,0x2
 174:	00f687b3          	add	a5,a3,a5
 178:	00e7a023          	sw	a4,0(a5)
 17c:	fd442783          	lw	a5,-44(s0)
 180:	00178793          	addi	a5,a5,1
 184:	fcf42a23          	sw	a5,-44(s0)

00000188 <.L2>:
 188:	fd442703          	lw	a4,-44(s0)
 18c:	fd042783          	lw	a5,-48(s0)
 190:	faf74ee3          	blt	a4,a5,14c <.L3>
 194:	fc042c23          	sw	zero,-40(s0)
 198:	0440006f          	j	1dc <.L4>

0000019c <.L5>:
 19c:	fa442783          	lw	a5,-92(s0)
 1a0:	00178713          	addi	a4,a5,1
 1a4:	fd842783          	lw	a5,-40(s0)
 1a8:	00f707b3          	add	a5,a4,a5
 1ac:	00279793          	slli	a5,a5,0x2
 1b0:	fac42703          	lw	a4,-84(s0)
 1b4:	00f707b3          	add	a5,a4,a5
 1b8:	0007a703          	lw	a4,0(a5)
 1bc:	fbc42683          	lw	a3,-68(s0)
 1c0:	fd842783          	lw	a5,-40(s0)
 1c4:	00279793          	slli	a5,a5,0x2
 1c8:	00f687b3          	add	a5,a3,a5
 1cc:	00e7a023          	sw	a4,0(a5)
 1d0:	fd842783          	lw	a5,-40(s0)
 1d4:	00178793          	addi	a5,a5,1
 1d8:	fcf42c23          	sw	a5,-40(s0)

000001dc <.L4>:
 1dc:	fd842703          	lw	a4,-40(s0)
 1e0:	fcc42783          	lw	a5,-52(s0)
 1e4:	faf74ce3          	blt	a4,a5,19c <.L5>
 1e8:	fc042a23          	sw	zero,-44(s0)
 1ec:	fc042c23          	sw	zero,-40(s0)
 1f0:	fa842783          	lw	a5,-88(s0)
 1f4:	fcf42e23          	sw	a5,-36(s0)
 1f8:	0a40006f          	j	29c <.L6>

000001fc <.L9>:
 1fc:	fc442703          	lw	a4,-60(s0)
 200:	fd442783          	lw	a5,-44(s0)
 204:	00279793          	slli	a5,a5,0x2
 208:	00f707b3          	add	a5,a4,a5
 20c:	0007a703          	lw	a4,0(a5)
 210:	fbc42683          	lw	a3,-68(s0)
 214:	fd842783          	lw	a5,-40(s0)
 218:	00279793          	slli	a5,a5,0x2
 21c:	00f687b3          	add	a5,a3,a5
 220:	0007a783          	lw	a5,0(a5)
 224:	04e7c063          	blt	a5,a4,264 <.L7>
 228:	fd442783          	lw	a5,-44(s0)
 22c:	00178713          	addi	a4,a5,1
 230:	fce42a23          	sw	a4,-44(s0)
 234:	fdc42703          	lw	a4,-36(s0)
 238:	00170693          	addi	a3,a4,1
 23c:	fcd42e23          	sw	a3,-36(s0)
 240:	00271713          	slli	a4,a4,0x2
 244:	fac42683          	lw	a3,-84(s0)
 248:	00e68733          	add	a4,a3,a4
 24c:	fc442683          	lw	a3,-60(s0)
 250:	00279793          	slli	a5,a5,0x2
 254:	00f687b3          	add	a5,a3,a5
 258:	0007a783          	lw	a5,0(a5)
 25c:	00f72023          	sw	a5,0(a4)
 260:	03c0006f          	j	29c <.L6>

00000264 <.L7>:
 264:	fd842783          	lw	a5,-40(s0)
 268:	00178713          	addi	a4,a5,1
 26c:	fce42c23          	sw	a4,-40(s0)
 270:	fdc42703          	lw	a4,-36(s0)
 274:	00170693          	addi	a3,a4,1
 278:	fcd42e23          	sw	a3,-36(s0)
 27c:	00271713          	slli	a4,a4,0x2
 280:	fac42683          	lw	a3,-84(s0)
 284:	00e68733          	add	a4,a3,a4
 288:	fbc42683          	lw	a3,-68(s0)
 28c:	00279793          	slli	a5,a5,0x2
 290:	00f687b3          	add	a5,a3,a5
 294:	0007a783          	lw	a5,0(a5)
 298:	00f72023          	sw	a5,0(a4)

0000029c <.L6>:
 29c:	fd442703          	lw	a4,-44(s0)
 2a0:	fd042783          	lw	a5,-48(s0)
 2a4:	04f75663          	bge	a4,a5,2f0 <.L10>
 2a8:	fd842703          	lw	a4,-40(s0)
 2ac:	fcc42783          	lw	a5,-52(s0)
 2b0:	f4f746e3          	blt	a4,a5,1fc <.L9>
 2b4:	03c0006f          	j	2f0 <.L10>

000002b8 <.L11>:
 2b8:	fd442783          	lw	a5,-44(s0)
 2bc:	00178713          	addi	a4,a5,1
 2c0:	fce42a23          	sw	a4,-44(s0)
 2c4:	fdc42703          	lw	a4,-36(s0)
 2c8:	00170693          	addi	a3,a4,1
 2cc:	fcd42e23          	sw	a3,-36(s0)
 2d0:	00271713          	slli	a4,a4,0x2
 2d4:	fac42683          	lw	a3,-84(s0)
 2d8:	00e68733          	add	a4,a3,a4
 2dc:	fc442683          	lw	a3,-60(s0)
 2e0:	00279793          	slli	a5,a5,0x2
 2e4:	00f687b3          	add	a5,a3,a5
 2e8:	0007a783          	lw	a5,0(a5)
 2ec:	00f72023          	sw	a5,0(a4)

000002f0 <.L10>:
 2f0:	fd442703          	lw	a4,-44(s0)
 2f4:	fd042783          	lw	a5,-48(s0)
 2f8:	fcf740e3          	blt	a4,a5,2b8 <.L11>
 2fc:	03c0006f          	j	338 <.L12>

00000300 <.L13>:
 300:	fd842783          	lw	a5,-40(s0)
 304:	00178713          	addi	a4,a5,1
 308:	fce42c23          	sw	a4,-40(s0)
 30c:	fdc42703          	lw	a4,-36(s0)
 310:	00170693          	addi	a3,a4,1
 314:	fcd42e23          	sw	a3,-36(s0)
 318:	00271713          	slli	a4,a4,0x2
 31c:	fac42683          	lw	a3,-84(s0)
 320:	00e68733          	add	a4,a3,a4
 324:	fbc42683          	lw	a3,-68(s0)
 328:	00279793          	slli	a5,a5,0x2
 32c:	00f687b3          	add	a5,a3,a5
 330:	0007a783          	lw	a5,0(a5)
 334:	00f72023          	sw	a5,0(a4)

00000338 <.L12>:
 338:	fd842703          	lw	a4,-40(s0)
 33c:	fcc42783          	lw	a5,-52(s0)
 340:	fcf740e3          	blt	a4,a5,300 <.L13>
 344:	00058113          	mv	sp,a1
 348:	00000013          	nop
 34c:	fa040113          	addi	sp,s0,-96
 350:	05c12403          	lw	s0,92(sp)
 354:	05812903          	lw	s2,88(sp)
 358:	05412983          	lw	s3,84(sp)
 35c:	05012a03          	lw	s4,80(sp)
 360:	04c12a83          	lw	s5,76(sp)
 364:	04812b03          	lw	s6,72(sp)
 368:	04412b83          	lw	s7,68(sp)
 36c:	06010113          	addi	sp,sp,96
 370:	00008067          	ret

00000374 <mergesort>:
 374:	fd010113          	addi	sp,sp,-48
 378:	02112623          	sw	ra,44(sp)
 37c:	02812423          	sw	s0,40(sp)
 380:	03010413          	addi	s0,sp,48
 384:	fca42e23          	sw	a0,-36(s0)
 388:	fcb42c23          	sw	a1,-40(s0)
 38c:	fcc42a23          	sw	a2,-44(s0)
 390:	fd842703          	lw	a4,-40(s0)
 394:	fd442783          	lw	a5,-44(s0)
 398:	06f75a63          	bge	a4,a5,40c <.L16> a4 = 0, a5 = 3 --> a4 = 3, a5 = 0 --> a5 = 3 - 0 = 3 --> a4 = 0 --> a5 = 2
 39c:	fd442703          	lw	a4,-44(s0)
 3a0:	fd842783          	lw	a5,-40(s0)
 3a4:	40f707b3          	sub	a5,a4,a5
 3a8:	01f7d713          	srli	a4,a5,0x1f
 3ac:	00f707b3          	add	a5,a4,a5
 3b0:	4017d793          	srai	a5,a5,0x1
 3b4:	00078713          	mv	a4,a5
 3b8:	fd842783          	lw	a5,-40(s0)
 3bc:	00e787b3          	add	a5,a5,a4
 3c0:	fef42623          	sw	a5,-20(s0)
 3c4:	fec42603          	lw	a2,-20(s0)
 3c8:	fd842583          	lw	a1,-40(s0)
 3cc:	fdc42503          	lw	a0,-36(s0)
 3d0:	00000097          	auipc	ra,0x0
 3d4:	000080e7          	jalr	ra # 3d0 <mergesort+0x5c>
 3d8:	fec42783          	lw	a5,-20(s0)
 3dc:	00178793          	addi	a5,a5,1
 3e0:	fd442603          	lw	a2,-44(s0)
 3e4:	00078593          	mv	a1,a5
 3e8:	fdc42503          	lw	a0,-36(s0)
 3ec:	00000097          	auipc	ra,0x0
 3f0:	000080e7          	jalr	ra # 3ec <mergesort+0x78>
 3f4:	fd442683          	lw	a3,-44(s0)
 3f8:	fec42603          	lw	a2,-20(s0)
 3fc:	fd842583          	lw	a1,-40(s0)
 400:	fdc42503          	lw	a0,-36(s0)
 404:	00000097          	auipc	ra,0x0
 408:	000080e7          	jalr	ra # 404 <mergesort+0x90>

0000040c <.L16>:
 40c:	00000013          	nop
 410:	02c12083          	lw	ra,44(sp)
 414:	02812403          	lw	s0,40(sp)
 418:	03010113          	addi	sp,sp,48
 41c:	00008067          	ret

00000420 <main>:
 420:	fe010113          	addi	sp,sp,-32
 424:	00112e23          	sw	ra,28(sp)
 428:	00812c23          	sw	s0,24(sp)
 42c:	02010413          	addi	s0,sp,32
 430:	000007b7          	lui	a5,0x0
 434:	00078793          	mv	a5,a5
 438:	0007a603          	lw	a2,0(a5) # 0 <merge>
 43c:	0047a683          	lw	a3,4(a5)
 440:	0087a703          	lw	a4,8(a5)
 444:	00c7a783          	lw	a5,12(a5)
 448:	fec42023          	sw	a2,-32(s0)
 44c:	fed42223          	sw	a3,-28(s0)
 450:	fee42423          	sw	a4,-24(s0)
 454:	fef42623          	sw	a5,-20(s0)
 458:	fe040793          	addi	a5,s0,-32
 45c:	00300613          	li	a2,3
 460:	00000593          	li	a1,0
 464:	00078513          	mv	a0,a5
 468:	00000097          	auipc	ra,0x0
 46c:	000080e7          	jalr	ra # 468 <main+0x48>
 470:	00000793          	li	a5,0
 474:	00078513          	mv	a0,a5
 478:	01c12083          	lw	ra,28(sp)
 47c:	01812403          	lw	s0,24(sp)
 480:	02010113          	addi	sp,sp,32
 484:	00008067          	ret
