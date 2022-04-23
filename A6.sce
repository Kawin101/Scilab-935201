// Assingment at 2 
clc; clear all;
//Bisection Method
deff('y = f(x) ', ' y = 3*x+sin(x)-exp(x)')
//input value
printf("\n\n !! Please enter [A , B] = [0 , 1] \n !! Please enter Relative Error = 0.0001 (Persentage) \n\n")
x1 = input(' Enter the first initial guess A = ');
x2 = input(' Enter the first initial guess B = ');
RE = input (' Enter the value of Relative Error (ค่าความคลาดเคลื่อนสัมพัทธ์ %) = ');
printf(" \t ***กำหนดให้ จงหาผลเฉลยของสมการ 2*e^(x)+x-4 ในช่วง [%d,%d] กำหนดค่าความคลาดเคลื่อนสัมพันธ์น้อยกว่า %.4f เปอร์เซ็นต์ \n",x1,x2,RE)
printf('\n Itr.No   A \t\tB \t\tX \t\tf(X)       Ea(Percentage) ');
//loop
i = 0
while (%t) then
    i=i+1
    z = x1*f(x1) - x2*f(x2) / f(x1) * f(x2)
    printf(' \n %d \t%f \t%f \t%f \t%f ', i,x1,x2,z,f(z))
    if (f(x1)*f(z)) > 0
        x1 = z;
    else
        x2 = z;
    end
    if (i > 1)
        ea = abs((x1-x2)/x1)*100
        printf("  %f",ea)
        if (ea < RE) then
            printf('\n\n \t*** ดังนั้น ผลเฉลยของสมการคือ %f ความคลาดเคลื่อนสัมพัทธ์ E%d = %f',z,i,ea)
            break;
        end
    end
end