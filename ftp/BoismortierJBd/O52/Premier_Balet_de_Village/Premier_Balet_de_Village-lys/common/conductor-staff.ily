\include "version.ily"
\include "styles.ily"
%\thisTocLabel
\score {
	\keepWithTag #'printed
	<<
	\new Staff  {
		\set Staff.instrumentName = \thisInstrNameI
		\thisClefInstrI
		\global
		\flute
	}

	\new Staff  {
		\set Staff.instrumentName = \thisInstrNameII
		\thisClefInstrII
		\global
		\violin
	}

	\new Staff \with {
		\override RestCollision.positioning-done = #merge-rests-on-positioning
	}
	<<
		\set Staff.instrumentName = \thisInstrNameIII
		\thisClefInstrIII
		\global
		\guitar
	>>

	>>
	\layout{ }
}
