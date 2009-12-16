\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \characterName \markup Contr'alto
      \global \clef "treble" \includeNotes "valto"
    >> \includeLyrics "lyrics1"
    \new Staff \withLyrics <<
      \characterName \markup Tenore
      \global \clef "G_8" \includeNotes "vtenore"
    >> \includeLyrics "lyrics2"
    \new Staff <<
      \instrumentName \markup Bassi
      \global \clef "bass" \includeNotes "bassi"
      \includeFigures "figures" >>
  >>
  \layout { indent = \largeindent }
  \midi { }
}