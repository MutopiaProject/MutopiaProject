\score {
  \new StaffGroupNoBar <<
    \newTinyStaff \withLyrics <<
      \global \includeNotes "jupiter-venus-psyche-amour"
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { }
}
