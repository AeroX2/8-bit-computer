load rom d 1

:start
load rom c 2

:startdivide
mov d a
:divide
opp a-b
jmp = nextprime
jmp .> divide

opp b+1
mov a c
cmp a d
jmp >= printprime
jmp startdivide

:printprime
out d

:nextprime
mov d a
opp a+1
mov a d

jmp start

