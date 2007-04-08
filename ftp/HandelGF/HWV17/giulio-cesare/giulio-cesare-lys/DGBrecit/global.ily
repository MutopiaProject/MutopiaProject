<<
  {
    \time 4/4
    \key c \major
    s1*7
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4) s1*7
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4) s1*8
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4) s1*5
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \bar "|."
  }
  \tag #'recit {
    \clef treble s1 s1
    s1 s4
    s2. s1*4 s4
    s1 s1*3
    s1^\markup \scenic "(corre ad abbracciarlo.)" s4
    s2. s1*2
    s4 s2.
    s4
    s1*8 s4 s1*5 s2. s4^\markup \scenic "(parte.)"
  }
>>