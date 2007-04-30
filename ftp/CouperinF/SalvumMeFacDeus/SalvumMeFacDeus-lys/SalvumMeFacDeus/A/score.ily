\score {
  \new StaffGroupNoBar <<
    \newStaff <<
      { \markUpBegin \mark Symphonie }
      \global \includeNotes "dessus"
    >>
    \newStaffWithLyrics <<
      \global \includeNotes "voix-basse"
    >> \includeLyrics "paroles"
    \newStaff << \scoreInit \global \includeNotes "basse"
                 \override Score . VerticalAxisGroup #'remove-first = ##t
                 \includeFigures "chiffres" >>
  >>
  \layout {
    #(define tweak-key (*current-piece*))
    \context { \RemoveEmptyStaffContext }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 210 4) } }
}
