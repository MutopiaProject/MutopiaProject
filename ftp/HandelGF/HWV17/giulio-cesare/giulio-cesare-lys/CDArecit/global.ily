<<
  {
    \time 4/4
    \key c \major
    s1*9
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4) s1*5
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4) s1*4
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \bar "|."
  }
  \tag #'recit {
    s1 s2
    s2 s2.
    s4 s1*3
    s1 s2
    s2 s1 s2
    s2. s2.
    s4^\markup \scenic "(tira da parte Achilla.)" 
  }
>>
