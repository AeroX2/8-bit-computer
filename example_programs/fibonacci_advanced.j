load rom a 4
save a ram[0]

load rom a 0x81
save a ram[1]
load rom a 0x41
save a ram[2]
load rom a 0x0
save a ram[3]
load rom a 0x0
save a ram[4]

load rom a 0x65
save a ram[6]
load rom a 0x67
save a ram[7]
load rom a 0x00
save a ram[8]
load rom a 0x00
save a ram[9]

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
load rom a 1   //arr1
opp a+b
load ram[a] a  //arr1[i]
mov a c

load ram[11] a
cmp a a
mov d a
jmp = nocarry
opp a+1
:nocarry
opp a+b         //arr1[i] + arr2[i] + carry
save a ram[10] //fn = arr1[i] + arr2[i]

//TODO: Think about a half carry flag
load rom a 0x0f
opp a&b
mov d c
mov a d
load rom a 0x0f
opp a&b
mov d c
opp a+b
load ram[11] c  //Add the carry
opp a+b
load rom c 0x0a
cmp a c
load rom a 0
save a ram[11]   //Set carry to 0
load ram[10] a   //a = fn
jmp < dontaddsix //if arr1[i]&0x0f + arr2[i]&0x0f > 9
load rom c 6
opp a+b          //fn += 6
jmp < addsix
save a ram[10]
:dontaddsix

load rom c 0xa0
cmp a c
jmp < dontaddsix2
:addsix
load rom c 0x60
opp a+b
save a ram[10]
opp 1
save a ram[11] //Set carry to 1
:dontaddsix2

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
load ram[10] d   //fn
save a mar  //arr2[i] = ...
save d ram  //arr2[i] = fn

load ram[5] a  //i
load ram[0] c  //size
opp a+1     
cmp a c 
save a ram[5]  //i++
jmp < repeat //i < size

load rom a 10
out a
load rom c 0b10000000
opp a|b
out a

load ram[0] a
opp a-1
save a ram[5] //i=size-1
:reverseloop

//Print out BCD digits

load rom a 6   //arr2
load ram[5] c  //i
opp a+b
load ram[a] a  //arr2[i]
cmp a a
jmp = noout

mov a d
load rom c 4
pause
opp a>>b
load rom c 48
opp a+b
out a   //(arr2[i] >> 4) + 48
load rom c 0b10000000
opp a|b
out a    //((arr2[i] >> 4) + 48) | 0b10000000

mov d a
load rom c 0x0f
opp a&b
load rom c 48
opp a+b
out a   //(arr2[i] & 0x0f) + 48
load rom c 0b10000000
opp a|b
out a   //((arr2[i] & 0x0f) + 48) | 0b10000000

:noout

load ram[5] a  //i
opp a-1
save a ram[5]  //i--
jmp .> reverseloop //i >= 0

jmp start
