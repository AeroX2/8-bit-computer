load rom a 57
load rom c 10
load rom d 0

:loop1
opp a-b 
jmp .<= loop1exit
mov a c

mov d a
opp a+1
mov a d

mov c a
load rom c 10
jmp loop1
:loop1exit 
mov d a    //a = a/10
