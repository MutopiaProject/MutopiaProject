\version "2.18.2"

\score {
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column {
        \line { \bold \huge { "№" } \number { \exercise "." } }
        \line \large { \tonality_deutsch }
        \italic \line { \tonality_fr }
      }
    }
    shortInstrumentName = ""
  }
  <<
    \new Staff="Discant" \RH
    \new Dynamics = "Dynamics_pf" \dynamics
    \new Staff="Bass" \LH
  >>
  \layout { }
}
