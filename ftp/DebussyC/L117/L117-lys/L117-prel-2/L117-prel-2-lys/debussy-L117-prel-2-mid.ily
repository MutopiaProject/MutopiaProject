\version "2.18.2"
\score {
  \articulate <<  
    \removeWithTag #'printed
    \new PianoStaff <<
        \set PianoStaff.midiInstrument = "acoustic grand"
        \new Staff = "upper" { \clef treble \PrelTwoGlobal \PrelTwoUpperStaff }
        \new Dynamics = "dyns" { \PrelTwoDynamics }
        \new Staff = "lower" { \clef bass \PrelTwoGlobal \PrelTwoLowerStaff }
    >>
  >>
  \midi { \tempo 8 = 88 }
}
