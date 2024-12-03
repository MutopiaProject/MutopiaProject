\score {
  <<
    \new StaffGroupNoBar <<
      \newStaffWithLyrics <<
        \global \includeNotes "voix-dessus"
      >> \includeLyrics "paroles2"
      \newStaffWithLyrics <<
        \global \includeNotes "voix-haute-contre"
      >> \includeLyrics "paroles1"
      \newStaffWithLyrics <<
        \global \includeNotes "voix-taille"
      >> \includeLyrics "paroles2"
      \newStaffWithLyrics <<
        \global \includeNotes "voix-basse"
      >> \includeLyrics "paroles1"
    >>
    \new StaffGroup <<
      \newStaff << \global \includeNotes "violons" >>
      \newStaff << \global \includeNotes "haute-contre-taille" >>
      \newStaff << \global \includeNotes "basse" >>
    >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 132 4) } }
}
