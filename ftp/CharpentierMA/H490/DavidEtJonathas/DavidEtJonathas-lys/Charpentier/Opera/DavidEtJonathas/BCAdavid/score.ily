\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newHaraKiriStaff <<
        \instrumentName \markup Violons
        \global \clef "dessus" \includeNotes "dessus" >>
      \newHaraKiriStaff <<
        \instrumentName \markup Haute-contres
        \global \clef "haute-contre" \includeNotes "haute-contre" >>
      \newHaraKiriStaff <<
        \instrumentName \markup Tailles
        \global \clef "taille" \includeNotes "taille" >>
      \newHaraKiriStaff <<
        \instrumentName \markup Basses
        \global \clef "basse" \includeNotes "basse" >>
    >>
    \new Staff \withLyrics <<
      \characterName \markup David
      \global \clef "vhaute-contre" \includeNotes "david"
    >> \includeLyrics "paroles"
    \new Staff << \instrumentName \markup { Basse continue }
                  \global \clef "basse" \includeNotes "basse-continue"
                  \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { }
}