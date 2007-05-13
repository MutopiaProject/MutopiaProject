\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \global \includeNotes "haute-contre"
    >> \includeLyrics "paroles"
    \newStaff << \scoreInit \global \includeNotes "basse-continue"
                 \includeFigures "chiffres" >>
  >>
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
