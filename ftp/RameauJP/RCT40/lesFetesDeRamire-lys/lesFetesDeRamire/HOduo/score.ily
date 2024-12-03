\score {
  <<
    \new StaffGroupNoBar <<
      \newStaffWithLyrics <<
        \global \includeNotes "voix-dessus"
        s2^"Deux suivants de Ramire"
      >>\includeLyrics "paroles-dessus"
      \newStaffWithLyrics <<
        \global \includeNotes "voix-haute-contre"
      >>\includeLyrics "paroles-haute-contre"
      \newStaffWithLyrics <<
        \global \includeNotes "voix-taille"
      >>\includeLyrics "paroles-taille"
      \newStaffWithLyrics <<
        \global \includeNotes "voix-basse"
      >>\includeLyrics "paroles-basse"
    >>
    \new StaffGroup <<
      \newStaff <<
        \override Score . VerticalAxisGroup #'remove-first = ##t
        \global \includeNotes "violons" >>
      \newStaff << \global \includeNotes "haute-contre" >>
      \newStaff << \global \includeNotes "taille" >>
      \newStaff << \global \includeNotes "basse"
                   \includeFigures "chiffres" >>
    >>
  >>
  \layout { \context { \RemoveEmptyStaffContext } }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
