:start

//Load up the ram with the values
load rom c 7
opp 0
save c mar
save a ram

load rom c 15
opp 1
save c mar
save a ram

load rom c 16
load rom a 8
save c mar
save a ram


:loop1 //8 times repeat

load rom a 16
save a mar
save d ram

load rom c 8
mov d a
opp a+b
mov a c

//Technically this should be a+d but that isn't implemented
mov d a

//a[i] + c[i]
save a mar
save a ram
save c mar
save c ram
opp a.+b



jmp .<= loop1
