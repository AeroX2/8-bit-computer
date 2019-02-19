load rom c 42
:start
in a
opp a-b
jmpa < a less
jmpa > a greater
jmpa = a equal
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