\score {
  \new StaffGroupNoBar <<
    \new StaffGroup <<
      \new Staff << \global \clef "treble" \includeNotes "violino1" >>
      \new Staff << \global \clef "treble" \includeNotes "violino2" >>
      \new Staff << \global \clef "alto" \includeNotes "viola" >>
    >>
    \new ChoirStaff <<
      \new Staff \withLyrics <<
        \global \clef "treble" \includeNotes "vcanto"
      >> \includeLyrics "lyrics1"
      \new Staff \withLyrics <<
        \global \clef "treble" \includeNotes "valto"
      >> \includeLyrics "lyrics2"
      \new Staff \withLyrics <<
        \global \clef "G_8" \includeNotes "vtenore"
      >> \includeLyrics "lyrics3"
      \new Staff \withLyrics <<
        \global \clef "bass" \includeNotes "vbasso"
      >> \includeLyrics "lyrics4"
    >>
    \new Staff << \global \clef "bass" \includeNotes "bassi"
                  \includeFigures "figures" >>
  >>
  \layout { indent = \smallindent }
  \midi { }
}