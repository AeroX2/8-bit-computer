load rom c 42
:start
in a
cmp a c
jmpa .< less
jmpa .> greater
jmpa = equal
:less
opp -1
jmpa end
:greater
opp 1
jmpa end
:equal
opp 0
jmpa end
:end
out a
jmpa start
