\time 4/4
\key c \major

s1 
s2.

s4 
s2.

s4 
s1

s1 
s1
\set Score.measureLength = #(ly:make-moment 5 4) 
s2

s2. 
\set Score.measureLength = #(ly:make-moment 4 4) 
s1 s4

s2. 
s1 s2.

s4 
s1*5 s2.

s4 
s1

s1 

s1 

s1 
s1*8
\set Score.measureLength = #(ly:make-moment 5 4) 
s1 
\tag #'down {
  \once \override Voice.TextScript #'self-alignment-X = #RIGHT
  \once \override Voice.TextScript #'extra-offset = #'(2 . -1)
}  
s4 -\tag #'down _\markup \scenic { (parte Cleopatra.) }
\bar "|."
