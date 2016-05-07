\version "2.18.2"

\include "violino.ily"
\include "violine1.ily"
\include "violine2.ily"
\include "viola.ily"
\include "violoncello.ily"

instrument = ""
\book {
  \include "header.ily"
  \score {
	<<
	  \new Staff \with {
		instrumentName = #"Violino"
		shortInstrumentName = #"Vln."
	  } {\largoViolino}
	  \new Staff \with {
		instrumentName = #"Violine I"
		shortInstrumentName = #"V.I."
	  } {\largoViolineI}
	  \new Staff \with {
		instrumentName = #"Violine II"
		shortInstrumentName = #"V.II."
	  } {\largoViolineII}
	  \new Staff \with {
		instrumentName = #"Viola"
		shortInstrumentName = #"Vla."
	  } { \largoViola}
	  \new Staff \with {
		instrumentName = #"Violoncello"
		shortInstrumentName = #"C."
	  } {\largoVioloncello}
	>>
	\header {piece = "Largo"}
	\layout { }
	\midi {\tempo 4 = 30} % More or less matches most recordings (2:40–3:00)
  }
}

