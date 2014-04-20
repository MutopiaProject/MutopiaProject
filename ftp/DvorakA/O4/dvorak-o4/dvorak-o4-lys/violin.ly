\version "2.18.0"

\include "header.ily"

\header {
	instrument = "Violin"
}

\layout {
	\compressFullBarRests
	\context { \Staff
		\override InstrumentName.stencil = ##f
	}
}

\include "notes1.ily"

\score{
<<
	\include "violin.ily"
>>
	\midi {}
	\layout {}
}

\include "notes2.ily"

\score{
<<
	\include "violin.ily"
>>
	\midi {}
	\layout {}
}

\include "notes3.ily"

\score{
<<
	\include "violin.ily"
>>
	\midi {}
	\layout {}
}

\include "notes4.ily"

\score{
<<
	\include "violin.ily"
>>
	\midi {}
	\layout {}
}
