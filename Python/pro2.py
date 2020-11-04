def result(s, length):  
  
    ans = 0
    for i in range(0, length):  
  
         
        if i % 2 == 0 and s[i] == '1':  
            ans += 1
  
        
        if i % 2 == 1 and s[i] == '0':  
            ans += 1
    q=length-ans
    if ans==length-ans:
        ans-=1
    return min(ans, q)  
  
t=int(input())

for tt in range(t):
    length=int(input())
    s = input()
      
    print(result(s, length))  