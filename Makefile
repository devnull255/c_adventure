# Makefile
CC = cc
CFLAGS =
CPPFLAGS =

%.o: %.c
	$(CC) -c $(CFLAGS) $(CPPFLAGS) $< -o $@

game: main.o location.o object.o misc.o
	$(CC) -o c_adventure main.o location.o object.o misc.o

location.o: object.o misc.o
	$(CC) -c location.c object.o -o $@ 

clean:
	rm -f c_adventure *.o

