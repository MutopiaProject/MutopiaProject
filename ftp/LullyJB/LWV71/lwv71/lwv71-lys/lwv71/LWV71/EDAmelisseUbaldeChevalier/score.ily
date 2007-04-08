\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \characterName \markup "Melisse"
      \set Staff . shortInstrumentName = "M."
      \global \basDessus \includeNotes "melisse"
    >> \includeLyrics "paroles-melisse"
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
      \scoreInit \global \basse \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \header {
    scene = "SCÈNE QUATRIÈME"
    sceneDescription = \markup \smallCaps { Melisse, Ubalde, et Le Chevalier Danois }
  }
  \layout { 
    indent = \largeindent
    #(define tweak-key (*current-piece*))
    \context { \RemoveEmptyStaffContext }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 112 4) } }
}
