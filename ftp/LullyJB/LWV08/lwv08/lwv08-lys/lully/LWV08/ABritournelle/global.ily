\key re \minor
\time 3/4
\partial 4 s4
s2.*4
\time 4/4
s1*2
\time 3/4
s2.*9
\firstAndSecondTime
  { \set Score.measureLength = #(ly:make-moment 2 4) s2  } 
  { \set Score.measureLength = #(ly:make-moment 3 4) s2. }
\bar "|."