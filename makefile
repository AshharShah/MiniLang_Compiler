all:
	gcc main.c lexer_minilang.c parser_minilang.c -o compiled -Wall -Wextra