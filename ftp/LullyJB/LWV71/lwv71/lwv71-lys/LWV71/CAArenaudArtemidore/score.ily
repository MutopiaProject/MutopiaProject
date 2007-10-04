\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \characterName \markup "Renaud"
      \set Staff . shortInstrumentName = "R."
      \global \voixHauteContre \includeNotes "renaud"
    >> \includeLyrics "paroles-renaud"
    \newStaffWithLyrics <<
      \characterName \markup "Artemidore"
      \set Staff . shortInstrumentName = "A."
      \global \voixTaille \includeNotes "artemidore"
    >> \includeLyrics "paroles-artemidore"
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
