	.text
	.global	fib
	.type fib, @function

fib:
	addi	sp, sp, -24
	sd	ra, 16(sp)
	sd	s0, 8(sp)
	addi	s0, sp, 24
	li	a1, 1
	bgt	a0, a1, L1
	j	exit

L1:
	sw	a0, -24(s0)
	addi	a0, a0, -1
	call	fib
	sw	a0, -20(s0)
	lw	a0, -24(s0)
	addi	a0, a0, -2
	call	fib
	lw	a2, -20(s0)
	add	a0, a0, a2

exit:
	ld	s0, 8(sp)
	ld	ra, 16(sp)
	addi	sp, sp, 24
	jr	ra

	.size	fib, .-fib

