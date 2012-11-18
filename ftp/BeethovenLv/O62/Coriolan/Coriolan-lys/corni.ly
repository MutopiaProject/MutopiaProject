\version "2.16.0"

\include "corno-1.ly"
\include "corno-2.ly"

corniStaff = \context Staff = "corni" <<
	\set Staff.midiInstrument = #"french horn"

	\set Staff.instrumentName = \markup {"Corni in E" \smaller\flat}
	
	\set Staff.shortInstrumentName = \markup{ \center-column{"Cor." \line{"E" \smaller\flat}}}
	\transposition dis' 
	\Time
	 { \key c \major }
	\End
	\context Voice = "one" \partcombine \cornoI \cornoII
>>

