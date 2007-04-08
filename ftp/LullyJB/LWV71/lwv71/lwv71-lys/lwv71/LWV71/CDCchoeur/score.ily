\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \global \voixDessus \includeNotes "voix-dessus"
    >> \includeLyrics "paroles-dessus"
    \newStaffWithLyrics <<
      \global \basDessus \includeNotes "voix-bas-dessus"
    >> \includeLyrics "paroles-bas-dessus"
    \newStaffWithLyrics <<
      \global \voixHauteContre \includeNotes "voix-haute-contre"
    >> \includeLyrics "paroles-haute-contre"
    \newStaff <<
      \scoreInit \global \quinte \includeNotes "quinte"
      \includeFigures "chiffres"
    >>
  >>
  \header { titre = "Chœur de bergers et bergères héroïques" }
  \layout { 
    indent = \noindent
    #(define tweak-key (*current-piece*))
    \context { \Staff \remove "Time_signature_engraver" }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
