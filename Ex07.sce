//Name : Kawinphop Chomnikorn
//SSID : 633410142-5
//P.7 & Problem 7
clc; clear all;
//input value
e = 1
Exact = (e) //ค่าจริง
Approximate = (1.414) //ค่าประมาณ
E = (Exact-Approximate)
E_abs = abs(Exact-Approximate)
E_rel = (E_abs/abs(Exact))
E_per = (E_rel*100)
//output display 
printf("\n 1.Error = %f",E)
printf("\n\n 2.Absolute Error (E.abs) = %f",E_abs)
printf("\n\n 3.Relative Error (E.rel) = %f",E_rel)
printf("\n\n 4.Percentage Error (E.per) = %f \n",E_per)

