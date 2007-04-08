\key sol \major
\time 2/2
\partial 4 s4 s1*10
\firstAndSecondTime {
  \set Score.measureLength = #(ly:make-moment 7 4)
  s1 s2.
} {
  \set Score.measureLength = #(ly:make-moment 8 4)
  s1*2
}
\set Score.measureLength = #(ly:make-moment 4 4)
s1*6
\time 3/2
s1.*4
s2 s4. \bar "|:" s8 s2 s1.*2
\firstAndSecondTime { 
  \set Score.measureLength = #(ly:make-moment 4 4)
  s1
} {
  \set Score.measureLength = #(ly:make-moment 7 4)
  s1 s2.
}
\bar "|."