\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \global \includeNotes "voix-haute-contre"
    >>\includeLyrics "paroles-hc-t"
    \newStaffWithLyrics <<
      \global \includeNotes "voix-taille"
    >>\includeLyrics "paroles-hc-t"
    \newStaffWithLyrics <<
      \global \includeNotes "voix-basse"
    >>\includeLyrics "paroles-basse"
    \newStaff << \global \includeNotes "basse" >>
  >>
  \layout {
    indent = \noindent
    \context { \Staff \remove "Time_signature_engraver" }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } }
}
