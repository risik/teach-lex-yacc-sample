%{
#include <stdio.h>
%}

%%
stop    printf("Stop command received\n");
start   printf("Start command received\n");
%%

int main()
{
    int res = yylex();
    printf("\n%d\n", res);

    return res != 0;
}

int yywrap()
{
    return 1;
}
