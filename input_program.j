load rom c 42
:start
in a
cmp a c
jmp .< less
jmp .> greater
jmp = equal
:less
opp -1
jmp end
:greater
opp 1
jmp end
:equal
opp 0
jmp end
:end
out a
jmp start
