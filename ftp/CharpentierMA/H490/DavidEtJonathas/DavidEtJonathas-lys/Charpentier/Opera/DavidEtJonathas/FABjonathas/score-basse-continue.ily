\score {
  \new StaffGroupNoBar <<
    \newTinyStaff \withLyrics <<
      \characterName \markup Jonathas
      \global \clef "vdessus" \includeNotes "jonathas"
    >> \includeLyrics "paroles"
    \new Staff <<
      \instrumentName \markup { Basse continue }
      \global \clef "basse" \includeNotes "basse-continue"
    >>
  >>
  \layout { indent = \largeindent }
}
