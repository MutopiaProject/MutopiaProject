\time 4/4
\key c \major

\partial 2 s2 
s1*6
\set Score.measureLength = #(ly:make-moment 5 4)
s2.

s2 
\set Score.measureLength = #(ly:make-moment 4 4)
s1*2

s1 
s2.

s4 
s1*2
\set Score.measureLength = #(ly:make-moment 6 4)
s1.
\set Score.measureLength = #(ly:make-moment 4 4)

s1 
s1*2

s1 
s1*3
\set Score.measureLength = #(ly:make-moment 5 4)
s1 s4
\bar "|."
