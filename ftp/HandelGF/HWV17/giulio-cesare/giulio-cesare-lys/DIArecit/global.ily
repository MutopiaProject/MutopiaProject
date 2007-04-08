<<
  {
    \time 4/4
    \key c \major
    \set Score.measureLength = #(ly:make-moment 3 4) s2.
    \set Score.measureLength = #(ly:make-moment 4 4) s1*13
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4) s1*5
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \bar "|."
  }
  \tag #'recit {
    s2. s1 s4
    s2
    s8 s8^\markup \scenic "(snuda il ferro.)" s2
    s2 s1*8 s2
    s2 s1 s2
    \once \override TextScript   #'no-spacing-rods = ##f
    \once \override Voice . TextScript #'extra-offset = #(cons 0 -9)
    s4^\markup \scenic \column { "(Si battono, e Tolomeo vien" 
                                 "ferito, e cade morto in scena.)" }
    s2 s1*2 s2
    s2
    s1*2 s2. s4^\markup \scenic "(parte.)"
  }
>>