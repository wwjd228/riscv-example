CC	= riscv64-unknown-elf-gcc
CFLAGS	= -O0 -ggdb -Wall
LDFLAGS = -fno-stack-protector

objects	= insertion_sort.o sort.o

default: sort

.PHONY: default clean clobber

sort: $(objects)
	$(CC) -o $@ $^

insert_sort.o: insertion_sort.s
sort.o: sort.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

%.o: %.s
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

clean:
	rm -f $(objects) sort

spike: sort
	@sh cmd
