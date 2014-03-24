\version "2.18.0"

#(set-global-staff-size 20)

\include "header.ly"
\include "violiniII.ly"

\score {
  << 
    \new Staff = violiniII \with {
      midiInstrument = #"violin"
      instrumentName = \markup {
        \center-column {"Violini II" \line { "(con sordini)" } }
      }
      shortInstrumentName = #"Vl.II"
    }
    \partcombine \violinitwoI \violinitwoII
  >>
\include "paper.ly"
\include "midi.ly"
}
