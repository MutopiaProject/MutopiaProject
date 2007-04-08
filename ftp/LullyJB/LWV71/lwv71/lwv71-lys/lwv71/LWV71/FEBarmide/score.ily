\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \global \basDessus \includeNotes "armide"
    >> \includeLyrics "paroles"
    \new StaffGroupNoBracket <<
      \newStaff << \global \dessus \includeNotes "dessus" >>
      \newStaff << \global \hauteContre \includeNotes "haute-contre" >>
      \newStaff << \global \taille \includeNotes "taille" >>
      \newStaff << \global \quinte \includeNotes "quinte" >>
      \newStaff << \scoreInit \global \basse \includeNotes "basse"
                   \includeFigures "chiffres" >>
    >>
  >>
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 140 4) } }
}
