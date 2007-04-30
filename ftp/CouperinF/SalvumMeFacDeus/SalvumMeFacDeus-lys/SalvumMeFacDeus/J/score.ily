\score {
  \new StaffGroupNoBar <<
    \newStaff << \global \includeNotes "dessus" >>
    \newStaffWithLyrics <<
      \global \includeNotes "voix-basse"
    >> \includeLyrics "paroles"
    \newStaff << \global \includeNotes "basse2" >>
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
