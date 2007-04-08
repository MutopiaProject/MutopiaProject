\time 4/4
#(override-auto-beam-setting '(end * * * *) 1 4)
#(override-auto-beam-setting '(end 1 8 * *) 1 2)
\key c \major
\scoreTempo \markup "Largo."
s1*12
\override Staff.TimeSignature   #'transparent = ##t
\set Score.measureLength = #(ly:make-moment 5 4) s1 s4
\set Score.measureLength = #(ly:make-moment 4 4)
s1 s2 \key bes \major s2 s1*6
\set Score.measureLength = #(ly:make-moment 5 4) s1 s4 
\set Score.measureLength = #(ly:make-moment 4 4) s1*5
\set Score.measureLength = #(ly:make-moment 5 4) s1 s4
\bar "|."
