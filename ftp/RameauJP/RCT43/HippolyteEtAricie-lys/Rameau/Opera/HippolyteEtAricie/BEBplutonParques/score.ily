\score {
  <<
    \new StaffGroup <<
      \new Staff << \instrumentName \markup { Violons I }
                    \global \includeNotes "violon1" >>
      \new Staff << \instrumentName \markup { Violons II }
                    \global \includeNotes "violon2" >>
      \new Staff << \instrumentName \markup Haute-contres
                    \global \includeNotes "haute-contre" >>
      \new Staff << \instrumentName \markup Tailles
                    \global \includeNotes "taille" >>
    >>
    \newHaraKiriStaff \withLyrics <<
      \characterName \markup Pluton
      \global \includeNotes "pluton"
    >> \includeLyrics "paroles-pluton"
    \new ChoirStaff <<
      \newHaraKiriStaffB \withLyrics <<
        { s1*17 s1*7
          s1^\markup { \concat { P \super \smallCaps re } \smallCaps Parque } }
        \global \includeNotes "parque1"
      >> \includeLyrics "paroles-parque1"
      \newHaraKiriStaffB \withLyrics <<
        { s1*17 s1*7
          << s1^\markup { \concat { 2 \super \smallCaps e } \smallCaps Parque }
             \new Voice \notemode { \hideNotes do' } >> }
        \global \includeNotes "parque2"
      >> \includeLyrics "paroles-parque2"
      \newHaraKiriStaffB \withLyrics <<
        { s1*17 s1*7
          << s1^\markup { \concat { 3 \super \smallCaps e } \smallCaps Parque }
             \new Voice \notemode { \hideNotes do do } >> }
        \global \includeNotes "parque3"
      >> \includeLyrics "paroles-parque3"
    >>
    \new Staff << \instrumentName \markup Basses
                  \global \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
