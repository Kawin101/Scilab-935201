//Name : Kawinphop Chomnikorn
//SSID : 633410142-5
clc; clear all;

// x^(2)-6*x+5 = 0
a = 1
b = -6
c = 5

x1 = (-b + (sqrt((b^2)-(4*a*c)))) / (2*a)
x2 = (-b - (sqrt((b^2)-(4*a*c)))) / (2*a)

printf(" x1 = %.2f\n\n",x1)
printf(" x2 = %.2f\n",x2)