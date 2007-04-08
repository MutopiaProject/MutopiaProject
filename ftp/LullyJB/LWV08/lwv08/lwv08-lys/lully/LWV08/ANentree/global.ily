\key re \minor
\time 4/4
\partial 4 s4 s1*11

\firstAndSecondTime {
  \set Score.measureLength = #(ly:make-moment 3 4)
  s2.
} {
  \set Score.measureLength = #(ly:make-moment 4 4)
  s1
}
\time 2/2
s1*5
\time 2/2
s1*4
\time 2/2
s1*3
\time 4/4
s1*3
\firstAndSecondTime {
  \set Score.measureLength = #(ly:make-moment 4 4)
  s1
} {
  \set Score.measureLength = #(ly:make-moment 3 4)
  s2.
}
\bar "|."