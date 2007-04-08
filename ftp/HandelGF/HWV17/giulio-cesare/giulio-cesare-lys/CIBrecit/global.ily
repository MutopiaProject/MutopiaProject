<<
  {
    \time 4/4
    \key c \major
    s1
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4) s1*15
    \bar "|."
  }
  \tag #'recit {
    s1 s1 s4 s1*2
    s8 s8^\markup \scenic \column {
      "(pone la spada sopra"
      "una tavola.)" 
    } s2.
    s1 s2.
    s4 s1
    s1 s1*4
    s2 s8.
    \once \override TextScript   #'self-alignment-X = #1
    \once \override TextScript   #'padding = #2
    s16^\markup \scenic \column {
      \line { (Cornelia prende il fazzoletto, \hspace #1 }
      \line { e poi lo getta con sdegno.) }
    }
    s4
  }
  \tag #'down {
    s1
    s1 s4
    s1*14 s2. 
    \once \override TextScript #'self-alignment-X = #1
    \once \override TextScript #'padding = #2
    s4_\markup \scenic \column { 
      "(Mentre Sesto vuol prendere la spada di Tolomeo," 
      "vien sorpreso da Achilla, che entra in furia, e la prende.)"
    }
  }
>>