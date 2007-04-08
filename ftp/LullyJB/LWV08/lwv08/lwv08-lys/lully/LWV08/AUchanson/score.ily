
\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << \scoreInit
                           \global \basDessus \includeNotes #"bas-dessus" 
                         >> \includeLyrics #"paroles"
    \newStaff << \global \basse \includeNotes #"basse" >>
  >>
  \header {
    titre = "Chansons contre les jaloux"
    petitTitre = \markup { 
      chantée par M \translate #'(-0.5 . 0.5) \tiny elle Hylaire,
      suivante des coquettes
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
