//Newton's forward interpolation formula
clc; clear all;
x = [1.0:0.2:1.8]
y = [1.2314, 1.2878, 1.3253, 1.3628, 1.3899]
n = length(x);
h = x(2) - x(1);
T = x';
for i=0:n-1
    T(1:(n-i),i+2)=diff(y',i);
end
disp("Forward difference table")
disp("x         y")
disp(T)

xi = input("Enter value of xi : ");
p=max(find(T(:,1)<xi));
u = (xi-x(p))/h; yi =y(p); q = u;
for j=1:n-1
    yi = yi+(q*T(p,j+2))/factorial(j);
    q = q*(u-j);
end
disp("Interpolation value yi is :", yi);