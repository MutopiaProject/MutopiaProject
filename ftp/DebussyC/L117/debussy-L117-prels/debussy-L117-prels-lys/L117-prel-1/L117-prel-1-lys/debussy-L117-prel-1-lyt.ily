\version "2.18.2"
\score {
    \removeWithTag #'played
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "acoustic grand"
        \new Staff = "upper" { \clef treble \global \upperStaff }
        \new Dynamics = "dyns" { \dynamics }
        \new Staff = "lower" { \clef bass \global \lowerStaff }
    >>
    \layout{
      \context {
        \PianoStaff
        \consists #Span_stem_engraver
      }
    }
}