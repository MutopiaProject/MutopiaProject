\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \global \includeNotes "basse-taille1"
    >> \includeLyrics "paroles1"
    \newStaffWithLyrics <<
      \global \includeNotes "basse-taille2"
    >> \includeLyrics "paroles2"
    \newStaffWithLyrics <<
      \global \includeNotes "basse"
    >> \includeLyrics "paroles3"
    \newStaff << \scoreInit \global \includeNotes "basse-continue"
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
