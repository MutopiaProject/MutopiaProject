\version "2.24.1"
\language nederlands

\include "../../master.ily"
\include "articulate.ly"
\include "./common.ily"
\include "./violin1.ily"
\include "./violin2.ily"
\include "./viola.ily"
\include "./cello.ily"

\score {
  <<
	\new Staff = "violin1" \with { midiInstrument = "violin" } {
	  \new Voice \articulate { \midiTempo \unfoldRepeats \violinI }
	}
	\new Staff = "violin2" \with { midiInstrument = "violin" } {
	  \new Voice \articulate { \midiTempo \unfoldRepeats \violinII }
	}
	\new Staff = "viola" \with { midiInstrument = "viola" } {
	  \new Voice \articulate { \midiTempo \unfoldRepeats \viola }
	}
	\new Staff = "cello" \with { midiInstrument = "cello" } {
	  \new Voice \articulate { \midiTempo \unfoldRepeats \cello }
	}
  >>

  \midi {}
}
