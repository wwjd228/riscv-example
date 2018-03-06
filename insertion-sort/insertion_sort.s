	.text
	.global insertion_sort
	.type   insertion_sort, @function
insertion_sort:
	addi	sp, sp, -8 # prologue
	sd	s0, 0(sp)
	addi	s0, sp, 8
	addi	a3, a0, 4
	li	a4, 1
outer_loop: # for ( int i = 1 ; i < size ; i++ ) {
	bge	a4, a1, exit_outer_loop
	lw	a5, 0(a3) #     int x = a[i]
	mv	a6, a4
	mv	a2, a3
inner_loop: # for ( int j = i ; j > 0 && a[j - 1] > x ; j-- )
	addi	a2, a2, -4
	lw	a7, 0(a2)
	ble	a7, a5, exit_inner_loop
	sw	a7, 4(a2) # a[j] = a[j - 1];
	addi	a6, a6, -1
	bgtz	a6, inner_loop
exit_inner_loop:
	slli	a6, a6, 2
	add	a6, a0, a6
	sw	a5, 0(a6) # a[j] = x;
	addi	a4, a4, 1
	addi	a3, a3, 4
	j	outer_loop
exit_outer_loop:
	ld	s0, 0(sp) # epilogue
	addi	sp, sp, 8
	jr	ra
	.size	insertion_sort, .-insertion_sort
