\keys do \major
\time 4/4
s1*8 \alternatives s1 s2 \bar "|:" s2 s1*12
\alternatives {
  \set Score.measureLength = #(ly:make-moment 2 4)
  s2
} {
  \set Score.measureLength = #(ly:make-moment 4 4)
  s1
}
\bar "|."
