\score {
  \new Staff \withLyrics <<
    \characterName \markup Joadab
    \global \clef "vtaille"
    { \includeNotes "joadab" 
      \once \override TextScript #'extra-offset = #'(4 . 5)
      s4 -\markup \column {
        \line { Ritournelle comme }
        \line { ci-devant page \page-refII #'CBAjoadab . }
      }
    }
  >> \includeLyrics "paroles"
  \layout {
    indent = \largeindent
    ragged-last = ##t
  }
}
