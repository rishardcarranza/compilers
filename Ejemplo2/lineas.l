%{
	int yylineno;
%}
%%
^(.)*\n	printf("linea No %d:%s", yylineno++, yytext);
%%

int main(void) {
	yylex();
	printf("lineas encontradas: %d\n", yylineno-1);
	return 0;
}
