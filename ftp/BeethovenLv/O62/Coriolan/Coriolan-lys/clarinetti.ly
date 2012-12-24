\version "2.16.0"

\include "clarinetto-1.ly"
\include "clarinetto-2.ly"

clarinettiStaff = \context Staff = "clarinetti" <<
	\set Staff.midiInstrument = #"clarinet"

	\set Staff.instrumentName = #"Clarinetti in B"
	
	\set Staff.shortInstrumentName = \markup {\center-column {Cl. \line{ "B" \smaller \flat}}}
	\transposition ais 
	
	\Time
	 { \key f \major }
	\End
	\context Voice = "one" \partcombine \clarinettoI \clarinettoII
>>

