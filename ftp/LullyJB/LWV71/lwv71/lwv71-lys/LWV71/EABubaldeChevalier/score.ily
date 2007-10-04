\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newStaff << \global \dessus \includeNotes "dessus" >>
      \newStaff << \global \hauteContre \includeNotes "haute-contre" >>
      \newStaff << \global \taille \includeNotes "taille" >>
      \newStaff << \global \quinte \includeNotes "quinte" >>
      \newStaff << \global \quinte \includeNotes "basse" >>
    >>
    \newStaffWithLyrics <<
      \characterName \markup "Le Chevalier"
      \global \voixHauteContre \includeNotes "chevalier"
    >> \includeLyrics "paroles-chevalier"
    \newStaffWithLyrics <<
      \characterName \markup "Ubalde"
      \global \basse \includeNotes "ubalde"
    >> \includeLyrics "paroles-ubalde"
    \newStaff <<
      \override Score.VerticalAxisGroup #'remove-first = ##t
      \global \basse \includeNotes "basse-continue"
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
