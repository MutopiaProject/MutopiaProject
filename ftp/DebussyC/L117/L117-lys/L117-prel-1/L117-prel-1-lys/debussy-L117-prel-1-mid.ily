\version "2.18.2"
\score {
    \removeWithTag #'printed
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "acoustic grand"
        \new Staff = "upper" { \clef treble \PrelOneGlobal \PrelOneUpperStaff }
        \new Dynamics = "dyns" { \PrelOneDynamics }
        \new Staff = "lower" { \clef bass \PrelOneGlobal \PrelOneLowerStaff }
    >>
    \midi  { \tempo 4 = 40 }
}