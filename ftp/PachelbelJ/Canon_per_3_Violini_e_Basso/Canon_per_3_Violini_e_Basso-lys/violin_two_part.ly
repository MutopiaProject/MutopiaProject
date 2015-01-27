\version "2.18.2"

#(set-global-staff-size 20)

\include "header.ily"
\include "violin_two.ily"

\score {
  <<
    \compressFullBarRests
    \new Staff = violinII \with {
      midiInstrument = #"violin"
      instrumentName = \markup {
        \center-column {"Violin II" }
      }
    }
    \violintwo
  >>
\include "paper.ily"
\include "midi.ily"
}
