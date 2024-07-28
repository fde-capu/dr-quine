//Comment!
#include <stdio.h>
#define foo bar
#define bar foo
#define X int main(){char n=10;char q=34;char*s="//Comment!%c#include <stdio.h>%c#define foo bar%c#define bar foo%c#define X int main(){char n=10;char q=34;char*s=%c%s%c;FILE *fp=fopen(%cGrace_kid.c%c,%cw%c);fprintf(fp,s,n,n,n,n,q,s,q,q,q,q,q,n,n);fclose(fp);}%cX%c";FILE *fp=fopen("Grace_kid.c","w");fprintf(fp,s,n,n,n,n,q,s,q,q,q,q,q,n,n);fclose(fp);}
X
