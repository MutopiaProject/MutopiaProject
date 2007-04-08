\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newStaff << \global \dessus \includeNotes #"dessus1" >>
      \newStaff << \global \dessus \includeNotes #"dessus2" >>
    >>
    \newStaffWithLyrics << 
      \characterName \markup Psyche
      \set Staff.voltaOnThisStaff = ##t
      \global \basDessus \includeNotes "psyche"
    >> \includeLyrics "paroles"
    \newStaff << \scoreInit \global \basse \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \header { 
    scene = "Scène Deuxième"
    titre = "Ritournelle"
    breakbefore = #(break-before?)
  }
  \layout { indent = \largeindent
            \context { \RemoveEmptyStaffContext }
            #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}
