#include<bits/stdc++.h>
 
using namespace std;
 
int minFlipToMakeStringAlternate(string str, char zero, char one){
 
    int len = str.length();
    int startZ =0;
    int startO =0;
    for(int i=0; i<len; i++){
 
        if(str[i]!=zero)
            startZ++;
        zero = (zero=='0')?'1':'0';
 
        if(str[i]!=one)
            startO++;
        one = (one=='0')?'1':'0';
    }
 
    return min(startZ, startO);
}
 
int main(){
 
    string str = "0110";
    cout << minFlipToMakeStringAlternate(str, '0', '1');
 
    return 0;
}