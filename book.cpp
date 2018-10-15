#include<iostream>
using namespace std;
int main()
{
    int a,b,s,r;
    cin>>a;
    cin>>b;
    if(a%2==0)
    {
      if((a-b)%2==0)
          s=(a-b)/2;
        else
            s=(a-b+1)/2;
           
    }
    else
    {
        if(a-b==0||a-b==1)
            s=0;
        if((a-b)%2==0)
            s=(a-b)/2;
        if((a-b)%2!=0)
            s=(a-b-1)/2;
    }
    if(b%2==0)
    {
        r=b/2;
    }
    else
    {
        r=(b-1)/2;
    }
    if(r<s)
        
    {
        cout<<r;
    }
    else
    {
        cout<<s;
    }
    return 0;
}

