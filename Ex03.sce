//Name : Kawinphop Chomnikorn
//SSID : 633410142-5
//P.3 & Problem 3
clc; clear all;
T = [%t %f];
for i = 1:2 
    for j = 1:2
        disp([T(i), T(j), ~T(i), T(i)&T(j), T(i)|T(j), ~T(i)|T(j), (T(i) & T(j) | ((~T(i) & ~T(j))))])
    end
end