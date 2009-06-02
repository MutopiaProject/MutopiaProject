\score {
  \new StaffGroupNoBar <<
    \newTinyStaff \withLyrics <<
      \characterName \markup Joadab
      \global \clef "vtaille" \includeNotes "joadab"
    >> \includeLyrics "paroles"
    \new Staff << \instrumentName \markup Basses
                  \global \clef "basse" \includeNotes "basse-continue"
                  { s1*8 \break s1
                    \once \override TextScript #'extra-offset = #'(7 . 5)
                    s4 -\markup \column {
                      \line { Ritournelle comme }
                      \line { ci-devant page \page-refII #'CBAjoadab . }
                    }
                  }
                  \includeFigures "chiffres" >>
  >>
  \layout {
    indent = \largeindent
    ragged-last = ##t
  }
}
