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
      \scoreInit \global \basse \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \header { 
    acte = "ACTE SECOND"
    scene = "SCÈNE PREMIÈRE"
    sceneDescription = \markup \center-align {
      \line { Le théâtre change et représente une île agréable. }
      \line \smallCaps { Artemidore, Renaud. }
    }
  }
  \layout { 
    indent = \largeindent
    #(define tweak-key (*current-piece*))
    \context { \RemoveEmptyStaffContext }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
