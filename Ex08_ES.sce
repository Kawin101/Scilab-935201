clc; clear all;
es_1 = 1
es_2 = (1-(-0.2))
es_3 = ( es_2 + (((-0.2)^2)/2))
es_4 = ( es_3 - (((-0.2)^3)/6))
es_5 = ( es_4 + (((-0.2)^4)/(4*3*2*1)))
es_6 = ( es_5 - (((-0.2)^5)/(5*4*3*2*1)))

printf("\nes_1 = %d\n\n",es_1)
printf("es_2 = %.1f\n\n",es_2)
printf("es_3 = %.2f\n\n",es_3)
printf("es_4 = %f\n\n",es_4)
printf("es_5 = %f\n\n",es_5)
printf("es_6 = %f\n",es_6)