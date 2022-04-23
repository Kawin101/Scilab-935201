clc; clear all;
//Secent Method
//Ex.8
deff('y = f(x) ', ' y = 3*x+sin(x)-exp(x)')
//input value
a = input(' Enter the first initial guess A = ');
b = input(' Enter the first initial guess B = '); 
et = input (' Enter the value of Relative Error (ค่าความคลาดเคลื่อนสัมพัทธ์ %) = '); 
printf('\tจากโจทย์ x-1 = %f x0 = %f , Ea = %f เปอร์เซ็นต์ \n\n',a,b,et)
printf("\nRound \tx(k-2) \t\tx(k-1) \t\tx(k) \t\tf(k-2) \t\tf(k-1) \t\tf(x) \t\tEa \n")
//Start Loop
k = 0
xk = 0
while (%t) 
    
    k = k+1
    xk = (a*f(b)-b*f(a))/(f(b)-f(a))
    a = b //ย้ายค่าไปเก็บไว้ใน x0
    b = xk //ย้ายค่าไปเก็บไว้ใน x1 
    printf("\n%d \t%.7f \t%.7f \t%.7f \t%.7f \t%.7f \t%.7f ",k,a,b,xk,f(a),f(b),f(xk))
    
    ea = abs((b-a)/b)*100 
    printf("\t%.8f",ea)

    if (ea < et) then
        printf("\n ค่า e%d < ea แล้ว และได้รากของสมการ = %.7f",k,xk)
        break;
    end
end