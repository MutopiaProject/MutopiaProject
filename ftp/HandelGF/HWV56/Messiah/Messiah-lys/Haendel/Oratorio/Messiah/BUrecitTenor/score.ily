\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \characterName \markup Tenore
      \global \clef "G_8" \includeNotes "vtenore"
    >> \includeLyrics "lyrics"
    \new Staff <<
      \instrumentName \markup Bassi
      \global \clef "bass" \includeNotes "bassi"
      \includeFigures "figures" >>
  >>
  \layout { indent = \largeindent }
  \midi { }
}