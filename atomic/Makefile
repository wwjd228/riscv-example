CC	= riscv64-unknown-linux-gnu-gcc
CFLAGS	= -O1 -ggdb -Wall -pthread -static
LDFLAGS = -fno-stack-protector

objects	= atomic.o test-and-set.o

default: atomic

.PHONY: default clean clobber

atomic: $(objects)
	$(CC) $(CFLAGS) -o $@ $^

atomic.o: atomic.c
mutex.o: test-and-set.s

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

%.o: %.s
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

clean:
	rm -f $(objects) atomic

qemu: atomic
	@sh cmd
