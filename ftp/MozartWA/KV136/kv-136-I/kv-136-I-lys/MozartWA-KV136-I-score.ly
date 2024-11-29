\version "2.24.1"
\language nederlands

score-type = #"score"

\include "articulate.ly"
\include "../../master.ily"
\include "./common.ily"
\include "./violin1.ily"
\include "./violin2.ily"
\include "./viola.ily"
\include "./cello.ily"

\header {
  instrument = "Partitura"
}

\paper {
  system-separator-markup = \slashSeparator
}

\score {
  \new StaffGroup <<
	\accidentalStyle StaffGroup.modern
	\new Staff = "violin1" \with {
	  instrumentName = "Violino I"
	  shortInstrumentName = "Vln. I"
	}
	{ \new Voice \violinI }
	\new Staff = "violin2" \with {
	  instrumentName = "Violino II"
	  shortInstrumentName = "Vln. II"
	}
	{ \new Voice \violinII }
	\new Staff = "viola" \with {
	  instrumentName = "Viola"
	  shortInstrumentName = "Vla."
	}
	{ \new Voice \viola }
	\new Staff = "cello" \with {
	  instrumentName = "Basso"
	  shortInstrumentName = "Vlc."
	}
	<<
	  \new Voice \cello
	  \new Voice \breaks
	>>
  >>
}
