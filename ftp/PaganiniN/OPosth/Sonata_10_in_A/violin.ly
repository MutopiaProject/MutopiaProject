\version "2.18.0"

\include "header.ily"

\header {
	instrument = "Violin"
}

\layout {
	\compressFullBarRests
}

\include "notes.ily"

\score{
<<
	\include "violin.ily"
>>
	\midi {}
	\layout {}
}
