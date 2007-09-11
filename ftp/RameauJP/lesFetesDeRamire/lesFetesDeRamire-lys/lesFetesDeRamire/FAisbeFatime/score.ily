\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \global \includeNotes "isbe-fatime"
    >> \includeLyrics "paroles"
    \newStaff << \global \includeNotes "basse"
                 \includeFigures "chiffres"
                 { s2 s2.*4 s1 s2. s1*2 s1 s1 s2. s1 s2.*3 \break }
               >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 92 4) } }
}
