\score {
  \new StaffGroupNoBar <<
    \newSmallStaff <<
      \newStaffWithLyrics <<
        \global \voixHauteContre \includeNotes "renaud"
      >> \includeLyrics "paroles"
    >>
    \newStaff << \global \basse \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \layout { \context { \Staff \remove "Time_signature_engraver" } }
}
