\score {
  <<
    \new StaffGroup <<
      \new Staff << \instrumentName \markup { Violons I }
                   \global \includeNotes "dessus1" >>
      \new Staff << \instrumentName \markup { Violons II }
                   \global \includeNotes "dessus2" >>
      \new Staff << \instrumentName \markup Haute-contres
                    \global \includeNotes "haute-contre" >>
      \new Staff << \instrumentName \markup Tailles
                    \global \includeNotes "taille" >>
    >>
    \new ChoirStaff <<
      \new Staff \withLyrics <<
        \characterName \markup "La Prêtresse"
        \global \includeNotes "pretresse"
      >> \includeLyrics "paroles-pretresse"
      \new Staff \withLyrics <<
        \global \includeNotes "voix-dessus"
      >> \includeLyrics "paroles-dessus"
      \new Staff \withLyrics <<
        \instrumentName \markup Chœur
        \global \includeNotes "voix-haute-contre"
      >> \includeLyrics "paroles-haute-contre"
      \new Staff \withLyrics <<
        \global \includeNotes "voix-taille"
      >> \includeLyrics "paroles-taille"
      \new Staff \withLyrics <<
        \global \includeNotes "voix-basse"
      >> \includeLyrics "paroles-basse"
    >>
    \new StaffGroup <<
      \new Staff << \instrumentName \markup Basses
                    \global \includeNotes "basse" >>
      \new Staff << \instrumentName \markup Contre-basse
                    \global \includeNotes "contre-basse" >>
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 100 4) } }
}
