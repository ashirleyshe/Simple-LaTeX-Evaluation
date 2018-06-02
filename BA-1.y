%{
#include <stdio.h>
#include <string.h>
#include<math.h>
void yyerror(const char *message);
%}
%union {
float ival;
}

%token <ival> INUMBER
%type <ival> expr
%type <ival> tmp
%left '+''-'
%right '^'
%left FRAC
%%
line    : expr {printf("%.3lf\n",$1);}  
        ;
expr    : expr '+' expr  					  {$$=$1+$3;}
		| expr '-' expr						  {$$=$1-$3;}
		| expr '^' tmp						  {$$=pow($1,$3);}
		| expr '^' INUMBER					  {$$=pow($1,$3);}
		| FRAC tmp tmp 	                      {$$=$2/$3;}
        | INUMBER   						  {$$=$1;}
        ;
tmp     : '{'expr'}'						  {$$=$2;}
		;
		
%%
void yyerror (const char *message)
{
        fprintf (stderr, "%s\n",message);
}

int main(int argc, char *argv[]) {
        yyparse();
        return(0);
}
