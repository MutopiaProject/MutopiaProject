\score {
  <<
    \new StaffGroup <<
      \new Staff <<
        \instrumentName \markup Violons
        \global \includeNotes "violon"
      >>
      \new Staff <<
        \instrumentName \markup Haute-contres
        \global \includeNotes "haute-contre"
      >>
      \new Staff <<
        \instrumentName \markup Tailles
        \global \includeNotes "taille"
      >>
    >>
    \new ChoirStaff \with { instrumentName = "Chœur              " } <<
      \new Staff \withLyrics <<
        \global \includeNotes "voix-haute-contre"
      >> \includeLyrics "paroles-haute-contre"
      \new Staff \withLyrics <<
        \global \includeNotes "voix-taille"
      >> \includeLyrics "paroles-taille"
      \new Staff \withLyrics <<
        \global \includeNotes "voix-basse"
      >> \includeLyrics "paroles-basse"
    >>
    \new Staff << \instrumentName \markup Basses
                  \global \includeNotes "basse" >>
  >>
  \layout {
    indent = \largeindent
    incipit-width = #(* incipit-width 1.2)
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
