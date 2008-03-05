\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new Staff << \instrumentName \markup { Hautbois I }
                   \keepWithTag #'autres \global
                    { s2. s1.*48 \noBreak s1.*16 \noBreak }
                   \includeNotes "hautbois1" >>
      \new Staff << \instrumentName \markup { Hautbois II }
                   \keepWithTag #'autres \global
                   \includeNotes "hautbois2" >>
      \new Staff << \instrumentName \markup Violons
                   \keepWithTag #'autres \global
                   \includeNotes "violon" >>
      \new Staff << \instrumentName \markup Cors
                   \keepWithTag #'cor \global
                   \includeNotes "cor" >>
      \new Staff << \instrumentName \markup Haute-contres
                   \keepWithTag #'autres \global
                   \includeNotes "haute-contre" >>
      \new Staff << \instrumentName \markup Tailles
                   \keepWithTag #'autres \global
                   \includeNotes "taille" >>
      \new Staff << \instrumentName \markup Bassons
                   \keepWithTag #'autres \global
                   \includeNotes "basson" >>
    >>
    \new ChoirStaff \with { instrumentName = "Chœur        " } <<
      \newHaraKiriStaff \withLyrics <<
        \keepWithTag #'autres \global
        \includeNotes "voix-dessus"
      >> \includeLyrics "paroles-chasseresse"
      \newHaraKiriStaff \withLyrics <<
        \keepWithTag #'autres \global
        \includeNotes "voix-haute-contre"
      >> \includeLyrics "paroles-choeur"
      \newHaraKiriStaff \withLyrics <<
        \keepWithTag #'autres \global
        \includeNotes "voix-taille"
      >> \includeLyrics "paroles-choeur"
      \newHaraKiriStaff \withLyrics <<
        \keepWithTag #'autres \global
        \includeNotes "voix-basse"
      >> \includeLyrics "paroles-choeur"
    >>
    \new Staff << \instrumentName \markup { Basse continue }
                  \keepWithTag #'autres \global
                  \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 144 4) } }
}
