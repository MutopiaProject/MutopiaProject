<<
  {
    \time 4/4
    \key c \major
    s1
    \set Score.measureLength = #(ly:make-moment 5 4)
    s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4)
    s1*11
    \set Score.measureLength = #(ly:make-moment 5 4)
    s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4)
    s1*2
    \set Score.measureLength = #(ly:make-moment 5 4)
    s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4)
    s1*4
    \set Score.measureLength = #(ly:make-moment 6 4)
    s1.
    \set Score.measureLength = #(ly:make-moment 4 4)
    s1*4
    \set Score.measureLength = #(ly:make-moment 5 4)
    s1 s4
    \bar "|."
  }
  \tag #'recit {
    s1
    s4 s8 s8^\markup \scenic \column {
      "(Mentre Cesare corre a Cleopatra, si chiude"
      "il Parnasso, e torna la Scena come prima.)"
      \hspace #1
    }
  }
>>