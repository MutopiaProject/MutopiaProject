\score {
  \new StaffGroupNoBar <<
    \newStaff << \global \includeNotes "dessus1"
                 { \markUpBegin \mark Ritournelle } >>
    \newStaff << \global \includeNotes "dessus2" >>
    \newStaffWithLyrics <<
      \global \includeNotes "voix-basse"
    >> \includeLyrics "paroles"
    \newStaff << \scoreInit \global \includeNotes "basse"
                 \override Score . VerticalAxisGroup #'remove-first = ##t
                 \includeFigures "chiffres" >>
  >>
  \layout {
    indent = \noindent
    #(define tweak-key (*current-piece*))
    \context { \RemoveEmptyStaffContext }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
