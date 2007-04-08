<<
  {
    \time 4/4
    \key c \major
    s1*4
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4) s1*13
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4) s1*6
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \bar "|."
  }
  \tag #'recit {
    s1  s1*3
    s1
    \once \override TextScript   #'self-alignment-X = #'1
    s4^\markup \scenic "(tira la spada per uccidersi.)"
    s1  s1*2 s4
    s2.  s1 s2
    s2  s1*7
    s8 s8^\markup \scenic "(parte.)" s2
    s2 
  }
>>
