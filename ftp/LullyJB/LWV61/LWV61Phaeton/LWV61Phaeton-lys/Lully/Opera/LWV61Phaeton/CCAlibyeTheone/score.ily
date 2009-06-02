\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newHaraKiriStaff << \global \clef "dessus" \includeNotes "dessus1" >>
      \newHaraKiriStaff << \global \clef "dessus" \includeNotes "dessus2" >>
    >>
    \newHaraKiriStaffB \withLyrics <<
      \global \clef "vbas-dessus" \includeNotes "theone"
    >> \includeLyrics "paroles-theone"
    \newHaraKiriStaffB \withLyrics <<
      \global \clef "vbas-dessus" \includeNotes "libye"
    >> \includeLyrics "paroles-libye"
    \new Staff <<
      \global \clef "basse" \includeNotes "basse-continue"
      \includeFigures "chiffres"
    >>
  >>
  \layout { }
  \midi { }
}