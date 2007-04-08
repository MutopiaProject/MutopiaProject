\override Staff.TimeSignature #'transparent = ##t
\time 4/4
\key c \major
\partial 2.
s2.
s4
s2.
s1*4
s1
s1*5 
\set Score.measureLength = #(ly:make-moment 5 4)
s2.
s2
\set Score.measureLength = #(ly:make-moment 4 4)
s1*2 s4
s2.
s2
s2
s1*9
\set Score.measureLength = #(ly:make-moment 3 4)
