\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \global \basDessus \includeNotes "soeurs"
    >> \includeLyrics "paroles1"
    \newStaffWithLyrics << 
      \override Score.VerticalAxisGroup #'remove-first = ##t
      \global \basDessus \includeNotes "cidippe" 
    >> \includeLyrics "paroles2"
    \newStaff << 
      \global \basse \includeNotes "basse"
      \includeFigures "chiffres"
      {
        s1 s2.*2 s1*4 \break
        s1*4 \break
        s1*6 \break
      }
    >>
  >>
  \header {
    scene = "Scène Troisième"
    breakbefore = #(break-before?)
  }
  \layout {
    #(define tweak-key (*current-piece*)) 
    \context { \RemoveEmptyStaffContext }
  }
  \midi { \tempo 4 = 92 }
}
