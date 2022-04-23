// Assingment at 2 
clc; clear all;
//Newton&Raphson Method
//Ex.9
disp("Hello Welcome to --> Newton&Raphson Method <--")
disp('By Kawinphop Chomnikorn SSID : 633410142-5')
printf("\n")
deff('y=f(x) ', 'y = 2*e^(x)+x-4')
deff('y1=df(x) ', 'y1 = 2*e^(x)+1')
//input value
x0 = 0
x1 = input('**Enter the default guess [0, 1]: ') // x1 = [3,4] ให้เลือกมา 1 ค่า ในช่วง 3 ถึง 4 (**แนะนำ 3.5)
et = input('**Enter the default Et: ')
printf('\tจากโจทย์ x0 = %f , และกำหนดค่าความคลาดเคลื่อนยินยอม Et = %f เปอร์เซ็นต์ \n',x1,et)
printf("\nk \tx(k) \t\t f(x^(k)) \tdf(x^(k)) \t E(k)")
//Start Loop
k = 0
xk = 0
e = exp(et)
while (%t) // วนซ้ำจนค่า ทุกนิพจน์เป็นจริง หรือ ค่า ek < et
    
    k = k+1
    xk = (x1 - (f(x1)/df(x1)))
    x0 = x1 //ย้ายค่าไปเก็บไว้ใน x0
    x1 = xk //ย้ายค่าไปเก็บไว้ใน x1 
    printf("\n%d \t%.7f \t%.7f \t%.7f ",k,x0,f(x0),df(x0))
    
    ek = (abs(x1-x0)/abs(x1))*100
    printf("\t%.8f",ek)
    
    if (ek < et) then
        printf("\n ค่า e%d < et แล้ว และได้รากของสมการ = %.7f",k,xk)
        break;
    end
end