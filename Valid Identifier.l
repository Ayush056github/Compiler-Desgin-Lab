//

%{
#include <stdio.h>
%}

%%
[a-zA-Z_][a-zA-Z0-9_]*    { printf("Valid Identifier: %s\n", yytext); }
.|\n         ;
%%

int main() {
    printf("Enter Identifier:\n");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
