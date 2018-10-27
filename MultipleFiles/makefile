calc: lex.yy.c y.tab.c
	gcc lex.yy.c y.tab.c -o calc

y.tab.c: calc.y
	yacc -d calc.y

lex.yy.c: calc.l
	lex calc.l

clean:
	rm lex.yy.c
	rm y.tab.c
	rm calc
	rm y.tab.h
