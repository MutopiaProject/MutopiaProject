\score {
  \new StaffGroupNoBar <<
    \newStaff << \global \includeNotes "dessus"
                 \instrumentName \markup Violons >>
    \newStaff << \global \includeNotes "haute-contre-taille"
                 \instrumentName \markup \instruments {
                   "Haute-contre" "et taille" } >>
    \newStaffWithLyrics <<
      \characterName \markup Ramire
      \global \includeNotes "ramire"
    >> \includeLyrics "paroles"
    \newStaff << \global \includeNotes "basse"
                 \instrumentName \markup \instruments { Basse Continue }
                 \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
