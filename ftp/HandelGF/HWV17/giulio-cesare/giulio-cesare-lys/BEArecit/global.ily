\time 4/4
\key c \major

s1 
\override Staff.TimeSignature   #'transparent = ##t
s1*10
\set Score.measureLength = #(ly:make-moment 5 4)
s4.
\tag #'recit {
    \once \override Voice . TextScript #'self-alignment-X = #1
    \once \override Voice . TextScript #'padding = #1
}
s8 -\tag #'recit ^\markup \scenic "(entra Nireno.)"

s2. 
\set Score.measureLength = #(ly:make-moment 4 4)
s2.

s4 
s2.

s4 
s1 s4

s2. 
s2

s2 
s4

s2. 
s4

s2. 
s1*2

s2. 

s4 
\set Score.measureLength = #(ly:make-moment 5 4)
s1 s4
\set Score.measureLength = #(ly:make-moment 4 4)

s1 
s1*5 s4

s2. 
s2

s2 
s1*7
\set Score.measureLength = #(ly:make-moment 5 4)
s2 s2 s8
\tag #'recit \once \override Voice . TextScript #'self-alignment-X = #1
s8 -\tag #'recit ^\markup \scenic "(entra Tolomeo.)"
\set Score.measureLength = #(ly:make-moment 4 4)

s1 
s1 s4

s2. 
s1*3 s4

s2. 
s1*3
\set Score.measureLength = #(ly:make-moment 5 4)
s2.

s2 
\set Score.measureLength = #(ly:make-moment 4 4)
s1*5
\set Score.measureLength = #(ly:make-moment 5 4)
s1 s4 
\bar "|."
