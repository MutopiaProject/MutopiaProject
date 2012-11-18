
\version "2.16.0"

\include "oboe-1.ly"
\include "oboe-2.ly"

oboiStaff =  \context Staff = "oboi" <<
	\set Staff.midiInstrument = #"oboe"
	\set Staff.instrumentName = #"Oboi"
	\set Staff.shortInstrumentName = #"Ob."
	\global
	\context Voice = "one" \partcombine \oboeI \oboeII
>>
