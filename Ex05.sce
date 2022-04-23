//Name : Kawinphop Chomnikorn
//SSID : 633410142-5
//P.5 & Problem 5
clc; clear all;

Display = (" Please input your number Ex.--> gcd(5,10) ")
disp(Display)
function q = gcd(a,b) //40,72
    i=b // i = 72
    while (i>0)
        i = modulo(a,b) //modulo = 40
        a = b // a=b : 40
        b = i 
    end
    q=a
endfunction