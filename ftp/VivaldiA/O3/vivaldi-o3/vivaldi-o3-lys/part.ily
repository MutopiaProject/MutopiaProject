\version "2.18.0"

\score{
<<
	\new Staff = \instrument {
		\set Staff.midiInstrument = \mInst
		<<
			\notes
			\pMarkings
		>>
	}
>>
	\layout {
	}
\include \incmidi
}
