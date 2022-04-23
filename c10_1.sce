clc; clear all;
x = [1.0, 2.5, 5.5, 10.5]
y = [1.25, 2.87, 1.93, 0.36] // y = f(xi)
x0 =7
m = (y(4) - y(3))/((x(4)-x(3)))
y2 = interpln([x;y], x0)
printf("From table to solve linear spline in f(x) at x= %.3f\n", x0)
printf("\t\t   x\t f(xi)")
printf("\n\t\t%.3f\t%.3f", x', y')
printf("\nm = %f", m)
printf("\nFrom function f(x) = f(%.2f) + (%.2f) * (x - %.2f)", x(3), m, x(3))
printf("\n f(%d) = %f ", x0, y2)