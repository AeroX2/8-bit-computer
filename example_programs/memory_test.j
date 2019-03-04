opp 1
load rom c 0 //size=1
save c mar
save a ram

opp 0
load rom c 1 //arr1[0]=0
save c mar
save a mar

opp 1
load rom c 2 //arr2[0]=1
save c mar
save a ram

opp 0
load rom c 3 //i=0
save c mar
save a ram

:repeat
load rom c 3
save c mar
load ram c   //i
load rom a 2 //arr2
opp a+b      
save a mar
load ram a   //arr2[i]
mov a d      
load rom c 3
save c mar
load ram c   //i
load rom a 1 //arr1
opp a+b
save a mar
load ram a   //arr1[i]
mov a c
mov d a
opp a.+b     //arr1[i] + arr2[i]
load rom c 4
save c mar
save a ram   //fn = ...

load rom c 3
save c mar
load ram c   //i
load rom a 2 //arr2
opp a+b      
save a mar
load ram a   //arr2[i]
mov a d
load rom c 3
save c mar  
load ram c   //i
load rom a 1 //arr1
opp a+b
save a mar
save d ram   //arr1[i] = arr2[i]

load rom d 4
save d mar
load ram d   //fn
load rom c 3
save c mar
load ram c   //i
load rom a 2 //arr2
opp a+b
save a mar  //arr2[i]
save d ram  //arr2[i] = fn

load rom a 3
save a mar
load ram a  //i
load rom c 0
save c mar
load ram c  //size
opp a+1     
cmp a c 
load rom d 3
save d mar
save a ram  //i++
jmp >= repeat //i < size
