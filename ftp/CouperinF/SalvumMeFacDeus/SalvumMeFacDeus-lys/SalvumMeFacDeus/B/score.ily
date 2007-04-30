\score {
  \new StaffGroupNoBar <<
    \newStaff << \global \includeNotes "dessus" >>
    \newStaffWithLyrics <<
      \global \includeNotes "voix-basse"
    >> \includeLyrics "paroles"
    \newStaff << \scoreInit \global \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \layout {
    indent = \noindent
    #(define tweak-key (*current-piece*))
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
