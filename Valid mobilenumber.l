//

%{
#include <stdio.h>
%}

%%
[0-9]{10}    { printf("Valid Mobile Number: %s\n", yytext); }
.|\n         ;
%%

int main() {
    printf("Enter Mobile Number:\n");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
