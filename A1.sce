//Name : Kawinphop Chomnikorn
//SSID : 633410142-5
//A1
clc; clear all;
//input value
e = exp(0)
Exact = (%pi*e^(0)+cos(10)) //ค่าจริง
Approximate = 2.297121 //ค่าประมาณ
E = (Exact-Approximate)
E_abs = abs(Exact-Approximate)
E_rel = (E_abs/abs(Exact))
E_per = (E_rel*100)
//output display 
printf("\n Exact = %.6f \n ",Exact)
printf("\n Approximate = %.6f \n ",Approximate)
printf("\n 1.Error = %.6f",E)
printf("\n\n 2.Absolute Error (E.abs) = %.6f",E_abs)
printf("\n\n 3.Relative Error (E.rel) = %.6f",E_rel)
printf("\n\n 4.Percentage Error (E.per) = %.6f (Persentage)\n",E_per)
