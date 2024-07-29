/*
X
*/
#include <stdio.h>
char get_n(){return 10;}
int main(){
/*
X
*/
char n=get_n();char q=34;char*s="/*%cX%c*/%c#include <stdio.h>%cchar get_n(){return 10;}%cint main(){%c/*%cX%c*/%cchar n=get_n();char q=34;char*s=%c%s%c;printf(s,n,n,n,n,n,n,n,n,n,q,s,q,n);}%c";printf(s,n,n,n,n,n,n,n,n,n,q,s,q,n);}
