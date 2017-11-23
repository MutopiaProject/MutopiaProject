\version "2.18.2"
\score {
    \removeWithTag #'printed
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "acoustic grand"
        \new Staff = "upper" { \clef treble \global \upperStaff }
        \new Dynamics = "dyns" { \dynamics }
        \new Staff = "lower" { \clef bass \global \lowerStaff }
    >>
    \midi  { \tempo 4 = 44 }
}