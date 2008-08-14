\keys fa \major
\time 6/4 \partial 4 s4 s1.*6
\alternatives {
  \set Score.measureLength = #(ly:make-moment 5 4) s2. s2
} { 
  \set Score.measureLength = #(ly:make-moment 6 4) s1.
}
\bar "|:" s1.*7
\alternatives s1. s4*5 \bar "|."