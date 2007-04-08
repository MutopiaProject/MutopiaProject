#(override-auto-beam-setting '(end 1 32 * *) 1 4)
#(override-auto-beam-setting '(end 1 8 * *) 2 4)
\time 4/4
\key g \major
\scoreTempo \markup "Andante, e staccato."
s1*5
\scoreSegno
s1*18
s4 
\scoreFine
s2.
s1*10
\scoreDalSegnoAndText \markup "(parte.)"
\bar "||"
