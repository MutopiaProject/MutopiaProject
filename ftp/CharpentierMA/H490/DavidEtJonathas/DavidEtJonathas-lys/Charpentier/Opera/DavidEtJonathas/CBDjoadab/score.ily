\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newHaraKiriStaffB << \global \clef "dessus" \includeNotes "dessus" >>
      \newHaraKiriStaffB << \global \clef "haute-contre" \includeNotes "haute-contre" >>
      \newHaraKiriStaffB <<
        \global \clef "taille" \includeNotes "taille"
        { s1*9
          s1*0 _\markup { \null \translate #'(6 . 0) 
                          \line { Ritournelle comme ci-devant page
                                  \page-refII #'CBAjoadab . }
                        }
        }
      >>
      \newHaraKiriStaffB << \global \clef "basse" \includeNotes "basse" >>
    >>
    \new Staff \withLyrics <<
      { s1*8 \break }
      \characterName \markup Joadab
      \global \clef "vtaille" \includeNotes "joadab"
    >> \includeLyrics "paroles"
    \new Staff << \instrumentName \markup Basses
                  \global \clef "basse" \includeNotes "basse-continue"
                  \includeFigures "chiffres" >>
  >>
  \layout {
    indent = \largeindent
    ragged-last = ##t
  }
  \midi { }
}
