\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \global \voixHauteContre \includeNotes "amant"
    >> \includeLyrics "paroles"
    \newStaff << \global \basse \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \layout { 
    indent = \noindent
    \context { \Staff \remove "Time_signature_engraver" }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 140 4) } }
}
