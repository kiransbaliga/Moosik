t=int(input())

for tt in range(t):
    flag=0
    l,r=map(int,input().split())
    if (r+1)/2<=l:
        print("YES")
    else:
        print("NO")
