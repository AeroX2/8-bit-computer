:start
load rom a 1
load rom c 0
:repeat
mov a d
opp a+b
out a
mov d c
jmpa >= repeat
jmpa start
