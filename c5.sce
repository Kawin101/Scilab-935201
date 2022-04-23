clc; clear all;
//input
    x = 8;
    x0=4, x1=5, x2=7, x3=10, x4=11, x5=13
    fx0 = 148
    fx1 = 482
    fx2 = 594
    fx3 = 930
    fx4 = 1250
    fx5 = 2520
//Process solution
while (%t) then
    //Round 1
    A = (fx1 - fx0) / (x1 - x0)
    B = (fx2 - fx1) / (x2 - x1)
    C = (fx3 - fx2) / (x3 - x2)
    D = (fx4 - fx3) / (x4 - x3)
    E = (fx5 - fx4) / (x5 - x4)
    //Round 2
    F = (B - A) / (x2 - x0)
    G = (C - B) / (x3 - x1)
    H = (D - C) / (x4 - x2)
    I = (E - D) / (x5 - x3)
    //Round 3 
    J = (G - F) / (x3 - x0)
    K = (H - G) / (x4 - x1)
    L = (I - H) / (x5 - x2)
    //Round 4
    M = (K - J) / (x4 - x0)
    N = (L - K) / (x5 - x1)
    //Round 5 
    O = (N - M) / (x5 - x0)
    //f_5(x)
    fun1 = (x-x0)
    fun2 = (fun1*(x-x1))
    fun3 = (fun2*(x-x2))
    fun4 = (fun3*(x-x3))
    fun5 = (fun4*(x-x4))
    f_5(x) =  fx0 + (A*fun1) + (F*fun2) + (J*fun3)  + (M*fun4)  + (O*fun5) 
    break;
end
//display
printf("\n ** P.5 ** \n Mr.Kawinphop Chomnikorn \n SSID: 633410142-5 (Sec.1) \n")
printf("\n1.ผลต่างอันดับที่ 1 ")
printf("\n A = %f, B = %f, C = %f, D = %f, E = %f \n",A,B,C,D,E)
printf("\n2.ผลต่างอันดับที่ 2 ")    
printf("\n F = %f, G = %f, H = %f, I = %f\n",F,G,H,I)
printf("\n3.ผลต่างอันดับที่ 3 ")
printf("\n J = %f, K = %f, L = %f\n",J,K,L)
printf("\n4.ผลต่างอันดับที่ 4 ")
printf("\n M = %f, N = %f\n",M,N)  
printf("\n5.ผลต่างอันดับที่ 5 ")
printf("\n O = %f\n",O)
printf("\n f_5(%d) = %f\n",x,f_5(x))