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
      \global
      \override Score.MetronomeMark.padding = #1.5
      \tempo "Animé" 4=126
      \new Voice="upperOne" { \upperOne }
    }
    \new Dynamics \with {
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'padding = #0.2
      } { \midDynamics }
    \new Staff = "lower" {
      \clef treble
      \global
      \new Voice="lowerOne" { \lowerOne }
    }
    \new Dynamics { \lowDynamics }
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
