\version "2.18.2"
\score {
  \removeWithTag #'played
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = #'( (padding . 5) )
  } <<
    \new Staff = "upper" { \PrelTwoGlobal \PrelTwoUpperStaff }
    \new Dynamics = "dyns" { \PrelTwoDynamics }
    \new Staff = "lower" \with { \accepts "Staff" } { \PrelTwoGlobal \PrelTwoLowerStaff } 
  >>
  \layout {
    \context {
      \PianoStaff
      \consists #Span_stem_engraver
    }
  }
}