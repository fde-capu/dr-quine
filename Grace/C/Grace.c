/*
X
*/
#include <stdio.h>
#define N 10
#define Q 34
#define X int main(){char n=N;char q=Q;char*s="/*%cX%c*/%c#include <stdio.h>%c#define N 10%c#define Q 34%c#define X int main(){char n=N;char q=Q;char*s=%c%s%c;FILE *f=fopen(%cGrace_kid.c%c,%cw%c);fprintf(f,s,n,n,n,n,n,n,q,s,q,q,q,q,q,n,n);fclose(f);}%cX%c";FILE *f=fopen("Grace_kid.c","w");fprintf(f,s,n,n,n,n,n,n,q,s,q,q,q,q,q,n,n);fclose(f);}
X
