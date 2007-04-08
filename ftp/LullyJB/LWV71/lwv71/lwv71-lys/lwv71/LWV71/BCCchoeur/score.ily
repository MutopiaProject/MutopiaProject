\score {
  <<
    \new ChoirStaff <<
      \newStaffWithLyrics <<
        \global \voixDessus \includeNotes "voix-dessus"
      >> \includeLyrics "paroles-dessus"
      \newStaffWithLyrics <<
        \global \voixHauteContre \includeNotes "voix-haute-contre"
      >> \includeLyrics "paroles-haute-contre"
      \newStaffWithLyrics <<
        \global \voixTaille \includeNotes "voix-taille"
      >> \includeLyrics "paroles-taille"
      \newStaffWithLyrics <<
        \global \basse \includeNotes "voix-basse"
      >> \includeLyrics "paroles-basse"
    >>
    \new StaffGroup <<
      \newStaff << \scoreInit \global \dessus \includeNotes #"dessus" >>
      \newStaff << \global \hauteContre \includeNotes #"haute-contre" >>
      \newStaff << \global \taille \includeNotes #"taille" >>
      \newStaff << \global \quinte \includeNotes #"quinte" >>
      \newStaff << \global \basse \includeNotes #"basse"
                   \includeFigures "chiffres" >>
    >>
  >>
  \header { titre = "CHŒUR" }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
