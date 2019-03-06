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

:start
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

load rom a 11
save a mar
load ram a
opp a
jmp = dontsetcarry
opp -1
opp a-1
:dontsetcarry

mov d a
opp a.+b     //arr1[i] + arr2[i]
load rom c 10
save c mar
save a ram   //fn = ...

nop
nop
nop

load rom a 0
jmp >= carrynotset
load rom a 1
:carrynotset
load rom c 11
save c mar
save a ram

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

load rom a 10
save a mar
load ram a    //fn
cmp a a
jmp = nextfib

load rom c 100
load rom d 0

:loop2
load rom c 12 //Save the remainder
save c mar
save a ram
load rom c 100

opp a-b 
jmp .<= loop2exit
mov a c

mov d a
opp a+1
mov a d

mov c a
jmp loop2
:loop2exit 
mov d a    //a = a/100

cmp d d
jmp = nooutput1
load rom c 48
opp a+b
out a
load rom c 128
opp a|b
out a      //(a+48)|0x10000000
:nooutput1

load rom c 12 //Load the remainder
save c mar
load ram a

load rom c 10
load rom d 0
:loop3
load rom c 12 //Save the remainder
save c mar
save a ram
load rom c 10

opp a-b 
jmp .<= loop3exit
mov a c

mov d a
opp a+1
mov a d

mov c a
jmp loop3
:loop3exit 

mov d a    //a = a/10
cmp d d
jmp = nooutput
load rom c 48
opp a+b
out a
load rom c 128
opp a|b
out a      //(a+48)|0x10000000
:nooutput

load rom c 12 //Get the remainder
save c mar
load ram a

load rom c 48
opp a+b
out a
load rom c 128
opp a|b
out a      //(a+48)|0x10000000

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

jmp start
