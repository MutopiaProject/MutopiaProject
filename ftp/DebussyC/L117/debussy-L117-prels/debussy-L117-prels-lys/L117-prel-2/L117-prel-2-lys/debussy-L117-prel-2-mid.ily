\version "2.18.2"
\score {
  \articulate <<  
    \removeWithTag #'printed
    \new PianoStaff <<
        \set PianoStaff.midiInstrument = "acoustic grand"
        \new Staff = "upper" { \clef treble \global \upperStaff }
        \new Dynamics = "dyns" { \dynamics }
        \new Staff = "lower" { \clef bass \global \lowerStaff }
    >>
  >>
  \midi { \tempo 8 = 88 }
}
