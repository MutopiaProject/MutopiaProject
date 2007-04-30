\score {
  \new StaffGroupNoBar <<
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
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 68 4) } }
}
