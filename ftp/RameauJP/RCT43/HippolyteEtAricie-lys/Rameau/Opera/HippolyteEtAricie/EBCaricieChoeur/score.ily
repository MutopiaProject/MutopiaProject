\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new Staff << \instrumentName \markup { Hautbois I }
                    \keepWithTag #'() \global \includeNotes "hautbois1" >>
      \new Staff << \instrumentName \markup { Hautbois II }
                    \keepWithTag #'() \global \includeNotes "hautbois2" >>
      \new Staff << \instrumentName \markup { Violons I }
                    \keepWithTag #'() \global \includeNotes "violon1" >>
      \new Staff << \instrumentName \markup { Violons II }
                    \keepWithTag #'() \global \includeNotes "violon2" >>
      \new Staff << \instrumentName \markup Haute-contres
                    \keepWithTag #'() \global \includeNotes "haute-contre" >>
      \new Staff << \instrumentName \markup Tailles
                    \keepWithTag #'() \global \includeNotes "taille" >>
    >>
    \new ChoirStaff \with { instrumentName = "Chœur          " } <<
      \new Staff \withLyrics <<
        \keepWithTag #'() \global \includeNotes "voix-dessus"
      >> \includeLyrics "paroles-dessus"
      \new Staff \withLyrics <<
        \keepWithTag #'() \global \includeNotes "voix-haute-contre"
      >> \includeLyrics "paroles-haute-contre"
      \new Staff \withLyrics <<
        \keepWithTag #'() \global \includeNotes "voix-taille"
      >> \includeLyrics "paroles-taille"
      \new Staff \withLyrics <<
        \keepWithTag #'() \global \includeNotes "voix-basse"
      >> \includeLyrics "paroles-basse"
    >>
    \new Staff \withLyrics <<
      \characterName \markup Aricie
      \keepWithTag #'() \global \includeNotes "aricie"
    >> \includeLyrics "paroles-aricie"
    \new Staff << \instrumentName \markup \center-align { Bassons Basses }
                  \keepWithTag #'basse \global \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
