\score {
  <<
    \new StaffGroup <<
      \newStaff <<
        \global \includeNotes "dessus1"
        \instrumentName \markup \instruments {
          \line { \concat { P \super rs } violons }
          \line { et hautbois }
        }
      >>
      \newStaff << 
        \global \includeNotes "dessus2"
        \instrumentName \markup \instruments {
          \line { \concat { 2 \super es } violons }
          \line { et hautbois }
        }
      >>
      \newStaff <<
        \global \includeNotes "haute-contre-taille"
        \instrumentName \markup \instruments { "Haute-contre" "et tailles" }
      >>
    >>
    \new StaffGroupNoBar <<
      \newStaffWithLyrics <<
        \global \includeNotes "guerrier"
        \characterName \markup "Le Guerrier"
      >> \includeLyrics "paroles-guerrier"
      \newStaffWithLyrics <<
        \global \includeNotes "voix-haute-contre"
      >>\includeLyrics "paroles-hc-t"
      \newStaffWithLyrics <<
        \global \includeNotes "voix-taille"
      >>\includeLyrics "paroles-hc-t"
      \newStaffWithLyrics <<
        \global \includeNotes "voix-basse"
      >>\includeLyrics "paroles-basse"
    >>
    \newStaff << \global \includeNotes "basse"
                 \instrumentName \markup \instruments { Basse continue } >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
