\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newStaff << \global \dessus \includeNotes "dessus" >>
      \newStaff << \global \hauteContre \includeNotes "haute-contre" >>
      \newStaff << \global \taille \includeNotes "taille" >>
      \newStaff << \global \quinte \includeNotes "quinte" >>
    >>
    \newStaffWithLyrics <<
      \characterName \markup "Armide"
      \set Staff . shortInstrumentName = "A."
      \global \basDessus \includeNotes "armide"
    >> \includeLyrics "paroles-armide"
    \newStaffWithLyrics <<
      \characterName \markup "La Haine"
      \set Staff . shortInstrumentName = "H."
      \global \voixTaille \includeNotes "haine"
    >> \includeLyrics "paroles-haine"
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
