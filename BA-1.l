%option noyywrap
%{
#include "BA-1.tab.h"
%}

%%
\n	{ return(0); /* EOF */ }
[ \t]+	{ /* do nothing */ }
\\frac { return FRAC;}
[0-9]+	{ yylval.ival= atoi(yytext);return(INUMBER); }
.	{ return(yytext[0]); }
%%
