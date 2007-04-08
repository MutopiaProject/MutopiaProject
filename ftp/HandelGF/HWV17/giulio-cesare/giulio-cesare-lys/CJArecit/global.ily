<<
  {
    \time 4/4
    \key c \major
    s1*6
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4) s1*12
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4) s1*20
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4) s1*3
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \bar "|."
  }
  \tag #'recit {
    s2.
    s4 s2
    s2 s2
    s2 s1*4
    s4 s2.
    s4 s1*11 s2.
    s2 s4
    s2
    s4 s1*5 s4
    s2. s1 s4
    s2. s1*2 s4
    s2. s1*2 s4
    s4
    s2 s1 s2.
    s4 s1 s4
    s2
    s4 s1 s2
    s2^\markup { \hspace #1 \translate #(cons -3 0) \scenic "(parte.)" }
    s4 s1*3
    s1^\markup \scenic "(parte con le favorite.)"
  }
>>