CC	= riscv64-unknown-elf-gcc
CFLAGS	= -O0 -Wall
LDFLAGS = -fno-stack-protector

objects	= swap.o
assembly = swap.s

default: swap

.PHONY: default clean clobber

swap: $(objects)
	$(CC) -o $@ $^

swap.o: swap.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<
	$(CC) -S $(CFLAGS) $(LDFLAGS) -o $(assembly) $<

clean:
	rm -f $(objects) swap $(assembly)

spike: swap
	@sh cmd
