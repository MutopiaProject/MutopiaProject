\score {
  <<
    \new StaffGroup <<
      \newStaff << \instrumentName \markup { \null \translate #'(0 . -10) Hautbois }
                   \global \dessus \includeNotes "hautbois1" >>
      \newStaff << \global \dessus \includeNotes "hautbois2" >>
    >>
    \new StaffGroup <<
      \newStaff << \global \dessus \includeNotes "dessus" >>
      \newStaff << \global \hauteContre \includeNotes "haute-contre" >>
      \newStaff << \instrumentName \markup Violons
                   \global \taille \includeNotes "taille" >>
      \newStaff << \global \quinte \includeNotes "quinte" >>
      \newStaff << \global \basse \includeNotes "basse" >>
    >>
    \new ChoirStaff <<
      \newStaffWithLyrics <<
        \global \voixDessus \includeNotes "voix-dessus"
      >> \includeLyrics "paroles"
      \newStaffWithLyrics <<
        \global \voixHauteContre \includeNotes "voix-haute-contre"
      >> \includeLyrics "paroles"
      \newStaffWithLyrics <<
        \global \voixTaille \includeNotes "voix-taille"
      >> \includeLyrics "paroles"
      \newStaffWithLyrics <<
        \global \basse \includeNotes "voix-basse"
      >> \includeLyrics "paroles"
    >>
    \newStaff << \global \basse \includeNotes "basse-continue"
                 \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 180 4) } }
}
