\version "2.18.0"

\score{
<<
	\include \includeFile
>>
	\layout {}
}

\score{
<<
	\unfoldRepeats {
	\include \includeFile
	}
>>
	\midi {\tempo 4=\midiTempo}
}
