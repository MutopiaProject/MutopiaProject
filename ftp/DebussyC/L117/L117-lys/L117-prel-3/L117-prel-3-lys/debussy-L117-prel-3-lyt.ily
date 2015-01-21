\version "2.18.2"

\score {
  \removeWithTag #'played
  \context PianoStaff \with {
    midiInstrument = "acoustic grand"
    \override StaffGrouper #'staff-staff-spacing #'padding = #0.4
    \override StaffGrouper #'staff-staff-spacing #'basic-distance = #16
    } <<
    \new Staff = "upper" {
      \clef treble
      \PrelThreeGlobal
      \override Score.MetronomeMark.padding = #1.5
      \tempo "Animé" 4=126
      \new Voice="upperOne" { \PrelThreeUpperOne }
    }
    \new Dynamics \with {
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'padding = #0.2
      } { \PrelThreeMidDynamics }
    \new Staff = "lower" {
      \clef treble
      \PrelThreeGlobal
      \new Voice="lowerOne" { \PrelThreeLowerOne }
    }
    \new Dynamics { \PrelThreeLowDynamics }
  >>
  \layout{
    \context {
      \PianoStaff
      \consists #Span_stem_engraver
    }
    \context {
      \Score
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16)
    }
  }
}
