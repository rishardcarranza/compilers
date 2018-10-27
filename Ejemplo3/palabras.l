%{
	int ncaracteres, nlineas, npalabras;
%}
%%
\n		{nlineas++; ncaracteres++;}
.		ncaracteres;
[^ \n\t]+	{npalabras++; ncaracteres+=yyleng;}
%%

int main(void) {
	yylex();
	printf("Lineas: %d; Palabras: %d; Caracteres: %d\n", nlineas, npalabras, ncaracteres);
	return 0;
}
