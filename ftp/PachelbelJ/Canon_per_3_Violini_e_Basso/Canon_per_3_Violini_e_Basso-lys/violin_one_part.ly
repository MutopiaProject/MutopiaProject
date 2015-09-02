\version "2.18.2"

#(set-global-staff-size 20)

\include "header.ily"
\include "violin_one.ily"

\score {
  << 
  \compressFullBarRests
    \new Staff = violinI \with {
      midiInstrument = #"violin"
      instrumentName = \markup {
        \center-column { "Violin I" }
      }
    }
    \violinone
  >>
\include "paper.ily"
\include "midi.ily"
}
