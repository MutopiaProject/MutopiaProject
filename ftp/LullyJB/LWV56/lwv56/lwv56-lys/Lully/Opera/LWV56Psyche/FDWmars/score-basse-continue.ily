\score {
  \new StaffGroupNoBar <<
    \newTinyStaff \withLyrics <<
      \global \clef "vbasse" \includeNotes "mars" 
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { }
}
