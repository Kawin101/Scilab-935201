//Name : Kawinphop Chomnikorn
//SSID : 633410142-5
clc; clear all;
// x1 + x2 + x3 = 6; 2*x1-x2+x3 = 3; x1-3*x2 + 2*x3 = 1;
A = [ 2 -1 6; -6 2 -7; 3 1 3]
B = [1.2; 4.2; 3.2]

//Solve problem
x = inv(A)*B
y = det(A)

//Output Display
printf(" \tdet(A) : %.f\n\n",y)
printf(" \tx1 = %.f\n",x(1))
printf(" \tx2 = %.f\n",x(2))
printf(" \tx3 = %.f\n",x(3))

    