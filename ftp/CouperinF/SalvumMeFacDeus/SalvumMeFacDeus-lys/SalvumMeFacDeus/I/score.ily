\score {
  \new StaffGroupNoBar <<
    \newStaff << \global \includeNotes "flute1"
                 { s2^"Flûtes"} >>
    \newStaff << \global \includeNotes "flute2" >>
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
