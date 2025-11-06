//


%{
#include<stdio.h>
 #include<stdlib.h> 
int yyerror(char*);
 int yylex();

%}
%token A B C D NEWLINE
%%
stmt: S NEWLINE { printf("valid\n"); 
return 1;
}
;
S: X Y
;

X: A X B
|
;
Y: C Y D
|
;
%%
extern FILE *yyin; 
void main()
{
printf("enter \n");
 do
{
yyparse();
}
while(!feof(yyin));

}
int yyerror(char* str)
{
 printf("invalid ");
 return 1;
}
