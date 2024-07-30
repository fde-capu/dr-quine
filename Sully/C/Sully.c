int i=5;
#include <stdio.h>
#include <stdlib.h>
#define N 10
#define Q 34
#define X int main(){if(i<1){return 0;};char*fn=malloc(128);sprintf(fn,"Sully_%d.c",i-1);char*gcc=malloc(256);sprintf(gcc,"gcc %s -o Sully_%d && ./Sully_%d",fn,i-1,i-1);char n=N;char q=Q;char*s="int i=%d;%c#include <stdio.h>%c#include <stdlib.h>%c#define N 10%c#define Q 34%c#define X int main(){if(i<1){return 0;};char*fn=malloc(128);sprintf(fn,%cSully_%cd.c%c,i-1);char*gcc=malloc(256);sprintf(gcc,%cgcc %cs -o Sully_%cd && ./Sully_%cd%c,fn,i-1,i-1);char n=N;char q=Q;char*s=%c%s%c;FILE *f=fopen(fn,%cw%c);fprintf(f,s,i-1,n,n,n,n,n,q,37,q,q,37,37,37,q,q,s,q,q,q,n,n);fclose(f);system(gcc);free(fn);free(gcc);}%cX%c";FILE *f=fopen(fn,"w");fprintf(f,s,i-1,n,n,n,n,n,q,37,q,q,37,37,37,q,q,s,q,q,q,n,n);fclose(f);system(gcc);free(fn);free(gcc);}
X
