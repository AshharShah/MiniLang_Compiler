all:
	gcc main.c lexer_minilang.c parser_minilang.c codegenerator_minilang.c ./hashmap/hashmapOperators_minilang.c -o compiled -Wall -Wextra