clc; clear all;
disp("False Position Method")
deff('y=f(x)','y =x-(x^(1/3))-2');
a = input("Enter first approximated : ");
b = input("Enter second approximated : ");
c = input("Enter accurancy : ");
N = input("Enter round to iteration : ");
i = 1;

// preparation argument
printf("iteration\t      a\t\t                        x\t\t          b\t\t        \tf(x)\n")

// Start iteration
while (i < N) ,
    x = (a*f(b) - b* f(a)) / (f(b) - f(a));
    condition = f(x)

    printf("%d           \t      %f\t\t            %f\t\t          %f\t        \t%f\n",i , a, x, b, abs(condition))
if (condition == 0 | abs(condition) < c)
    break
end
    if f(a)*condition > 0 then
        a = x;
    else
        b = x;
        
    end
    i=i+1;
end
printf('\nThe solution of equation after %i iteration is %g', i, x);
