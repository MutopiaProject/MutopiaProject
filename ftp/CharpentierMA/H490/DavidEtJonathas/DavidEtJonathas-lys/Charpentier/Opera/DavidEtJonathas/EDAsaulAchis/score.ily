\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newHaraKiriStaffB << \global \clef "dessus" \includeNotes "dessus1" >>
      \newHaraKiriStaffB << \global \clef "dessus" \includeNotes "dessus2" >>
    >>
    \newHaraKiriStaffB \withLyrics <<
      \global \clef "vbasse" \includeNotes "saul"
    >> \includeLyrics "paroles2"
    \newHaraKiriStaff \withLyrics <<
      \global \clef "vbasse" \includeNotes "achis-saul"
    >> \includeLyrics "paroles1"
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { }
  \midi { }
}