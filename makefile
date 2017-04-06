all:calc

calc: conio.o minesweeper.o
	gcc conio.o minesweeper.o -o calc
conio.o: conio.c conio.h
	gcc -c conio.c
minesweeper.o: minesweeper.c conio.h
	gcc -c minesweeper.c

.PHONY: all clean
clean:
	rm conio.o minesweeper.o calc 
