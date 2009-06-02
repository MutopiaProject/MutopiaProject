\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new Staff << \instrumentName \markup Dessus
                    \global \clef "dessus" \includeNotes "dessus" >>
      \new Staff << \instrumentName \markup Haute-contres
                    \global \clef "haute-contre" \includeNotes "haute-contre" >>
      \new Staff << \instrumentName \markup Tailles
                    \global \clef "taille" \includeNotes "taille" >>
    >>
    \new Staff \withLyrics <<
      \characterName \markup Joadab
      \global \clef "vtaille" \includeNotes "joadab"
    >> \includeLyrics "paroles"
    \new Staff << \instrumentName \markup Basses
                  \global \clef "basse" \includeNotes "basse-continue"
                  \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { }
}