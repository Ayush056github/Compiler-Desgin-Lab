

%{

#include<stdio.h>

int space = 0, word = 0, line = 0;

%}

%%

"" {space++;}

"\t" { space++;}

"\n" { line++;}

[a-zA-Z]+ {word++; }

%%


int main(){

printf("Enter statement:\n");

yylex();

printf("\nTotal Space: %d", space);

printf("\nTotal Line:%d", line);

printf("\nTotal Word:%d", word);

return 0;

int yywrap(){

return 1;

}
