\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \override Score.VerticalAxisGroup #'remove-first = ##t
      { s2.*8 \break }
      \scoreInit \global \includeNotes "mercure-venus"
    >> \includeLyrics "paroles"
    \newStaff << \global \basse \includeNotes "basse" >>
  >>
  \header {
    scene = "Scène Troisième"
    breakbefore = #(break-before?)
  }
  \layout {
    \context { \RemoveEmptyStaffContext }
    #(define tweak-key (*current-piece*))
  }
  \midi { \tempo 4 = 92 }
}
