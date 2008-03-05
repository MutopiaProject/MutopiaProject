\score {
  <<
    \new StaffGroup <<
      \new Staff <<
        \instrumentName \markup \center-align { "Violons I" "Flûtes I" }
        \global \includeNotes "dessus1" >>
      \new Staff <<
        \instrumentName \markup \center-align { "Violons II" "Flûtes II" }
        \global \includeNotes "dessus2" >>
      \new Staff <<
        \instrumentName \markup Haute-contres
        \global \includeNotes "haute-contre" >>
      \new Staff <<
        \instrumentName \markup Tailles
        \global \includeNotes "taille" >>
    >>
    \new ChoirStaff <<
      \new Staff \withLyrics <<
        \global \includeNotes "voix-dessus1"
      >> \includeLyrics "paroles1"
      \new Staff \withLyrics <<
        \instrumentName \markup \center-align { "Chœur de" Prêtresses }
        \global \includeNotes "voix-dessus2"
      >> \includeLyrics "paroles2"
      \new Staff \withLyrics <<
        \global \includeNotes "voix-haute-contre"
      >> \includeLyrics "paroles3"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 132 4) } }
}
