<<
  {
    \time 4/4
    \key c \major
    s1*11
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4) s1*5
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \bar "|."
  }
  \tag #'recit {
    s1 s1 s4
    s2. s1*3 s2.
    s4 s1 s2.
    s4^\markup \scenic "(alle  guardie.)" 
    s8 s8^\markup \scenic \column { "(una guardia in-" "catena Cleopatra.)" } s2
    s4 s1 s2
    s2.
  }
>>