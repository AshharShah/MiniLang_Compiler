#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>

#include "lexer_minilang.h"
#include "parser_minilang.h"

int main(int argc, char *argv[]){
  if(argc != 3){
    printf("Error: correct syntax: %s <filename.unn> <output_filename>\n", argv[0]);
    exit(1);
  }

  FILE *file;
  file = fopen(argv[1], "r");

  if(!file){
    printf("ERROR: File not found\n");
    exit(1);
  }

  Token *tokens = lexer(file);

  Node *AST_root = parser(tokens);

  printf("FINISHED\n");
}