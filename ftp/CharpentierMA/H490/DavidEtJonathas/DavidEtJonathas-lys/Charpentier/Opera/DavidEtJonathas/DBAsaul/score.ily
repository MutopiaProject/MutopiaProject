\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new GrandStaff <<
        \newHaraKiriStaff <<
          \global \clef "dessus"
          \instrumentName \markup Violons
          { \includeNotes "dessus-a" \includeNotes "dessus-b1" \includeNotes "dessus-c" } >>
        \newHaraKiriStaffB << \global \clef "dessus"
                              { s1*28 s1*8 s1*24 s1*7 s1*10 \break
                                \includeNotes "dessus-b2" } >>
      >>
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
      \characterName \markup Saül 
      \global \clef "vbasse" \includeNotes "saul"
    >> \includeLyrics "paroles"
    \new Staff <<
      \instrumentName \markup "Basse continue"
      \global \clef "basse" \includeNotes "basse-continue"
      \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { }
}
