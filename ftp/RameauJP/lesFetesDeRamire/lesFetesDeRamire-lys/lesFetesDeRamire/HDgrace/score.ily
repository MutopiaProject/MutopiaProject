\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newStaff <<
        \instrumentName \markup { \concat { P \super es } Flûtes }
        \global \includeNotes "flute1"
      >>
      \newStaff <<
        \instrumentName \markup { \concat { 2 \super es } Flûtes }
        \global \includeNotes "flute2"
      >>
      \newStaff <<
        \instrumentName \markup { \concat { P \super rs } Violons }
        \global \includeNotes "violon1"
      >>
      \newStaff <<
        \instrumentName \markup { \concat { 2 \super es } Violons }
        \global \includeNotes "violon2"
      >>
      \newStaff <<
        \instrumentName \markup \instruments { "Haute-contre" "et taille" }
        \global \includeNotes "haute-contre-taille"
      >>
    >>
    \newStaffWithLyrics <<
      \characterName \markup "Une Grace"
      \global \includeNotes "grace"
    >> \includeLyrics "paroles"
    \newStaff <<
      \instrumentName \markup \instruments { Basse Continue }
      \global \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
