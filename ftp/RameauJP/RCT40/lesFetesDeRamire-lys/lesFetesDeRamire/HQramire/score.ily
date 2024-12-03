\score {
  <<
    \new StaffGroupNoBar <<
      \newStaffWithLyrics <<
        \global \includeNotes "voix-dessus"
      >>\includeLyrics "paroles-dessus"
      \newStaffWithLyrics <<
        \global \includeNotes "voix-dessus2"
      >>\includeLyrics "paroles-dessus2"
      \newStaffWithLyrics <<
        \global \includeNotes "voix-haute-contre"
      >>\includeLyrics "paroles-hctb"
      \newStaffWithLyrics <<
        \global \includeNotes "voix-taille"
      >>\includeLyrics "paroles-hctb"
      \newStaffWithLyrics <<
        \global \includeNotes "voix-basse"
      >>\includeLyrics "paroles-hctb"
    >>
    \newStaffWithLyrics <<
      \global \includeNotes "ramire"
    >>\includeLyrics "paroles-ramire"
    \new StaffGroup <<
      \newStaff <<
        \override Score . VerticalAxisGroup #'remove-first = ##t
        { s2 s2.*41 \break }
        \global \includeNotes "violons" >>
      \newStaff << \global \includeNotes "violon2" >>
      \newStaff << \global \includeNotes "haute-contre-taille" >>
      \newStaff << \global \includeNotes "basse"
                   \includeFigures "chiffres" >>
    >>
  >>
  \layout { \context { \RemoveEmptyStaffContext } }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
