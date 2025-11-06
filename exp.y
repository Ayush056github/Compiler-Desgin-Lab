//

%{
    #include<stdio.h>
#include<stdlib.h>
int flag=0;
%}
%token NUM

%left '+' '-'
%left '*' '/'
%left '(' ')'

%%

expr: e{
         printf("result:%d\n",$$);
         return 0;
        }
e:e'+'e {$$=$1+$3;}
 |e'-'e {$$=$1-$3;}
 |e'*'e {$$=$1*$3;}
 |e'/'e {$$=$1/$3;}
 |'('e')' {$$=$2;}
 | NUM {$$=$1;}
;
%%
 
void main()
{
   printf("\n enter the arithematic expression:\n");
   yyparse();
if(flag==0)
   printf("\n valid expression\n");
}
int yyerror()
{
   printf("\n invalid expression\n");
   flag=0;
}
