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
      \global \basDessus \includeNotes "armide"
    >> \includeLyrics "paroles"
    \newStaff << \scoreInit \global \basse \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \header { 
    acte = "ACTE TROISIÈME"
    scene = "SCÈNE PREMIÈRE"
    sceneDescription = \markup \center-align {
      \line { Le théâtre change et représente un désert. }
      \line { \smallCaps Armide, seule. }
    }
  }
  \layout { 
    indent = \largeindent
    #(define tweak-key (*current-piece*))
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
