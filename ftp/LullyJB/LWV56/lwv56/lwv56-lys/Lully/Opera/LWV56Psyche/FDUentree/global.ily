\keys re \minor
\time 6/4 \partial 4. s4. s1.*5
\alternatives {
  \set Score.measureLength = #(ly:make-moment 9 8)
  s1 s8
} { \time 2/2 s1 }
s1*9
\alternatives {
  \set Score.measureLength = #(ly:make-moment 3 4)
  s2.
} { \time 6/4 s1 s8 }
\bar "||"
