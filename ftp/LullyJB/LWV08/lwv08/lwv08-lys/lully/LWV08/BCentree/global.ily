\key sol \major
\time 2/2
s1*5
\time 2/2
s1*5
\firstAndSecondTime {
  \set Score.measureLength = #(ly:make-moment 8 4)
  s1*2
} s1. s2
\set Score.measureLength = #(ly:make-moment 4 4)
s1*7
\time 3/4
s2.*8
\bar "|:"
s2.*5
\firstAndSecondTime s2. {
  \time 2/2
  \set Score.measureLength = #(ly:make-moment 8 4)
  s1*2
}
\bar "|."
