\score {
  \new StaffGroupNoBar <<
    \newSmallStaff <<
      \newStaffWithLyrics <<
        \global \voixDessus \includeNotes "armide-aronte"
      >> \includeLyrics "paroles"
    >>
    \newStaff <<
      \global \basse \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout { \context { \Staff \remove "Time_signature_engraver" } }
}
