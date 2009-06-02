\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new Staff << \instrumentName \markup Violons
                    \global \clef "dessus" \includeNotes "dessus" >>
      \new Staff << \instrumentName \markup Haute-contres
                    \global \clef "haute-contre" \includeNotes "haute-contre" >>
      \new Staff << \instrumentName \markup Tailles
                    \global \clef "taille" \includeNotes "taille" >>
    >>
    \new Staff \withLyrics <<
      \characterName \markup Saül
      \global \clef "vbasse" \includeNotes "saul"
    >> \includeLyrics "paroles"
    \new Staff << \instrumentName \markup Basses
                  \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { }
}