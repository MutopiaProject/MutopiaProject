\score {
  <<
    \new StaffGroupNoBar <<
      \newStaffWithLyrics <<
        \global \includeNotes "voix-dessus"
      >>\includeLyrics "paroles"
      \newStaffWithLyrics <<
        \global \includeNotes "voix-haute-contre"
      >>\includeLyrics "paroles"
      \newStaffWithLyrics <<
        \global \includeNotes "voix-taille"
      >>\includeLyrics "paroles"
      \newStaffWithLyrics <<
        \global \includeNotes "voix-basse"
      >>\includeLyrics "paroles"
    >>
    \new StaffGroup <<
      \newStaff << 
        \global \includeNotes "violons"
        \instrumentName \markup Violons >>
      \newStaff <<
        \global \includeNotes "haute-contre-taille"
        \instrumentName \markup \instruments { "Haute-contre" "et taille" } >>
      \newStaff <<
        \global \includeNotes "basse"
        \instrumentName \markup \instruments { Basse Continue } >>
    >>
  >>
  \layout {
    indent = \largeindent
    \context { \Staff \remove "Time_signature_engraver" }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
