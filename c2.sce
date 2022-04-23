clc; clear all;
//input value
    x0=1, x1=6
    f(x0) = cos(x0), f(x1) = cos(x1)
    x = 2;
//display
    b0 = f(x0)
    b1 = ( (f(x1) - f(x0)) / (x1-x0) )  
    f1(x) = b0 + b1 * (x - x0)
    printf("\n ** P.2 ** \n Mr.Kawinphop Chomnikorn \n SSID: 633410142-5 (Sec.1) \n")
    printf("\n* x0 = %d , f(x0) = f(1) , f(1) = %f",x0,f(x0))
    printf("\n* x1 = %d , f(x1) = f(6) , f(6) = %f",x1,f(x1))
    
    printf("\n\n\t** b0 = %f",b0)
    printf("\n\t** b1 = %f",b1)
    printf("\n\t** f_1(%d) = %f",x,f1(x))
//end