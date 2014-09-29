%{
#include "cmd.h"
%}

%%
stop    return TSTOP;
start   return TSTART;
.
\n
%%

int yywrap() { return 1; }
