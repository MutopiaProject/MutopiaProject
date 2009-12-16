\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newHaraKiriStaff << \instrumentName \markup Tromba
                    { s4 s2.*155 s2 \break }
                    \global \clef "treble" \includeNotes "tromba" >>
      \new StaffGroup <<
        \newHaraKiriStaff << \instrumentName \markup "Violino I"
                      \global \clef "treble" \includeNotes "violino1" >>
        \newHaraKiriStaff << \instrumentName \markup "Violino II"
                      \global \clef "treble" \includeNotes "violino2" >>
        \newHaraKiriStaff << \instrumentName \markup Viola
                      \global \clef "alto" \includeNotes "viola" >>
      >>
    >>
    \new Staff \withLyrics <<
      \characterName \markup Basso
      \global \clef "bass" \includeNotes "vbasso"
    >> \includeLyrics "lyrics"
    \new Staff << \instrumentName \markup Bassi
                  \global \clef "bass" \includeNotes "bassi"
                  \includeFigures "figures" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Voice \remove "Dynamic_performer" } }
}