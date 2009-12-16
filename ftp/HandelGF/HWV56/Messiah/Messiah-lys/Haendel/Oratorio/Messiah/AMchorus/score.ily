\score {
  \new StaffGroupNoBar <<
    \new StaffGroup <<
      \new Staff << \instrumentName \markup "Violino I"
                    \global \clef "treble" { s1-"c. Oboe I." } \includeNotes "violino1" >>
      \new Staff << \instrumentName \markup "Violino II"
                    \global \clef "treble" { s1-"c. Oboe II." } \includeNotes "violino2" >>
      \new Staff << \instrumentName \markup Viola
                    \global \clef "alto" \includeNotes "viola" >>
    >>
    \new ChoirStaff <<
      \new Staff \withLyrics <<
        { s1*6 s1^"Tutti c. Oboe I & II unis." }
        \characterName \markup Canto
        \global \clef "treble" \includeNotes "vcanto"
      >> \includeLyrics "lyrics1"
      \new Staff \withLyrics <<
        \characterName \markup Alto
        \global \clef "treble" \includeNotes "valto"
      >> \includeLyrics "lyrics2"
      \new Staff \withLyrics <<
        \characterName \markup Tenore
        \global \clef "G_8" \includeNotes "vtenore"
      >> \includeLyrics "lyrics3"
      \new Staff \withLyrics <<
        \characterName \markup Basso
        \global \clef "bass" \includeNotes "vbasso"
      >> \includeLyrics "lyrics4"
    >>
    \new Staff << \instrumentName \markup Bassi
                  \global \clef "bass" \includeNotes "bassi"
                  \includeFigures "figures" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Voice \remove "Dynamic_performer" } }
}