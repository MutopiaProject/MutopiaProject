\version "2.18.0"

\include "header.ily"

\header {
	instrument = "Violin Solo"
}

\layout {
	\compressFullBarRests
	\context { \Staff
		\override InstrumentName.stencil = ##f
	}
}

\include "notes.ily"

\score{
<<
	\include "violinsolo.ily"
>>
	\midi {}
	\layout {}
}
