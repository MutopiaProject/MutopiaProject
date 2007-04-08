\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \override Score.VerticalAxisGroup #'remove-first = ##t
      \global \voixHauteContre \includeNotes "psyche"
    >> \includeLyrics "paroles"
    \newStaffWithLyrics << 
      \global \voixHauteContre \includeNotes "furie1"
    >> \includeLyrics "paroles1"
    \newStaffWithLyrics << 
      \global \voixTaille \includeNotes "furie2"
    >> \includeLyrics "paroles1"
    \newStaffWithLyrics << 
      \global \basse \includeNotes "furie3"
    >> \includeLyrics "paroles3"
    \newStaff <<
      { 
        s1*2 s2. s1 s2.*2 s1*2
        \break
        s1*24
        \break
        s1 s1 s2.*2 s1*3 s1*24
        \break
        s1 s2.*5 s1*24
        \break
        s1*4 s2. s1 s4.
      }
      \scoreInit \global \basse \includeNotes #"basse"
      \includeFigures "chiffres"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout {
    \context { \RemoveEmptyStaffContext }
    #(define tweak-key (*current-piece*))
  }
  \midi { \tempo 4 = 102 }
}
