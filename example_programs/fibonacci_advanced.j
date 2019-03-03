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

//Variable locations
load rom a 7
load rom c 15
load rom d 16

:repeat
save a mar
load ram a

save c mar
load ram c

opp a.+b

load rom c 15
save c mar
load ram c
opp b-1
mov a c

mov d a
opp a-1
mov a d
jmp <= nextfib

load rom a 7
save a mar
load ram a
opp a-1

:nextfib
