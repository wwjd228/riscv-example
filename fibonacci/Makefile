CC	= riscv64-unknown-elf-gcc
CFLAGS	= -O0 -ggdb -Wall
LDFLAGS = -fno-stack-protector

recursive = fibonacci.o recursive.o
iterative = fibonacci.o iterative.o
target = fibonacci

default: recursive

.PHONY: default clean clobber

recursive: $(recursive)
	$(CC) -o $(target) $^

iterative: $(iterative)
	$(CC) -o $(target) $^

recursive.o: recursive.s
iterative.o: iterative.s
fibonacci.o: fibonacci.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

%.o: %.s
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

clean:
	rm -f $(recursive) $(iterative) fibonacci

spike: fibonacci
	@sh cmd
