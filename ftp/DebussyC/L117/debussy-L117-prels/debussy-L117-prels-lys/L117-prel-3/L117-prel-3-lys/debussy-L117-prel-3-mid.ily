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
      \global
      \new Voice="upperOne" { \upperOne }
    }
    \new Staff = "lower" {
      \clef bass
      \global
      \new Voice="lowerOne" { \lowerOne }
    }
  >>
  \midi  { \tempo 4 = 126 }
}