\version "2.18.0"

\include "header.ily"

\header {
	instrument = "Piano"
}

\include "notes.ily"

\score{
<<
	\include "piano.ily"
>>
	\midi {}
	\layout {}
}
