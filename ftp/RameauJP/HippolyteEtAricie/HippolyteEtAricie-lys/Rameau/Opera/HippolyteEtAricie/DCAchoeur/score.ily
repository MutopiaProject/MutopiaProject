\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new Staff << \instrumentName \markup { Hautbois I }
                    \keepWithTag #'autres \global
                    \includeNotes "hautbois1" >>
      \new Staff << \instrumentName \markup { Hautbois II }
                    \keepWithTag #'autres \global
                    \includeNotes "hautbois2" >>
      \new Staff << \instrumentName \markup { Violons I }
                    \keepWithTag #'autres \global
                    \includeNotes "violon1" >>
      \new Staff << \instrumentName \markup  { Violons II }
                    \keepWithTag #'autres \global
                    \includeNotes "violon2" >>
      \new Staff << \instrumentName \markup Cors
                    \keepWithTag #'cor \global
                    \includeNotes "cor" >>
      \new Staff << \instrumentName \markup { Haute- contres }
                    \keepWithTag #'autres \global
                    \includeNotes "haute-contre" >>
      \new Staff << \instrumentName \markup Tailles
                    \keepWithTag #'autres \global
                    \includeNotes "taille" >>
    >>
    \new ChoirStaff \with { instrumentName = "Chœur          " } <<
      \new Staff \withLyrics <<
        \keepWithTag #'autres \global
        \includeNotes "voix-dessus"
      >> \includeLyrics "paroles-dessus"
      \new Staff \withLyrics <<
        \keepWithTag #'autres \global
        \includeNotes "voix-haute-contre"
      >> \includeLyrics "paroles-haute-contre"
      \new Staff \withLyrics <<
        \keepWithTag #'autres \global
        \includeNotes "voix-taille"
      >> \includeLyrics "paroles-taille"
      \new Staff \withLyrics <<
        \keepWithTag #'autres \global
        \includeNotes "voix-basse"
      >> \includeLyrics "paroles-basse"
    >>
    \new Staff << \instrumentName \markup \center-align { Basses Bassons }
                  \keepWithTag #'autres \global
                  \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 144 4) } }
}
