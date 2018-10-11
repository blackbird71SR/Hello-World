
/* Hello World in lex Programming*/
%{
 int i=0;
%}
%%
[a-zA-Z] { i++;}
%%
int main(int argc, char **argv[])
{
        printf("Hello-World");
        return 0;
}