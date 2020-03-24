# Makefile
game: main.o location.o
	cc -o c_adventure main.o location.o
clean:
	rm -f c_adventure *.o

