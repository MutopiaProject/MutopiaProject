\version "2.18.2"

\score {
  \removeWithTag #'printed
  \context PianoStaff \with {
    \mergeDifferentlyDottedOn
    \mergeDifferentlyHeadedOn
  } <<
    \set PianoStaff.midiInstrument = "acoustic grand"
    \new Staff = "upper" {
      \clef treble
      \PrelThreeGlobal
      \new Voice="upperOne" { \PrelThreeUpperOne }
    }
    \new Staff = "lower" {
      \clef bass
      \PrelThreeGlobal
      \new Voice="lowerOne" { \PrelThreeLowerOne }
    }
  >>
  \midi  { \tempo 4 = 126 }
}