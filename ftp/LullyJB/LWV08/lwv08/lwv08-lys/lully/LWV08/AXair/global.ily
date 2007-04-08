\key sol \major
\time 4/4 s1
\time 2/2 s1*9
\firstAndSecondTime s1 { \time 3/4 s2. }
s2.*10
s4 \bar "|:" s2 s2.*4
\firstAndSecondTime {
  \set Score.measureLength = #(ly:make-moment 1 4)
  s4
} {
  \set Score.measureLength = #(ly:make-moment 3 4)
  s2.
}
\bar "|."