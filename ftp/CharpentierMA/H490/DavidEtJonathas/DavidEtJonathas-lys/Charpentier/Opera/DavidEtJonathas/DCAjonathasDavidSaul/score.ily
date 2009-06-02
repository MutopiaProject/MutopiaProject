\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newHaraKiriStaffB << \global \clef "dessus" \includeNotes "dessus1" >>
      \newHaraKiriStaffB << \global \clef "dessus" \includeNotes "dessus2" >>
    >>
    \new ChoirStaff <<
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vdessus" \includeNotes "jonathas"
      >> \includeLyrics "paroles2"
      \new Staff \withLyrics <<
        \global \clef "vdessus" \includeNotes "jonathas-saul-david"
      >> \includeLyrics "paroles1"
    >>
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { }
  \midi { }
}