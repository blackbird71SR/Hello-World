#Hactoberfest
#viewer


import sys
l=list(map(int,input().split()))
a=input()
max=0
for i in a:
    k=ord(i)
    s=k-97
    if max<l[s]:
        max=l[s]
print(max*len(a))
