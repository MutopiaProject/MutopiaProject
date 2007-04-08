\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newStaff << \global \dessus \includeNotes #"dessus" >>
      \newStaff << \global \hauteContre \includeNotes #"haute-contre" >>
      \newStaff << \global \taille \includeNotes #"taille" >>
      \newStaff << \global \quinte \includeNotes #"quinte" >>
    >>
    \newStaffWithLyrics << 
      \override Score.VerticalAxisGroup #'remove-first = ##t
      \set Staff.voltaOnThisStaff = ##t
      \characterName \markup Vucain
      \global \voixHauteContre \includeNotes "vulcain" 
    >> \includeLyrics "paroles"
    \newStaff << \scoreInit \global \basse \includeNotes #"basse" >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { 
    indent = \largeindent
    \context { \RemoveEmptyStaffContext }
    #(define tweak-key (*current-piece*)) 
  }
  \midi { \tempo 4 = 132 }
}
