CC=gcc
CFLAGS=-I.
DEPS = helloworld.h
OBJ = helloworld.o 

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

helloworld: $(OBJ)
	gcc -o $@ $^ $(CFLAGS)
