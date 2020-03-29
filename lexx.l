%{
    #include<stdio.h>
    int lines=0,words=0,s_letters=0,c_letters=0,num=0,spl_char=0,total=0;
%}

%%


[a-zA-Z][0-9a-zA-Z]+ printf("VARIABLE ");
[=] printf("EQUALS ");
[0-9]+ printf("INTEGER ");
[;] printf("SEMICOLON ");
. spl_char++;
%%

main(){

    yylex();

    return 1;
}
