\score {
	\keepWithTag #'played
	<<
	\new Staff {
		\set Staff.midiInstrument = "flute"
		\set Staff.midiMinimumVolume = #0.30
		\set Staff.midiMaximumVolume = #0.70
		\global \flute
	}
	\new Staff {
		\set Staff.midiInstrument = "violin"
		\set Staff.midiMinimumVolume = #0.30
		\set Staff.midiMaximumVolume = #0.60
		\global \violin 
	}
	\new Staff {
		\set Staff.midiInstrument = "acoustic guitar (nylon)"
		\set Staff.midiMinimumVolume = #0.30
		\set Staff.midiMaximumVolume = #0.70
		\global \guitar
	}
	>>
	\midi {
		\tempo 4 = 110
	}
}
