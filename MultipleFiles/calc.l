%{
	#include "y.tab.h"
	#include <stdlib.h>
	void yyerror(char *);
%}
%%

[0-9]+	{
		yylval = atoi(yytext);
		return INTEGER;
	}

[-+\n]	return *yytext;

[ \t]	; /* Blank spaces */

.	yyerror("Character is not valid");

%%

int yywrap(void) {
	return 1;
}
