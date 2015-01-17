\version "2.19.15"
\include "violin1.ly"
\include "violin2.ly"
\include "viola.ly"
\include "cello.ly"

\include "header.ly"

\score {
    \simultaneous
    {

	\new StaffGroup
	<<
		\context Staff = ViolinI <<
			\set Staff.instrumentName = \markup {   "Violino I" }
			\set Staff.midiInstrument = "violin"
			\violinInotes
		>>
		
		\context Staff = ViolinII <<
			\set Staff.instrumentName = \markup {   "Violino II" }
			\set Staff.midiInstrument = "violin"
			\violinIInotes
		>>
		
		\context Staff = Viola <<
			\set Staff.instrumentName = \markup {   "Viola" }
			\set Staff.midiInstrument = "viola"
			\violaNotes
		>>
		\context Staff = Cello <<
			\set Staff.instrumentName = \markup { "Violoncello" }
			\set Staff.midiInstrument = "cello"
			\celloNotes
		>>
	>>
    }
	
  \midi {
    \tempo 4 = 120
    }


	\layout {}
	\header {}
}


