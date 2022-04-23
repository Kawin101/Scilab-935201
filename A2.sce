//Name : Kawinphop Chomnikorn
//SSID : 633410142-5
clc; clear all; //clear everything at about value
//input number put value
x = (-0.9)
ev = exp(x) //Exact value ค่าแม่นตรง
es = (0.5*10^(2-4))
i = 1
di = 4
//round 1
et1 = (abs(ev - 1) / abs(ev)) * (100)
printf("\n es = %.4f", es)
printf("\n ev = %.4f\n", ev)
printf("\n ex1 = %d",i)
printf("\n et1 = %.4f\n", et1)
printf(" We not can calculat ea1. Try to calculate next\n\n") 

//round 2
ex = (1 - x)
et2 = (abs(ev - ex) / abs(ev)) * (100)
ea2 = (abs(ex - 1) / abs(ex)) * (100)
printf(" ex2 = %.4f\n", ex)
printf(" et2 = %.4f\n", et2)
printf(" ea2 = %.4f\n\n", ea2)

//Creat loop while use calculate
while (%t)
    i = i + 1
    ei = 0
    if modulo(i,2) == 0 then //2,4,6,8,10,12
        ei = ei + ex
        ex = ex + (x^i) / factorial(i)
        et = (abs(ev - ex) / abs(ev)) * (100)
        ea = (abs(ex - ei) / abs(ex)) * (100)
        printf(" ex%d = %.4f\n", (i+1), ex)
        printf(" et%d = %.4f\n", (i+1), et)
        printf(" ea%d = %.4f\n\n", (i+1), ea)
        if ea < es then
            printf(" :Ea have number less then es then stop loop")
            break
        else
            clear et 
            clear ea  
            clear ei
            continue
        end
    elseif modulo(i,2) == 1 then //3,5,7,9,11
        ei = ei + ex
        ex = ex - (x^i) / factorial(i)
        et = (abs(ev - ex) / abs(ev)) * (100)
        ea = (abs(ex - ei) / abs(ex)) * (100)
        printf(" ex%d = %.4f\n", (i+1), ex)
        printf(" et%d = %.4f\n", (i+1), et)
        printf(" ea%d = %.4f\n\n", (i+1), ea)
        if ea < es then
            printf(" :Ea have number less then Es then stop loop")
            break
        else
            clear et
            clear ea 
            clear ei
            continue
        end
    end
end


