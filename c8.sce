clc; clear all;
//input value
x0=1, x1=4, x2=6
f1 = cos(x0), f4 = cos(x1), f6 = cos(x2)
x = 2;
//Process solution
    f_01(x) = ( ((x-x1) / (x0-x1)) * (f1) ) + ( ((x-x0) / (x1-x0)) * (f4) )
    // ทำการกระจาย แยกย่อยฟังก์ชันการคำนวณเป็น 3 ตัวแปรย่อย (ดูง่ายขึ้นมาก)
    k01 = ( ( ((x-x1)*(x-x2)) / ((x0-x1)*(x0-x2)) ) * (f1) )
    k02 = ( ( ((x-x0)*(x-x2)) / ((x1-x0)*(x1-x2)) ) * (f4) )
    k03 = ( ( ((x-x0)*(x-x1)) / ((x2-x0)*(x2-x1)) ) * (f6) )
    f_02(x) = (k01 + k02 + k03 )
//display
    printf("\n ** P.8 ** \n Mr.Kawinphop Chomnikorn \n SSID: 633410142-5 (Sec.1) \n")
    printf("\n x0 = %d , f(x0) = f(1) , f(1) = cos(1) = %f",x0,f1)
    printf("\n x1 = %d , f(x1) = f(4) , f(4) = cos(4) = %f",x1,f4)
    printf("\n x2 = %d , f(x2) = f(6) , f(6) = cos(6) = %f",x2,f6)

    printf("\n\n\t>> f_1(%d) = %.7f",x,f_01(x))
    printf("\n\n\t>> f_2(%d) = %.7f",x,f_02(x))
//end