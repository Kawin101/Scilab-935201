clc; clear all;
x = [1.0, 2.5, 5.5, 10.5]
y = [1.25, 2.87, 1.93, 0.36] // y = f(xi)
xx = 7  ;
d = splin(x, y, "natural")
yy2 = interp(xx,x,y,d);
disp(yy2)