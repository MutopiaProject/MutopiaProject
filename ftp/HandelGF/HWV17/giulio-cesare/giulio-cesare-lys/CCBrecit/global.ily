\time 4/4
<<
  {
    \key c \major
    s1*4
    \set Score.measureLength = #(ly:make-moment 7 4) s1 s2.
    \set Score.measureLength = #(ly:make-moment 4 4) s1*4
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4) s1*3
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \bar "|."
  }
  \tag #'recit {
    s1
    s1 s2.
    s4
    s1 s1
    s2.
    s1*2 s2.
    s4
    s1
    s1^\markup \scenic "(vuol partire.)"
  }
>>
