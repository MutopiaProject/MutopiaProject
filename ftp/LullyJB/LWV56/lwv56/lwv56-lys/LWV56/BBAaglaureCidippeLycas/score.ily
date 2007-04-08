\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \global
      \override Score.VerticalAxisGroup #'remove-first = ##t
      { \basDessus \includeNotes "aglaure" }
    >> \includeLyrics "paroles-aglaure"
    \newStaffWithLyrics << 
      \global \basDessus \includeNotes "cidippe" 
    >> \includeLyrics "paroles-cidippe"
    \newStaffWithLyrics << 
      \scoreInit \global \includeNotes "aglaure-cidippe-lycas"
    >> \includeLyrics "paroles"
    \newStaff << 
      \global \basse \includeNotes "basse"
      \includeFigures "chiffres"
      {
        s1*3 s2. s1*2 s2. s1 s2. s1*2 s1 s2. s1*3 s2. s1
        \break
        s1 s2.*3 s1*5 s1*2 s1*3 s2. 
        s1 s2.*3 s1*3 s2. s1*2 s2. s1 s2.*2 s1
        \break
        s1*6 s1 s1 s1*11
        \break
        s1*5
        \break
        s1*31
      }
    >>
  >>
  \header {
    scene = "Scène Deuxième"
    breakbefore = #(break-before?)
  }
  \layout {
    #(define tweak-key (*current-piece*)) 
    \context { \RemoveEmptyStaffContext }
  }
  \midi { \tempo 4 = 92 }
}
