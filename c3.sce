clc; clear all;
//input value
    x0=1, x1=4, x2=6
    f1 = sin(x0), f4 = sin(x1), f6 = sin(x2)
    x = 2;
//display
    b0 = f1
    b1 = ( (f4 - f1) / (x1-x0) ) 
    b2 =  ( ((f6 - f4) / (x2-x1)) - ((f4 - f1) / (x1-x0)) ) / (x2-x0) 
    f2(x) = b0 + ( b1 * (x - x0) ) + ( b2 * (x - x0) * (x - x1) )
    printf("\n ** P.3 ** \n Mr.Kawinphop Chomnikorn \n SSID: 633410142-5 (Sec.1) \n")
    printf("\n* x0 = %d , f(x0) = f(1) , f(1) = %f",x0,f1)
    printf("\n* x1 = %d , f(x1) = f(4) , f(4) = %f",x1,f4)
    printf("\n* x2 = %d , f(x2) = f(6) , f(6) = %f",x2,f6)

    printf("\n\n\t** b0 = %f",b0)
    printf("\n\t** b1 = %f",b1)
    printf("\n\t** b2 = %f",b2)
    printf("\n\t** f_2(%d) = %f",x,f2(x))
//end