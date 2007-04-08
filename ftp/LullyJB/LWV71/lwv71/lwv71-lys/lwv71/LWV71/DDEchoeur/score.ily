\score {
  <<
    \new ChoirStaff <<
      \newStaffWithLyrics <<
        \global \voixHauteContre \includeNotes "voix-haute-contre"
      >> \includeLyrics "paroles"
      \newStaffWithLyrics <<
        \global \voixTaille \includeNotes "voix-taille1"
      >> \includeLyrics "paroles"
      \newStaffWithLyrics <<
        \global \voixTaille \includeNotes "voix-taille2"
      >> \includeLyrics "paroles2"
      \newStaffWithLyrics <<
        \global \basse \includeNotes "voix-basse"
      >> \includeLyrics "paroles2"
    >>
    \new StaffGroup <<
      \newStaff << \scoreInit \global \dessus \includeNotes "dessus" >>
      \newStaff << \global \hauteContre \includeNotes "haute-contre" >>
      \newStaff << \global \taille \includeNotes "taille" >>
      \newStaff << \global \quinte \includeNotes "quinte" >>
      \newStaff << \global \basse \includeNotes "basse"
                   \includeFigures "chiffres" >>
    >>
  >>
  \layout {
    indent = \noindent
    #(define tweak-key (*current-piece*))
    \context { \Staff \remove "Time_signature_engraver" }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
