\version "2.14.2"

\header {
	instrument = \hinst
}

\score {
	\context Staff = \inst {
		\set Staff.midiInstrument = \minst
		\set Score.skipBars = ##t
		<<
			\new Voice \markings
			\new Voice \notes
		>>
	}
	\layout {}
	\include \incmidi
}
