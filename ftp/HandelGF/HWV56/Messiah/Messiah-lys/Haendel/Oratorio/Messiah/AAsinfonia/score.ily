\score {
  \new StaffGroup <<
    \new Staff << \instrumentName \markup "Violino I"
                  \global \clef "treble" \includeNotes "violino1" >>
    \new Staff << \instrumentName \markup "Violino II"
                  \global \clef "treble" \includeNotes "violino2" >>
    \new Staff << \instrumentName \markup Viola
                  \global \clef "alto" \includeNotes "viola" >>
    \new Staff << \global \clef "bass" \includeNotes "bassi"
                  \instrumentName \markup Bassi
                  { s1*13 \break }
                  \includeFigures "figures" >>
  >>
  \layout { indent = \largeindent }
  \midi { }
}