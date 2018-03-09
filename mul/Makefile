CC	= riscv64-unknown-elf-gcc
CFLAGS	= -O0 -Wall -march=rv64imafdc
LDFLAGS = -fno-stack-protector

objects	= mul.o
assembly = mul.s

default: mul

.PHONY: default clean clobber

mul: $(objects)
	$(CC) -o $@ $^

mul.o: mul.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<
	$(CC) -S $(CFLAGS) $(LDFLAGS) -o $(assembly) $<

clean:
	rm -f $(objects) mul $(assembly)

spike: mul
	@sh cmd
