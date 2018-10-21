#include<bits/stdc++.h>
using namespace std;
#define MAX 201
long long int dp[MAX];
set<long long int>s;

void seive()
{
    vector<long long int>v;
    for(int i=2;i<MAX;i++){
        if(dp[i]==0){
                v.push_back(i);
            for(int j=i*i;j<MAX;j+=i){
                dp[j]=1;
            }
        }
    }
    for(int i=0;i<v.size();i++){
       for(int j=i+1;j<v.size();j++){
            if(v[i]*v[j]<=200)
                s.insert(v[i]*v[j]);
       }
    }
}
int main()
{
    seive();
    int t;
    cin>>t;
    while(t--)
    {
        int n;
        cin>>n;
        bool f=0;
        for(auto &x:s){
            if(x<n)
            if(s.find(x)!=s.end() && s.find(n-x)!=s.end()){
                f=1;
                break;
            }
        }
        if(f)
            cout<<"YES"<<endl;
        else
            cout<<"NO"<<endl;
    }
    return 0;
}
