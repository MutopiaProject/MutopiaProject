\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \characterName \markup \instruments \smallCaps { "Un Amant" "fortune" }
      \global \voixHauteContre \includeNotes "amant"
    >> \includeLyrics "paroles"
    \newStaff << \global \basse \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \layout { 
    indent = \largeindent
    \context { \Staff \remove "Time_signature_engraver" }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 140 4) } }
}
