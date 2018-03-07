	.text
	.global insertion_sort
	.type   insertion_sort, @function
insertion_sort:
	c.addi	sp, -8 # prologue
	sd	s0, 0(sp)
	addi	s0, sp, 8
	addi	a3, a0, 4
	li	a4, 1
outer_loop: # for ( int i = 1 ; i < size ; i++ ) {
	bge	a4, a1, exit_outer_loop
	lw	a5, 0(a3) #     int x = a[i]
	c.mv	a6, a4
	c.mv	a2, a3
inner_loop: # for ( int j = i ; j > 0 && a[j - 1] > x ; j-- )
	c.addi	a2, -4
	lw	a7, 0(a2)
	ble	a7, a5, exit_inner_loop
	sw	a7, 4(a2) # a[j] = a[j - 1];
	c.addi	a6, -1
	bgtz	a6, inner_loop
exit_inner_loop:
	c.slli	a6, 2
	c.add	a6, a0
	sw	a5, 0(a6) # a[j] = x;
	c.addi	a4, 1
	c.addi	a3, 4
	c.j	outer_loop
exit_outer_loop:
	ld	s0, 0(sp) # epilogue
	c.addi	sp, 8
	jr	ra
	.size	insertion_sort, .-insertion_sort
