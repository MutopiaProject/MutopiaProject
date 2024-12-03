\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newHaraKiriStaff <<
        \instrumentName \markup Flûtes
        \global \includeNotes "flute"
      >>
      \newHaraKiriStaff <<
        \instrumentName \markup { Violons I }
        \global \includeNotes "violon1"
      >>
      \newHaraKiriStaff <<
        \instrumentName \markup { Violons II }
        \global \includeNotes "violon2"
      >>
      \newHaraKiriStaff <<
        \instrumentName \markup Haute-contres
        \global \includeNotes "haute-contre"
      >>
      \newHaraKiriStaff <<
        \instrumentName \markup Tailles
        \global \includeNotes "taille"
      >>
    >>
    \newHaraKiriStaff \withLyrics <<
      \characterName \markup Aricie
      \global \includeNotes "aricie"
    >> \includeLyrics "paroles"
    \new Staff << \instrumentName \markup { Basse continue }
                  \global \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
