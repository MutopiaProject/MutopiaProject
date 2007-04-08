\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \characterName \markup "Lucinde"
      \global \voixDessus \includeNotes "lucinde"
    >> \includeLyrics "paroles"
    \newStaff << \scoreInit \global \basse \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \header {
    scene = "SCÈNE DEUXIÈME"
    sceneDescription = \markup \smallCaps { Lucinde, Ubalde, et Le Chevalier Danois }
  }
  \layout { 
    indent = \largeindent
    #(define tweak-key (*current-piece*))
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 180 4) } }
}
