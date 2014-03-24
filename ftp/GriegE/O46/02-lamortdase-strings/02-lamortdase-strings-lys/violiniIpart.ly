\version "2.18.0"

#(set-global-staff-size 20)

\include "header.ly"
\include "violiniI.ly"

\score {
  << 
    \new Staff = violiniI \with {
      midiInstrument = #"violin"
      instrumentName = \markup {
        \center-column { "Violini I" \line {"(con sordini)"} }
      }
      shortInstrumentName = #"Vl.I "
    }
	\partcombine \violinioneI \violinioneII
  >>
\include "paper.ly"
\include "midi.ly"
}
