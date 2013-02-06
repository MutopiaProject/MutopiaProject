
\version "2.16.0"

\include "trombo-1.ly"
\include "trombo-2.ly"

trombeStaff =  \context Staff = "trombe" <<
	\context Staff = "trombe" {
		\set Staff.midiInstrument = #"trumpet"

		\set Staff.instrumentName = #"Trombe in C"
		\set Staff.shortInstrumentName = \markup {\center-column {Tbe. \line{ "C"}}}

		 { \key c \major }
		\End
	}
	\context Voice = "one" \partcombine \tromboI \tromboII
>>
