\time 4/4
\key e \major
\tag #'violini \scoreTempo \markup { \null \translate #'(0 . 2) "Allegro, mà non troppo." }
\tag #'not-violini \scoreTempo \markup "Allegro, mà non troppo."
s1*45
s2. 
\scoreFine
\bar "|."
<<
  \tag #'(cleopatra bassi) {
    \break
    s4
    s1*12
    \scoreDaCapoAndText \markup { (parte con Nireno.) }
    \bar "|."
  }
  \tag #'part {
    s4 s1*12 \scoreDaCapo
    \bar "|."
  }
>>