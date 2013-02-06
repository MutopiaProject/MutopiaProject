
\version "2.16.0"

\include "fagotto-1.ly"
\include "fagotto-2.ly"

fagottiStaff =  \context Staff = "fagotti" <<
	\set Staff.midiInstrument = #"bassoon"
	\set Staff.instrumentName = #"Fagotti"
	\set Staff.shortInstrumentName = #"Fg."
	\clef "bass"
	\global
	\context Voice = "one" \partcombine \fagottoI \fagottoII
>>

