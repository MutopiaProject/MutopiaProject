\key sol \major
\time 3/4
\partial 4 s4 s2.*7 \firstAndSecondTime {
  \set Score.measureLength = #(ly:make-moment 2 4)
  s2
} {
  \set Score.measureLength = #(ly:make-moment 3 4)
  s2.
}
s2.*13
\firstAndSecondTime s2. s2
\bar "|."