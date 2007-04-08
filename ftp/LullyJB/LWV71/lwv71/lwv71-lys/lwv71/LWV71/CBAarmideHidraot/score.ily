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
    >> \includeLyrics "paroles-armide"
    \newStaffWithLyrics <<
      \characterName \markup "Hidraot"
      \global \basse \includeNotes "hidraot"
    >> \includeLyrics "paroles-hidraot"

    \newStaff <<
      \scoreInit \global \basse \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \header { 
    scene = "SCÈNE II"
    sceneDescription = \markup { \smallCaps Hidraot, \smallCaps Armide }
  }
  \layout { 
    indent = \largeindent
    #(define tweak-key (*current-piece*))
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
