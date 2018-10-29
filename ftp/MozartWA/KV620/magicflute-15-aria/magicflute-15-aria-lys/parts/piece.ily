\version "2.18.0"

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
