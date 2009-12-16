\score {
  \new StaffGroupNoBar <<
    \new Staff << \instrumentName \markup Violini
                  \global \clef "treble" \includeNotes "violini" >>
    \new Staff \withLyrics <<
      \characterName \markup Alto
      \global \clef "treble" \includeNotes "valto"
    >> \includeLyrics "lyrics"
    \new Staff << \instrumentName \markup Bassi
                  \global \clef "bass" \includeNotes "bassi"
                  \includeFigures "figures" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Voice \remove "Dynamic_performer" } }
}