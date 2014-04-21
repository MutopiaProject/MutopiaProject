\version "2.18.0"

\include "header.ily"

\header {
	instrument = "Cello"
}

\layout {
	\compressFullBarRests
}

\include "notes.ily"

\score{
<<
	\include "cello.ily"
>>
	\midi {}
	\layout {}
}
