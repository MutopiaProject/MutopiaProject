\version "2.18.0"

\new PianoStaff <<
	\set PianoStaff.instrumentName = "Piano"
	\set PianoStaff.midiInstrument = "acoustic grand"
	\set PianoStaff.connectArpeggios = ##t
	\new Staff = "up" {
		\pianoUp
	}
	\pianoDynamics
	\new Staff = "down" {
		\pianoDown
	}
>>
