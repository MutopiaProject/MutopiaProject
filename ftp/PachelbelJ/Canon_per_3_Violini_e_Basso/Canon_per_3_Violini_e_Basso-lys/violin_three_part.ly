\version "2.18.2"

#(set-global-staff-size 20)
\include "header.ily"
\include "violin_three.ily"

\score {
  << 
  \compressFullBarRests
    \new Staff = violinIII \with {
      midiInstrument = #"violin"
      instrumentName = \markup {
        \center-column {"Violin III" }
      }
    }
    \violinthree
  >>
\include "paper.ily"
\include "midi.ily"
}
