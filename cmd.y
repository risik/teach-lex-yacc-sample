%{
#include <stdio.h>
%}
%start statements
%token TSTART TSTOP
%%
statements  : statements statement | ;
statement   : TSTART     
    { printf("Stop command received\n"); }
            | TSTOP      
    { printf("Start command received\n"); }
            ;
%%
int main() { return yyparse(); }
int yyerror(char *message) 
{
    fprintf(stderr, "ERROR: %s", message);
}
