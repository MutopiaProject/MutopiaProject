\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \global \includeNotes "voix-haute-contre"
    >> \includeLyrics "paroles"
    \newStaff << \scoreInit \global \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
