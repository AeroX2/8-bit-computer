load rom d 13

:start
load rom c 2

:startdivide
mov d a
:divide
opp a-b
jmp >= divide
jmp = nextprime

mov c a
opp a+1
mov a c
jmpa startdivide

:printprime
out d

:nextprime
mov d a
opp a+1
mov a d

jmpa start

