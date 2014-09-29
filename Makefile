# Makefile using Lex/Yacc to build

CC     = gcc
CFLAGS = -c

LEX    = lex
LFLAGS =

LN     = gcc
LNFLAGS=

SRC    = scan.l
OBJ    = scan.o

all:	scan

test: all
	./scan < test1.txt

scan:	$(OBJ)
	$(LN) $(LNFLAGS) -o scan $(OBJ)

scan.o:	scan.c
	$(CC) $(CFLAGS) -o scan.o scan.c

scan.c: scan.l
	$(LEX) $(LFLAGS) -o scan.c scan.l

clean:; @rm -f scan scan.c *.o
