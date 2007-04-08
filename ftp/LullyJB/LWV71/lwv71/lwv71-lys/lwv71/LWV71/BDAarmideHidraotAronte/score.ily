\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \characterName \markup "Armide"
      \global \basDessus \includeNotes "armide"
    >> \includeLyrics "paroles-armide"
    \newStaffWithLyrics <<
      \characterName \markup "Hidraot"
      \global \basse \includeNotes "hidraot"
    >> \includeLyrics "paroles-hidraot"
    \newStaffWithLyrics <<
      \characterName \markup "Aronte"
      \global \basse \includeNotes "aronte"
    >> \includeLyrics "paroles-aronte"
    \newStaff <<
      \scoreInit \global \basse \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \header { 
    scene = "SCÈNE IV"
    sceneDescription = \markup { \smallCaps Aronte, et les acteurs
                                 de la scène précédente. }
  }
  \layout { 
    indent = \largeindent
    #(define tweak-key (*current-piece*))
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
