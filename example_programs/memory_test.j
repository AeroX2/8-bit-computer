load rom a 4
load rom c 0 //size=4
save c mar
save a ram

nop
nop
nop

load rom a 1
load rom c 1 //arr1[0]=0
save c mar
save a ram

nop
nop
nop

load rom a 0
load rom c 6 //arr2[0]=1
save c mar
save a ram

nop
nop
nop

opp 0
load rom c 5 //i=0
save c mar
save a ram

nop
nop
nop

:repeat
load rom c 5
save c mar
load ram c   //i
load rom a 6 //arr2
opp a+b      
save a mar
load ram a   //arr2[i]
mov a d      
load rom c 5
save c mar
load ram c   //i
load rom a 1 //arr1
opp a+b
save a mar
load ram a   //arr1[i]
mov a c
mov d a
opp a.+b     //arr1[i] + arr2[i]
load rom c 10
save c mar
save a ram   //fn = ...

nop
nop
nop

load rom c 5
save c mar
load ram c   //i
load rom a 6 //arr2
opp a+b      
save a mar
load ram a   //arr2[i]
mov a d
load rom c 5
save c mar  
load ram c   //i
load rom a 1 //arr1
opp a+b
save a mar
save d ram   //arr1[i] = arr2[i]

nop
nop
nop

load rom d 10
save d mar
load ram d   //fn
load rom c 5
save c mar
load ram c   //i
load rom a 6 //arr2
opp a+b
save a mar  //arr2[i]
save d ram  //arr2[i] = fn

nop
nop
nop

load rom a 5
save a mar
load ram a  //i
load rom c 0
save c mar
load ram c  //size
opp a+1     
cmp a c 
load rom d 5
save d mar
save a ram  //i++
jmp < repeat //i < size
