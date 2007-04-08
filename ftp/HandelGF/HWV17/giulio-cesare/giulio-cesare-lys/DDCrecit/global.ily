<<
  {
    \time 4/4
    \key c \major
    s1*5
    \set Score.measureLength = #(ly:make-moment 6 4) s1 s2
    \set Score.measureLength = #(ly:make-moment 4 4) s1*3
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4) s1*37
    \set Score.measureLength = #(ly:make-moment 5 4) s1 s4
    \set Score.measureLength = #(ly:make-moment 4 4) s1*4 s2 s8
  }
  \tag #'recit {
    s1*3 \break
    \once \override TextScript #'padding = #2
    s1^\markup \scenic {  \hspace #1
                          \translate #'(-5 . 0) \column {
                            "(Achilla su'l margine del "
                            "porto, mortalmente ferito.)" }
                        }
    s1*2 s2 s1 \break 
    s1*2 s2
    \once \override TextScript #'self-alignment-X = #RIGHT
    s4^\markup \scenic "(si ritira in disparte.)"
    s2 s1 s4
    s2. s4
    s2. s4
    s2. s1*10 s2
    s2 s2
    s2 s4
    s2. s1*2
    s2.
    s4 s2
    s2 s1*16 s2
    s2.^\markup \scenic "(spira.)"
    s1 s2
    s2
  }
>>