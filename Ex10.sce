//Name : Kawinphop Chomnikorn
//SSID : 633410142-5
//P.10 & Problem 10
clc; clear all;
//input value
x = 20.75
n = 3 
E = (0.5*10^(-n))
// x +- E
x1 = (x-E)
x2 = (x+E)
// 0.5*10^(-3) / 20.75 = ?
y = (E/x) 
//Output To display!
printf(" E = %f\n",E)
printf(" \n %f <= X <= %f\n\n", x1,x2)
printf(" (0.5*10^(-3) / 20.75) = %f\n\n",y)
printf(" 0.000024 = 2.4*10^(-5) \n\n")
printf(" 2.4*10^(-5) <= 0.5*10^(-3) \n")
