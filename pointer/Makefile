CC	= riscv64-unknown-elf-gcc
CFLAGS	= -O0 -Wall
LDFLAGS = -fno-stack-protector

objects	= pointer.o
assembly = pointer.s

default: pointer

.PHONY: default clean clobber

pointer: $(objects)
	$(CC) -o $@ $^

pointer.o: pointer.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<
	$(CC) -S $(CFLAGS) $(LDFLAGS) -o $(assembly) $<

clean:
	rm -f $(objects) pointer $(assembly)

spike: pointer
	@sh cmd
