CC	= riscv64-unknown-elf-gcc
CFLAGS	= -O0 -ggdb -Wall -march=rv64imafdc
LDFLAGS = -fno-stack-protector

objects	= insertion_sort_c.o sort.o

default: sort

.PHONY: default clean clobber

sort: $(objects)
	$(CC) -o $@ $^

insert_sort_c.o: insertion_sort_c.s
sort.o: sort.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

%.o: %.s
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

clean:
	rm -f $(objects) sort

spike: sort
	@sh cmd
