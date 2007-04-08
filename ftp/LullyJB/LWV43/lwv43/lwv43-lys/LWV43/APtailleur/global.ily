\key fa \major
\time 2/2
\partial 2 s2 s1*3 s2 \bar ":|:"
s2 s1*7 \firstAndSecondTime { 
  \set Score.measureLength = #(ly:make-moment 2 4)
  s2
} {
  \set Score.measureLength = #(ly:make-moment 4 4)
  s1
}
s1*3 
\set Score.measureLength = #(ly:make-moment 2 4)
s2 \bar "|."