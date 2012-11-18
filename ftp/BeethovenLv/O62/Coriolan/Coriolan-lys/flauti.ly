
\version "2.16.0"

\include "flauto-1.ly"
\include "flauto-2.ly"

flautiStaff =   \context Staff = "flauti" <<
	\set Staff.midiInstrument = #"flute"
	\set Staff.instrumentName = #"Flauti"
	\set Staff.shortInstrumentName = #"Fl."
	\global
	\context Voice = "one" \partcombine \flautoI \flautoII
>>

