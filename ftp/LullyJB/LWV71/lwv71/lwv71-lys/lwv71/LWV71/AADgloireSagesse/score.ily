\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \characterName \markup "La Gloire"
      \scoreInit \global 
      \basDessus \includeNotes "gloire"
    >> \includeLyrics "paroles-gloire"
    \newStaffWithLyrics <<
      \characterName \markup "La Sagesse"
      \global \basDessus \includeNotes "sagesse"
    >> \includeLyrics "paroles-sagesse"
    \newStaff << \global \basse \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \layout {
    indent = \largeindent
    #(define tweak-key (*current-piece*))
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
