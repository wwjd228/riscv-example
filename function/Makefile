CC	= riscv64-unknown-elf-gcc
CFLAGS	= -O0 -Wall
LDFLAGS = -fno-stack-protector

objects	= function.o
assembly = function.s

default: function

.PHONY: default clean clobber

function: $(objects)
	$(CC) -o $@ $^

function.o: function.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<
	$(CC) -S $(CFLAGS) $(LDFLAGS) -o $(assembly) $<

clean:
	rm -f $(objects) function $(assembly)

spike: function
	@sh cmd
