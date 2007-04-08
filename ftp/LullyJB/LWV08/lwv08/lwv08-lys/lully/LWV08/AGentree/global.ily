\key re \minor
\time 2/2
\partial 4 s4 s1*6 s2. \bar ":|"
s4 s1*4 s4. \bar "|:" s8 s2 s1
 \firstAndSecondTime { 
   \set Score.measureLength = #(ly:make-moment 3 8)
   s4. 
 } { 
   \set Score.measureLength = #(ly:make-moment 3 4)
   s2. 
 }
\bar "|."