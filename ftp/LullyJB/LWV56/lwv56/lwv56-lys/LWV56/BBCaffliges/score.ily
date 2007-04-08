\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newStaff << \global \dessus \includeNotes #"dessus1" >>
      \newStaff << \global \dessus \includeNotes #"dessus2" >>
    >>
    \newStaffWithLyrics << 
      \global
      \override Score.VerticalAxisGroup #'remove-first = ##t
      \basDessus \includeNotes "bas-dessus"
    >> \includeLyrics "paroles1"
    \newStaffWithLyrics << 
      \global \petiteHauteContre \includeNotes "petite-haute-contre"
    >> \includeLyrics "paroles2"
    \newStaffWithLyrics << 
      \global \basse \includeNotes "voix-basse"
    >> \includeLyrics "paroles3"
    \newStaff << \scoreInit \global \basse \includeNotes #"basse" >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout {
    #(define tweak-key (*current-piece*))
    \context { \RemoveEmptyStaffContext }
  }
  \midi { \tempo 4 = 192 }
}
