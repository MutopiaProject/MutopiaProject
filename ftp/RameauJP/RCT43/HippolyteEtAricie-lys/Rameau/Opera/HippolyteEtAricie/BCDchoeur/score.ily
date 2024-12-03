\score {
  <<
    \new StaffGroup <<
      \new Staff << \instrumentName \markup Violons
                    \global \includeNotes "dessus" >>
      \new Staff << \instrumentName \markup Haute-contres
                    \global \includeNotes "haute-contre" >>
      \new Staff << \instrumentName \markup Tailles
                    \global \includeNotes "taille" >>
    >>
    \new ChoirStaff <<
      \new Staff \withLyrics <<
        \global \includeNotes "voix-haute-contre"
      >> \includeLyrics "paroles-haute-contre"
      \new Staff \withLyrics <<
        \instrumentName \markup Chœur
        \global \includeNotes "voix-taille"
      >> \includeLyrics "paroles-taille"
      \new Staff \withLyrics <<
        \global \includeNotes "voix-basse"
      >> \includeLyrics "paroles-basse"
    >>
    \new StaffGroup <<
      \new Staff << \instrumentName \markup Basses
                    \global \includeNotes "basse" >>
      \new Staff << \instrumentName \markup Contre-basses
                    \global \includeNotes "contre-basse" >>
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
