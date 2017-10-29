\version "2.18.2"
\score {
  \removeWithTag #'played
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = #'( (padding . 5) )
  } <<
    \new Staff = "upper" { \global \upperStaff }
    \new Dynamics = "dyns" { \dynamics }
    \new Staff = "lower" \with { \accepts "Staff" } { \global \lowerStaff } 
  >>
  \layout {
    \context {
      \PianoStaff
      \consists #Span_stem_engraver
    }
  }
}