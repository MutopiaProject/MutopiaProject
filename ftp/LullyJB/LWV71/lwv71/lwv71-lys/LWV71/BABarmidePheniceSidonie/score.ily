\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \characterName \markup "Armide"
      \set Staff . shortInstrumentName = "A."
      \global \basDessus \includeNotes "armide"
    >> \includeLyrics "paroles-armide"
    \newStaffWithLyrics <<
      \characterName \markup "Phenice"
      \set Staff . shortInstrumentName = "P."
      \global \basDessus \includeNotes "phenice"
    >> \includeLyrics "paroles-phenice"
    \newStaffWithLyrics <<
      \characterName \markup "Sidonie"
      \set Staff . shortInstrumentName = "S."
      \global \basDessus \includeNotes "sidonie"
    >> \includeLyrics "paroles-sidonie"
    \newStaff <<
      \global \basse \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout {
    indent = \largeindent
    \context { \RemoveEmptyStaffContext } 
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
