\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \scoreInit \global \includeNotes "amour-psyche"
    >> \includeLyrics "paroles"
    \newStaffWithLyrics << 
      \global
      \override Score.VerticalAxisGroup #'remove-first = ##t
      { \voixHauteContre \includeNotes "amour" }
    >> \includeLyrics "paroles-amour"
    \newStaff << 
      \global \basse \includeNotes "basse"
      \includeFigures "chiffres"
      { s1 s2.*2 s1*4 s1 s2. s1*3 s1*7 s1*4 s2. s1 
        s1*3 s2.*4 s1 s1*4 s2.*4 s1*2 s2.*2 \break }
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout {
    #(define tweak-key (*current-piece*)) 
    \context { \RemoveEmptyStaffContext }
  }
  \midi { \tempo 4 = 92 }
}
