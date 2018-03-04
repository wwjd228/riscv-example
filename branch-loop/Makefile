CC	= riscv64-unknown-elf-gcc
CFLAGS	= -O0 -Wall
LDFLAGS = -fno-stack-protector

objects	= loop.o
assembly = loop.s

default: loop

.PHONY: default clean clobber

loop: $(objects)
	$(CC) -o $@ $^

loop.o: loop.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<
	$(CC) -S $(CFLAGS) $(LDFLAGS) -o $(assembly) $<

clean:
	rm -f $(objects) loop $(assembly)

spike: loop
	@sh cmd
