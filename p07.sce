//**************************************** Not finish!!!!!!!!!!!!!!!!! *********************************
// Assingment at 2 
clc; clear all;
//False Position Method
//Ex.7
disp("False Position Method")
deff('y=f(x)','y = 2*e^(x)+x-4 ');
//input value
a = input("Enter first approximated : ");
b = input("Enter second approximated : ");
c = input("Enter accurancy : ");
N = input("Enter round to iteration : ");
i = 1;
e = exp(c/100)
// preparation argument
printf("iteration\t      a\t\t                        x\t\t          b\t\t        \tf(x)\n")

// Start iteration
while (i < N) then
    x = (a*f(b) - b* f(a)) / (f(b) - f(a));

    printf("%d           \t      %f\t\t            %f\t\t          %f\t        \t%f\n",i , a, x, b, abs(f(x)))
    if ( f(x) == 0 | abs(f(x)) < c)
        break;
    end
    if f(a)*f(x) > 0 then
        a = x;
    else
        b = x; 
    end
    i=i+1;
end
printf('\nThe solution of equation after %i iteration is %g', i, x);
