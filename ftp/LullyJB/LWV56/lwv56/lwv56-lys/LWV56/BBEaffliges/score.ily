\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \global
      \override Score.VerticalAxisGroup #'remove-first = ##t
      \petiteHauteContre \includeNotes "petite-haute-contre"
    >> \includeLyrics "paroles1"
    \newStaffWithLyrics << 
      \global \basse \includeNotes "voix-basse"
    >> \includeLyrics "paroles2"
    \newStaff << \scoreInit \global \basse \includeNotes #"basse" >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout {
    #(define tweak-key (*current-piece*))
    \context { \RemoveEmptyStaffContext }
  }
  \midi { \tempo 4 = 120 }
}
