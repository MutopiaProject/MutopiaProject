\key sol \major
\time 4/4
s1*10 \bar ":|"
s1*8 s2 \bar "|:" s2 s1*4
\firstAndSecondTime {
  \set Score.measureLength = #(ly:make-moment 2 4)
  s2
} {
  \set Score.measureLength = #(ly:make-moment 4 4)
  s1
}
\bar "|."