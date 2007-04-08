\time 4/4
\key c \major

s1 
s1*4
\override Staff.TimeSignature   #'transparent = ##t
\set Score.measureLength = #(ly:make-moment 5 4) 
s2 

s2. 
\set Score.measureLength = #(ly:make-moment 4 4) s1*4
\set Score.measureLength = #(ly:make-moment 5 4) s1 s4
\bar "|."
