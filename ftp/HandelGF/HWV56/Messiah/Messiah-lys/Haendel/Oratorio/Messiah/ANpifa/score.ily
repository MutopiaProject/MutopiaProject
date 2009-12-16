\score {
  \new StaffGroup <<
    \new Staff <<
      \instrumentName \markup \center-column {
        "Violino I"
        "e Violino III"
        \smaller "all'ottavia"
      }
      \global \clef "treble" \includeNotes "violino1" >>
    \new Staff <<
      \instrumentName \markup \center-column {
        "Violino II"
        "e Viola"
        \smaller "all'ottavia"
      }
      \global \clef "treble" \includeNotes "violino2" >>
    \new Staff << 
      \instrumentName \markup Bassi
      \global \clef "bass" \includeNotes "bassi" >>
  >>
  \layout { indent = \largeindent }
  \midi { }
}