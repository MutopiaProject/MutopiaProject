\key sol \major
\time 2/2
s1*4
\bar ":|:"
\time 2/2
s1*6 s2 \bar "|:" s2 s1*2
\firstAndSecondTime {
  \set Score.measureLength = #(ly:make-moment 2 4)
  s2
} { 
  \set Score.measureLength = #(ly:make-moment 4 4)
  s1
}
\bar "|."