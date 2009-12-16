\score {
  \new StaffGroupNoBar <<
    \newTinyStaff \withLyrics <<
      \global \clef "treble" \includeNotes "contralto"
    >> \includeLyrics "lyrics"
    \new Staff << \global \clef "bass" \includeNotes "bassi"
                  \includeFigures "figures" >>
  >>
  \layout { }
}