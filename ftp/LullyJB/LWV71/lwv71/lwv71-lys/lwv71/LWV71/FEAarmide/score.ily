\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \characterName \markup "Armide"
      \global \basDessus \includeNotes "armide"
    >> \includeLyrics "paroles"
    \newStaff << \global \dessus \includeNotes "dessus" >>
    \newStaff << \global \hauteContre \includeNotes "haute-contre" >>
    \newStaff << \global \taille \includeNotes "taille" >>
    \newStaff << \global \quinte \includeNotes "quinte" >>
    \newStaff << \scoreInit \global \basse \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \header { 
    scene = "SCÈNE CINQUIÈME"
    sceneDescription = \markup \center-align {
      \line { \smallCaps Armide, seule. }
    }
  }
  \layout { 
    indent = \largeindent
    #(define tweak-key (*current-piece*))
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
