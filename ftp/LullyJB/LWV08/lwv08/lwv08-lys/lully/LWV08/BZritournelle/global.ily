\key sol \minor
\time 3/4
s2.*6 \firstAndSecondTime s2. s2 \break
\bar "|:" s4 s2.*20 
\firstAndSecondTime {
  \set Score.measureLength = #(ly:make-moment 2 4)
  s2
} {
  \set Score.measureLength = #(ly:make-moment 3 4)
  s2.
}
\bar "|."
