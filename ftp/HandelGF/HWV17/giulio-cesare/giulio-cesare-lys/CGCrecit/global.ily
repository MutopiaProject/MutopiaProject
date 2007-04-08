<<
  {
    \time 4/4
    \key c \major
    \set Score.measureLength = #(ly:make-moment 3 4) s2.
    \set Score.measureLength = #(ly:make-moment 4 4) s1*9
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4) s1*9
    \set Score.measureLength = #(ly:make-moment 3 4) s2.
  }
  \tag #'recit {
    s2. s1*9 s2.
    s2 s2.
    s4 s2
    s2 s2
    s2 s1*2 s2
    s2 s1*2
    s2 s4^\markup \scenic "(va per tornar al suo luogo.)"
  }
>>
  