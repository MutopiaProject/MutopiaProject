\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \characterName \markup Soprano
      \global \clef "treble" \includeNotes "vsoprano"
    >> \includeLyrics "lyrics"
    \new Staff <<
      \instrumentName \markup Bassi
      \global \clef "bass" \includeNotes "bassi"
      \includeFigures "figures" >>
  >>
  \layout { indent = \largeindent }
  \midi { }
}