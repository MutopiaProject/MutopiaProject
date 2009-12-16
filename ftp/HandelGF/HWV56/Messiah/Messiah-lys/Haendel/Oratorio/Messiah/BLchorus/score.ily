\score {
  \new StaffGroupNoBar <<
    \new StaffGroup <<
      \new Staff << \instrumentName \markup "Violino I"
                    \global \clef "treble" \includeNotes "violino1" >>
      \new Staff << \instrumentName \markup "Violino II"
                    \global \clef "treble" \includeNotes "violino2" >>
      \new Staff << \instrumentName \markup Viola
                    \global \clef "alto" \includeNotes "viola" >>
    >>
    \new ChoirStaff <<
      \new Staff \withLyrics <<
        \characterName \markup "Canto I"
        { s1*30 \break s2 s4. s8^"Canto I II"}
        \global \clef "treble" \includeNotes "vcanto1"
      >> \includeLyrics "lyrics11"
      \newHaraKiriStaff \withLyrics <<
        \characterName \markup "Canto II"
        \global \clef "treble" \includeNotes "vcanto2"
      >> \includeLyrics "lyrics12"
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
  \midi { }
}