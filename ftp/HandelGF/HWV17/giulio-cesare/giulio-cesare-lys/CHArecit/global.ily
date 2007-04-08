<<
  {
    \time 4/4
    \key c \major
    \set Score.measureLength = #(ly:make-moment 2 4) s2
    \set Score.measureLength = #(ly:make-moment 4 4) s1*8
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4) s1*18
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4) s1*5
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4) s1*18
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4) s1*3
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \bar "|."
  }
  \tag #'recit {
    s2 s2  
    s4
    s2^\markup \scenic "(snuda il brando.)"
    s2
    s4 s1*6 s1
    s4 s1*4
    s1 s1 s4
    s2
    s4 s1*4 s2.
    s4 s2
    s4
    s4 s2
    s2. s1*5
    s2.
    s4 s1*4
    s2 s2 s8. 
    \once \override TextScript #'self-alignment-X = #1 
    s16^\markup \scenic "(Cleopatra parte.)"
    s1 s1 s2
    s2 s2 
    s2 s1*3
    s1 s1*2 s4
    s2. s1*2 s4
    s2. s1*2
    s1 s1*2
    s4
  }
>>