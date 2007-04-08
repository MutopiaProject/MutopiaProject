\key re \minor
\time 2/2
\partial 4 s4 s1*10
\firstAndSecondTime {
  \set Score.measureLength = #(ly:make-moment 3 4)
  s2.
} {
  \set Score.measureLength = #(ly:make-moment 8 4)
  s1*2
}
\time 3/2
s1.*8
\time 2/2
s1*8
\time 2/2
s1*7 s2. \bar ":|"