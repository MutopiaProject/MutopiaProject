\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \characterName \markup "Le Chevalier"
      \set Staff . shortInstrumentName = "C."
      \global \voixHauteContre \includeNotes "chevalier"
    >> \includeLyrics "paroles-chevalier"
    \newStaffWithLyrics <<
      \characterName \markup "Ubalde"
      \set Staff . shortInstrumentName = "U."
      \global \basse \includeNotes "ubalde"
    >> \includeLyrics "paroles-ubalde"
    \newStaff <<
      \global \basse \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout { 
    indent = \largeindent
    \context { \RemoveEmptyStaffContext }
    \context { \Staff \remove "Time_signature_engraver" }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
