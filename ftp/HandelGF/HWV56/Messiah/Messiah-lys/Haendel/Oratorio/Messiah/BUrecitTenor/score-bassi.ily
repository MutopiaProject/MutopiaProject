\score {
  \new StaffGroupNoBar <<
    \newTinyStaff \withLyrics <<
      \global \clef "G_8" \includeNotes "vtenore"
    >> \includeLyrics "lyrics"
    \new Staff << \global \clef "bass" \includeNotes "bassi"
                  \includeFigures "figures" >>
  >>
  \layout { }
}