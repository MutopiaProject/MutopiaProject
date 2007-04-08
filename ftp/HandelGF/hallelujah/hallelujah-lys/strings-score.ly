\include "violin1.ly"
\include "violin2.ly"
\include "viola.ly"
\include "cello.ly"

\include "header.ly"

#(ly:set-point-and-click 'line-column )


\score {
    \simultaneous
    {

	\new StaffGroup
	<<
		\context Staff = ViolinI <<
			\set Staff.instrument = \markup {   "Violino I" }
			\set Staff.midiInstrument = "violin"
			\violinInotes
		>>
		
		\context Staff = ViolinII <<
			\set Staff.instrument = \markup {   "Violino II" }
			\set Staff.midiInstrument = "violin"
			\violinIInotes
		>>
		
		\context Staff = Viola <<
			\set Staff.instrument = \markup {   "Viola" }
			\set Staff.midiInstrument = "viola"
			\violaNotes
		>>
		\context Staff = Cello <<
			\set Staff.instrument = \markup { "Violoncello" }
			\set Staff.midiInstrument = "cello"
			\celloNotes
		>>
	>>
    }
	\midi { \tempo 4 = 120 }
	\paper {}
	\header {}
}


