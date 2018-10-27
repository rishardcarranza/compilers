%{
#define	IF 1
#define	THEN 2
#define	ELSE 3
#define	ENDIF 4
#define ID 5
#define INT 6
#define LT 7
#define EQ 8
%}
letra	[a-zA-Z]
digito	[0-9]
integer	{digito}+
id	{letra}({letra}|{digito})*
eb	[ \n\t]+
%%
{eb}		;
"if"		return IF;
"then"		return THEN;
"else"		return ELSE;
"endif"		return ENDIF;
{integer}	return INT;
{id}		return ID;
"<"		return LT;
"="		return EQ;
%%

int main(void) {
	int token = yylex();
	while(token) {
		printf("Token ID: %d; \t Lexema: %s\n", token, yytext);
		token = yylex();
	}
	return 0;
}
