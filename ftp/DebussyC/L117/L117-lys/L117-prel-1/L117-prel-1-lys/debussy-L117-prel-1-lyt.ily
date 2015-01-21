\version "2.18.2"
\score {
    \removeWithTag #'played
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "acoustic grand"
        \new Staff = "upper" { \clef treble \PrelOneGlobal \PrelOneUpperStaff }
        \new Dynamics = "dyns" { \PrelOneDynamics }
        \new Staff = "lower" { \clef bass \PrelOneGlobal \PrelOneLowerStaff }
    >>
    \layout{
      \context {
        \PianoStaff
        \consists #Span_stem_engraver
      }
    }
}