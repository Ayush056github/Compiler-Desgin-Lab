//

%{
#include <stdio.h>
%}

%%
([01][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]    { printf("Valid Time: %s\n", yytext); }
.|\n         ;
%%

int main() {
    printf("Enter Time (hh:mm:ss):\n");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
