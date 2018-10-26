#include<iostream.h>
#include<conio.h>
void main()
{
int a,m,n,e=0,o  ;
char ch;
cout<<"\n\n\n				WELCOME DEAR USER\n";
tag:
cout<<"\n	Enter 1st no...";
cin>>a;
cout<<" \n	Enter 2nd no...";
cin>>m;
cout<<"\n\n	The numbers which are divisible by the 2nd no in the series of numbers\n	 between 1 & "<<a<<" are\n	";
n=(a-1) ;
for(int i=2;i<=n;i++)
if(i%m==0)
cout<<" "<<i<<" ";
{for(int z=2;z<=n;z++)
if(z%2==0)
e+=1;
}
o=(n-e);
cout<<"\n\n	In the above series, \n	ODD numbers = "<<o<<"\n	EVEN numbers = "<<e<<endl;
cout<<"\n\n Do you want to try it again? (Y/N)...." ;
cin>>ch;
if(ch=='y'||ch=='Y')
goto tag;
else
cout<<"\n\n----x---x---x---x---x---x---x---x---x----x---x----x----x---x---x----x----x---x---";
getch();
}

