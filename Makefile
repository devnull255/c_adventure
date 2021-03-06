# Makefile
CC = cc
CFLAGS =
CPPFLAGS =
OBJS = main.o object.o toggle.o execute.o location.o misc.o inventory.o 
H = object.h misc.h inventory.h location.h

game: $(OBJS) map.png 
	$(CC) -o c_adventure $(OBJS)

object.h: object.awk object.txt
	awk -v pass=h -f object.awk object.txt > $@

object.c: object.awk object.txt
	awk -v pass=c1 -f object.awk object.txt > $@
	awk -v pass=c2 -f object.awk object.txt >> $@

map.png: map.gv
	dot -Tpng -o $@ $<

map.gv: map.awk object.txt
	awk -f map.awk object.txt > $@

clean:
	rm -f c_adventure *.o *.gv *.png

