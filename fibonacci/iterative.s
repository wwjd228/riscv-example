	.text
	.global	fib
	.type	fib, @function

fib:
	addi	sp, sp, -8
	sd	s0, 0(sp)
	mv	a1, x0
	li	a2, 1
	addi	a3, a0, -1
	blez	a0, exit
L1:
	add	a0, a2, a1
	mv	a1, a2
	mv	a2, a0
	addi	a3, a3, -1
	bgtz	a3, L1
exit:
	ld	s0, 0(sp)
	addi	sp, sp, 8
	jr 	ra

	.size	fib, .-fib
