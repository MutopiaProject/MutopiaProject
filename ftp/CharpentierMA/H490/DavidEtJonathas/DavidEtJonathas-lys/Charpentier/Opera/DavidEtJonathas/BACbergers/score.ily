\score {
  \new StaffGroupNoBar <<
    \new StaffGroup <<
      \newHaraKiriStaffB << \global \clef "dessus" \includeNotes "dessus1" >>
      \newHaraKiriStaffB << \global \clef "dessus" \includeNotes "dessus2" >>
    >>
    \new ChoirStaff <<
      \new Staff \withLyrics <<
        \characterName \markup "Une Bergère"
        \global \clef "vdessus" \includeNotes "berger1"
      >> \includeLyrics "paroles1"
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vdessus" \includeNotes "berger2"
      >> \includeLyrics "paroles2"
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vdessus" \includeNotes "berger3"
      >> \includeLyrics "paroles3"
    >>
    \new Staff << \instrumentName \markup { Basse continue }
                  \global \clef "basse" \includeNotes "basse-continue"
                  \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { }
}
