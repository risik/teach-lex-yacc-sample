%{
#include <stdio.h>
%}
%start statements
%token TSTART TSTOP
%%
statements  : statements statement | ;
statement   : TSTART
    { printf("Start command received\n"); }
            | TSTOP
    { printf("Stop command received\n"); }
            ;
%%
int main() { return yyparse(); }
int yyerror(char *message)
{
    fprintf(stderr, "ERROR: %s\n", message);
}
