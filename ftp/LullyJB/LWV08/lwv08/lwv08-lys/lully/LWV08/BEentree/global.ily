\key re \minor
\time 2/2
\partial 4 s4 s1*15
\firstAndSecondTime {
  \set Score.measureLength = #(ly:make-moment 3 4)
  s2.
} {
  \set Score.measureLength = #(ly:make-moment 4 4)
  s1
}
s1*4
\time 2/2 
s1*4
\time 3/2
s2 \bar "|:" s1
s1.*5
\firstAndSecondTime {
  \set Score.measureLength = #(ly:make-moment 2 4)
  s2
} {
  \time 4/4
  \set Score.measureLength = #(ly:make-moment 7 4)
  s1 s2.
}
\bar "|."