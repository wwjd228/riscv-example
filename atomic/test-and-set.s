	.text
	.global	lock_mutex
	.type	lock_mutex, @function

lock_mutex:
	addi		sp, sp, -8
	sd		s0, 0(sp)
	addi		s0, sp, 8
	li		t0, 1 # load lock value
again:
	amoswap.w.aq	t1, t0, (a0)
	bnez		t1, again
	ld		s0, 0(sp)
	addi		sp, sp, 8
	jr		ra

	.size		lock_mutex, .-lock_mutex

	.global	unlock_mutex
	.type	unlock_mutex, @function
unlock_mutex:
	addi		sp, sp, -8
	sd		s0, 0(sp)
	addi		s0, sp, 8
	sw		x0, 0(a0)
	ld		s0, 0(sp)
	addi		sp, sp, 8
	jr		ra

	.size		unlock_mutex, .-unlock_mutex
