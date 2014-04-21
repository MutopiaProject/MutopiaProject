\version "2.18.0"

\include "header.ily"

#(set-global-staff-size 18)

\include "notes.ily"

\score{
<<
	\include "violin.ily"
	\include "piano.ily"
>>
	\midi {}
	\layout {}
}
