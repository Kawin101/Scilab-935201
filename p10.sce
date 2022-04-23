//**************************************** Not finish!!!!!!!!!!!!!!!!! *********************************
// Assingment at 2 
clc; clear all;
//Fixed-Point Method
//Ex.5
deff('y=f(x)','y = x^(2)-3*x-4');
deff('y1=df(x)','y1 = x^(2)+4+3*x ');
//input value
x0 = input("Enter Guess: ");
e = input("Tolerable Error (%): ");
N = input("Maximum times: ");
//loop
i=1;
time=1;
x1=0;
printf("\n\n*** FIXED POINT ITERATION ***\n");
while (%t) then abs(f(x1))*100 > e
    
    x1 = df(x0)
    printf("\n Itr.No%d, x1 = %0.6f and f(x1) = %0.6f\n", i, x1, f(x1))
    x0 = x1
    i = i + 1
    if (i > N) then //ถ้า i (จำนวนรอบที่วนซ้ำ) มากกว่า N (จำนวนรอบที่กำหนด) ให้ time มีค่าเป็น 0
        time = 0
    end
    if (time == 1) then // เป็นคำสั่งเปรียบเทียบ ถ้า time เท่ากับ 1 ให้แสดงค่า x1 ถ้าไม่ให้แสดง else
        printf("Required root is: %0.8f\n", x1)
    else
        printf("--> Not Convergent. <-- \n")
        break;
    end
end