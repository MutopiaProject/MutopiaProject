\key re \minor
\time 2/2
\partial 4 s4 s1*9 \firstAndSecondTime {
  \set Score.measureLength = #(ly:make-moment 3 4)
  s2.
} {
  \set Score.measureLength = #(ly:make-moment 4 4)
  s2
}
s2
\time 3/2
s1.*4
\time 2/2
s1*4
\time 4/4
s1*2
\time 2/2
s1*2
s4 \bar "|:" s2. s1
\firstAndSecondTime {
  \set Score.measureLength = #(ly:make-moment 1 4)
  s4
} {
  \set Score.measureLength = #(ly:make-moment 4 4)
  \time 2/2
  s1
}
\bar "|."
