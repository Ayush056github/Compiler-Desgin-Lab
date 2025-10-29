//

%{
    int vowels = 0;
    int consonants = 0;
%}


%%
[aeiouAEIOU]    { vowels++; }
[a-zA-Z]        { consonants++; }
.               ;
\n              { return 0; } 


%%
int main() {
    printf("Enter a word:\n");
    yylex();
    printf("Total vowels: %d\n", vowels);
    printf("Total consonants: %d\n", consonants);
    return 0;
}

int yywrap() {
    return 1;
}
