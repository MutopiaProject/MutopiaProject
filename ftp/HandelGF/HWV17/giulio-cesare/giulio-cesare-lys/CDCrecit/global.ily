<<
  {
    \time 4/4
    \key c \major
    s1*20
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \bar "|."
  }
  \tag #'recit {
    s1 s1 s2
    s2 s1 s2
    s2 s1 s4
    s2. s1 s4
    s2.
    s1 s4 s2.^\markup \scenic \column {
      "(stende la destra al seno di" 
      "Cornelia, che sdegnosa si ritira.)"
    }
    s2
    s2
    s1*3 s2^\markup \scenic "(parte.)"
    s2
  }
>>