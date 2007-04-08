\score {
  <<
    \new StaffGroup <<
      \newStaff << \scoreInit \global \dessus \includeNotes "dessus" >>
      \newStaff << \global \hauteContre \includeNotes "haute-contre" >>
      \newStaff << \global \taille \includeNotes "taille" >>
      \newStaff << \global \quinte \includeNotes "quinte" >>
    >>
    \new ChoirStaff <<
      \newStaffWithLyrics <<
        \global \voixHauteContre \includeNotes "voix-haute-contre"
      >> \includeLyrics "paroles"
      \newStaffWithLyrics <<
        \global \basse \includeNotes "voix-basse"
      >> \includeLyrics "paroles"
    >>
    \newStaff << \global \basse \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
