\score {
  <<
    \new StaffGroup <<
      \newStaff << \global \dessus \includeNotes "dessus" >>
      \newStaff << \global \hauteContre \includeNotes "haute-contre" >>
      \newStaff << \global \taille \includeNotes "taille" >>
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
    \newStaff << \global \basse \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \layout {
    indent = \noindent
    \context { \Staff \remove "Time_signature_engraver" }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
