clc; clear all;
x0 = 1.0 , fx0 = 1.25
x1 = 2.5 , fx1 = 2.87
x2 = 5.5 , fx2 = 1.93
x3 = 10.5 , fx3 = 0.36
x = 7
printf("มีจุดเชื่อมสองจุดคือจุด x = %.2f และ x = %.2f \nมีจุดเชื่อมปลาย2จุดคือจุด x = %.2f และ x = %f\n",x1,x2,x0,x3)
printf("f1x = (a1 * x^2) + (b1 * x) + c1  x ∈ [x0,x1]\n")
function y = f1(x)
    y = (a1 * x^2) + (b1 * x) + c1
endfunction
printf("f2x = (a2 * x^2) + (b2 * x) + c2  x ∈ [x1,x2]\n")
function y = f2(x)
    y = (a2 * x^2) + (b2 * x) + c2
endfunction
printf("f3x = (a3 * x^2) + (b3 * x) + c3  x ∈ [x2,x3]\n")
function y = f3(x)
    y = (a3 * x^2) + (b3 * x) + c3
endfunction
// 1
printf("ที่จุด x1 = %.2f , f(x1) = %.2f\n",x1,fx1)
printf("f(x1) = a1 * x1^2 + b1 * x1 + c1 => %.2fa1 + %.2fb1 + c1 = %.2f\n",x1^2,x1,fx1)
printf("f(x1) = a2 * x1^2 + b2 * x1 + c2 => %.2fa2 + %.2fb2 + c2 = %.2f\n",x1^2,x1,fx1)
printf("\nที่จุด x2 = %.2f , f(x2) = %.2f\n",x2,fx2)
printf("f(x2) = a2 * x2^2 + b2 * x2 + c2 => %.2fa2 + %.2fb2 + c2 = %.2f\n",x2^2,x2,fx2)
printf("f(x2) = a3 * x2^2 + b3 * x2 + c3 => %.2fa3 + %.2fb3 + c3 = %.2f\n",x2^2,x2,fx2)
// 2
printf("\nที่จุดเริ่มต้น x0 = %.2f , f(x0) = %.2f\n",x0,fx0)
printf("f(x0) = a1 * x0^2 + b1 * x0 + c1 => %.2fa1 + %.2fb1 + c1 = %.2f\n",x0^2,x0,fx0)
printf("\nที่จุดปลาย x3 = %.2f , f(x3) = %.2f\n",x3,fx3)
printf("f(x3) = a3 * x3^2 + b3 * x3 + c3 => %.2fa3 + %.2fb3 + c3 = %.2f\n",x3^2,x3,fx3)
// 3
printf("\nที่จุด x1 = %.2f จะได้สมการ %.2fa1 + b1 - %.2fa2 - b2 = 0\n",x1,2*x1,2*x1)
printf("\nที่จุด x2 = %.2f จะได้สมการ %.2fa2 + b2 - %.2fa3 - b3 = 0\n",x2,2*x2,2*x2)
// 4
printf("\nf′′(x) = 2a1 = 0\n a1 = 0\n")
a1 = 0

t1 = [x1,1,0,0,0,0,0,0; 0,0,x1^2,x1,1,0,0,0; 0,0,x2^2,x2,1,0,0,0; 0,0,0,0,0,x2^2,x2,1; x0,1,0,0,0,0,0,0; 0,0,0,0,0,x3^2,x3,1; 1,0,-(2*x1),-1,0,0,0,0; 0,0,2*x2,1,0,-(2*x2),-1,0]
t2 = [2.87;2.87;1.93;1.93;1.25;0.36;0.0;0.0]
ac = inv(t1)*t2
b1 = ac(1) , c1 = ac(2) , a2 = ac(3) , b2 = ac(4) , c2 = ac(5) , a3 = ac(6) , b3 = ac(7) , c3 = ac(8)
printf("a1 = %f , b1 = %f , c1 = %f \na2 = %f , b2 = %f , c2 = %f \na3 = %f , b3 = %f , c3 = %f \n",a1,b1,c1,a2,b2,c2,a3,b3,c3)

// Final
printf("x = %.2f \n",x)
if(x > x0 & x < x1)then
    printf("เลือกช่วงที่มี data volume less อยู่ในช่วงสองช่วง คือ ช่วงที่ 1 [1.0, 2.5] \n")
f1x = f1(x)
printf("f1x = f1(%d) = %f", x, f1x)
end

if (x > x1 & x < x2) then
    printf("เลือกช่วงที่มี data volume less อยู่ในช่วงสองช่วง คือ ช่วงที่ 2 [2.5, 5.5] \n")
f2x = f2(x)
printf("f2x = f2(%d) = %f",x , f2x)
end

if (x > x2 & x < x3) then
    printf("เลือกช่วงที่มี data volume less อยู่ในช่วงสองช่วง คือ ช่วงที่ 2 [5.5, 10.5] \n")
f3x = f3(x)
printf("f3x = f3(%d) = %f", x, f3x)
end