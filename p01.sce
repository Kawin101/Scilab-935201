// Assingment at 2 
clc; clear all;
//Bisection Method
//Ex.1
deff('y = f(x) ', ' y = x-x^(1/3)-2')
//input value
x1 = input(' Enter the first initial guess A = ');
x2 = input(' Enter the first initial guess B = ');
RE = input (' Enter the value of Relative Error (ค่าความคลาดเคลื่อนสัมพัทธ์ %) = ');
printf(" \t ***กำหนดให้ จงหาผลเฉลยของสมการ x-x^(1/3)-2 ในช่วง [%d,%d] กำหนดค่าความคลาดเคลื่อนสัมพันธ์น้อยกว่า %f เปอร์เซ็นต์ \n",x1,x2,RE)
printf('\n Itr.No \tA \t\tB \t\tX \t\tf(X) \t\tEa(Percentage) ');
//loop
i = 0
x=0
while (%t) then
    i=i+1
    z = (x1+x2)/2
    printf(' \n %d \t\t%f \t%f \t%f \t%f ', i,x1,x2,z,f(z))
    if (f(x1)*f(z)) > 0
        x1 = z;
    else
        x2 = z;
    end
    if (i > 1)
        ea = abs((x1-x2)/x1)*100
        printf("\t %f",ea)
        if (ea < RE) then
            printf('\n\n \t*** ดังนั้น ผลเฉลยของสมการคือ %f ความคลาดเคลื่อนสัมพัทธ์ E%d = %f',z,i,ea)
            break;
        end
    end
end


