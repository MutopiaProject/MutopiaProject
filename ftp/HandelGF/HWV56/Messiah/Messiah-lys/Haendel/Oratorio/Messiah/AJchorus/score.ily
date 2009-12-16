\score {
  \new StaffGroupNoBar <<
    \new StaffGroup <<
      \new Staff << \global \includeNotes "violino1"
                    { \clef "treble" \instrumentName \markup "Violino I" \grace s8 } >>
      \new Staff << \global \includeNotes "violino2"
                    { \clef "treble" \instrumentName \markup "Violino II" \grace s8 } >>
      \new Staff << \global \includeNotes "viola"
                    { \clef "alto" \instrumentName \markup Viola \grace s8 } >>
    >>
    \new ChoirStaff <<
      \new Staff \withLyrics <<
        { s8^"Tutti c. Oboe I & II unis." }
        \global \includeNotes "vcanto"
        { \characterName \markup Canto \clef "treble" \grace s8 }
      >> \includeLyrics "lyrics1"
      \new Staff \withLyrics <<
        \global \includeNotes "valto"
        { \characterName \markup Alto \clef "treble" \grace s8 }
      >> \includeLyrics "lyrics2"
      \new Staff \withLyrics <<
        \global \includeNotes "vtenore"
        { \characterName \markup Tenore \clef "G_8" \grace s8 }
      >> \includeLyrics "lyrics3"
      \new Staff \withLyrics <<
        \global \includeNotes "vbasso"
        { \characterName \markup Basso \clef "bass" \grace s8 }
      >> \includeLyrics "lyrics4"
    >>
    \new Staff << { \instrumentName \markup Bassi \clef "bass" \grace s8 }
                  \global \includeNotes "bassi"
                  \includeFigures "figures" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Voice \remove "Dynamic_performer" } }
}