%{
#include "marathi.tab.h"
#include <stdlib.h>
#include <string.h>

extern YYSTYPE yylval;
%}

%%

"jar"             { return IF; }
"nahitar"         { return ELSE; }
"nivad"           { return SWITCH; }
"prakaran"        { return CASE; }
"mulbhut"         { return DEFAULT; }
"purnsankhya"     { return INT; }
"chal"            { return VARIABLE; }
[0-9]+            { yylval.num = atoi(yytext); return NUMBER; }
[a-zA-Z][a-zA-Z0-9]* { yylval.str = strdup(yytext); return ID; }
"+"               { return PLUS; }
"-"               { return MINUS; }
"*"               { return MUL; }
"/"               { return DIV; }
"="               { return ASSIGN; }
"=="              { return EQ; }
">"               { return GT; }
"<"               { return LT; }
"{"               { return LBRACE; }
"}"               { return RBRACE; }
"("               { return LPAREN; }
")"               { return RPAREN; }
":"               { return COLON; }
";"               { return SEMICOLON; }
[ \t\n]           ;
.                 { printf("Unknown character: U+%04X (%s)\n", (unsigned char)yytext[0], yytext); }

%%

int yywrap() {
    return 1;
}