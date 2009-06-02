\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newHaraKiriStaffB << \global \clef "dessus" \includeNotes "dessus1" >>
      \newHaraKiriStaffB << \global \clef "dessus" \includeNotes "dessus2" >>
    >>
    \new ChoirStaff <<
      \new Staff \withLyrics <<
        \global \clef "vbasse" \includeNotes "saul-achis"
      >> \includeLyrics "paroles1"
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vbasse" \includeNotes "achis"
      >> \includeLyrics "paroles2"
    >>
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { }
  \midi { }
}