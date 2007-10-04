\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \characterName \markup "Armide"
      \set Staff . shortInstrumentName = "A."
      \global \basDessus \includeNotes "armide"
    >> \includeLyrics "paroles-armide"
    \newStaffWithLyrics <<
      \characterName \markup "Hidraot"
      \set Staff . shortInstrumentName = "H."
      \global \basse \includeNotes "hidraot"
    >> \includeLyrics "paroles-hidraot"

    \newStaff <<
      \global \basse \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout { 
    indent = \largeindent
    \context { \RemoveEmptyStaffContext }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
