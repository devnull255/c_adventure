# Makefile
CC = cc
CFLAGS =
CPPFLAGS =
OBJS = main.o location.o object.o misc.o inventory.o
%.o: %.c
	$(CC) -c $(CFLAGS) $(CPPFLAGS) $< -o $@

game: $(OBJS)
	$(CC) -o c_adventure $(OBJS)

clean:
	rm -f c_adventure *.o

