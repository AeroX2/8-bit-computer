load rom a 4
save a ram[0]

load rom a 1
save a ram[1]

load rom a 0
save a ram[6]

:start
load rom a 0
save a ram[5] //i=0

:repeat
load ram[5] c //i
load rom a 6  //arr2
opp a+b      
load ram[a] a //arr2[i]

mov a d      
//c should still have i
load rom a 1 //arr1
opp a+b
load ram[a] a   //arr1[i]
mov a c

load ram[11] a
opp a
jmp = dontsetcarry
opp -1
opp a-1
:dontsetcarry

mov d a
opp a.+b     //arr1[i] + arr2[i]

//TODO BCD digits

save a ram[10]   //fn = ...

load rom a 0
jmp >= carrynotset
load rom a 1
:carrynotset
save a ram[11]

load ram[5] c
load rom a 6 //arr2
opp a+b      
load ram[a] a   //arr2[i]
mov a d
load ram[5] c   //i
load rom a 1 //arr1
opp a+b
save a mar
save d ram   //arr1[i] = arr2[i]

load ram[5] c   //i
load rom a 6 //arr2
opp a+b
save a mar  //arr2[i]
load ram[10] d   //fn
save d ram  //arr2[i] = fn

load ram[5] a  //i
load ram[0] c  //size
opp a+1     
cmp a c 
save a ram[5]  //i++
jmp < repeat //i < size

load ram[0] a
opp a-1
save a ram[5] //i=size-1
:reverseloop

//Print out BCD digits

load ram[5] a  //i
opp a-1
save a ram[5]  //i--
jmp >= reverseloop //i >= 0

jmp start
