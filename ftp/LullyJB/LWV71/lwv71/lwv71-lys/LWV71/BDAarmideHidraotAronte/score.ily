\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \characterName \markup "Armide"
      \global \basDessus \includeNotes "armide"
    >> \includeLyrics "paroles-armide"
    \newStaffWithLyrics <<
      \characterName \markup "Hidraot"
      \global \basse \includeNotes "hidraot"
    >> \includeLyrics "paroles-hidraot"
    \newStaffWithLyrics <<
      \characterName \markup "Aronte"
      \global \basse \includeNotes "aronte"
    >> \includeLyrics "paroles-aronte"
    \newStaff <<
      \global \basse \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
