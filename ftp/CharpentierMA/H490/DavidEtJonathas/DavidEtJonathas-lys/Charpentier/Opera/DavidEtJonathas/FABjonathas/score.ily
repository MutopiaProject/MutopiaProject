\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new Staff << \instrumentName \markup Dessus
                    \global \clef "dessus" \includeNotes "dessus" >>
      \new Staff << \instrumentName \markup Haute-contres
                    \global \clef "haute-contre" \includeNotes "haute-contre" >>
      \new Staff << \instrumentName \markup Tailles
                    \global \clef "taille" \includeNotes "taille" >>
      \new Staff << \instrumentName \markup Basses
                    \global \clef "basse" \includeNotes "basse" >>
    >>
    \new Staff \withLyrics <<
      \characterName \markup Jonathas
      \global \clef "vdessus" \includeNotes "jonathas"
    >> \includeLyrics "paroles"
    \new Staff <<
      \instrumentName \markup { Basse continue }
      \global \clef "basse" \includeNotes "basse-continue"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { }
}
