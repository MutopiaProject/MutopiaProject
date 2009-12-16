\score {
  \new StaffGroupNoBar <<
    \new Staff << \instrumentName \markup \center-column { Violini Viola }
                  \global \clef "treble" \includeNotes "violini" >>
    \new Staff \withLyrics <<
      \characterName \markup Basso
      \global \clef "bass" \includeNotes "vbasso"
    >> \includeLyrics "lyrics"
    \new Staff << \instrumentName \markup Bassi
                  \global \clef "bass" \includeNotes "bassi" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Voice \remove "Dynamic_performer" } }
}