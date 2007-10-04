\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \characterName \markup "La Gloire"
      \global \basDessus \includeNotes "gloire"
    >> \includeLyrics "paroles1"
    \newStaffWithLyrics <<
      \characterName \markup "La Sagesse"
      \global \basDessus \includeNotes "sagesse"
    >> \includeLyrics "paroles2"
    \newStaff << \global \basse \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
