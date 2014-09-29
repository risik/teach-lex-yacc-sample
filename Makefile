# Makefile using Lex/Yacc to build

CC     = gcc
CFLAGS =

LEX    = lex
LFLAGS =

YACC   = yacc

LN     = gcc
LNFLAGS=

SRC    = scan.l smd.y

OBJ    = scan.o cmd.o

all:	cmd

test: all
	./cmd < test1.txt

cmd: $(OBJ)
	$(LN) $(LNFLAGS) -o cmd $(OBJ)

scan.c: scan.l cmd.h
	$(LEX) $(LFLAGS) -o scan.c scan.l

cmd.c cmd.h: cmd.y
	$(YACC) --output=cmd.c --defines=cmd.h cmd.y

clean:; @rm -f cmd scan.c cmd.c cmd.h *.o
