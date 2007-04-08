<<
  {
    \time 4/4
    \key c \major
    s1*6
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4) s1*13
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4) s1*11
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4) s1*9
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4) s1*4
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4) s1
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \bar "|."
  }
  \tag #'recit {
    s1 s1*6 s4
    s1 s1*3 s1
    s2. s8 
    \once \override TextScript #'padding = #2
    s8^\markup \scenic \right-align \column { "(Sesto e Cornelia"
                                               "che s'inchinocchia.)" }
    s1 s1*7 s4
    s1 s4
    s2. s1*3 s4
    s2. s1*3 s2.
    s4
    s2 s8^\markup \scenic "(si abbracciano.)" s4. s2
    s2. s1*2 s8
    \once \override TextScript #'padding = #2
    s8^\markup \right-align \scenic "(Dà la corona e lo scettro di Tolomeo a Cesare.)"
    s2. s1*7 s4
    s1 s1*4
    s4
  }
>>