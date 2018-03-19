CC	= riscv64-unknown-linux-gnu-gcc
CFLAGS	= -O1 -ggdb -Wall -pthread -static
LDFLAGS = -fno-stack-protector

tas = atomic.o test-and-set.o
cas = atomic.o compare-and-swap.o
target = atomic

default: tas

.PHONY: default clean clobber

tas: $(tas)
	$(CC) $(CFLAGS) -o $(target) $^

cas: $(cas)
	$(CC) $(CFLAGS) -o $(target) $^

tas.o: test-and-set.s
cas.o: compare-and-swap.s
atomic.o: atomic.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

%.o: %.s
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

clean:
	rm -f $(tas) $(cas) atomic

qemu: atomic
	@sh cmd
