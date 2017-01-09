\new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.instrumentName="Corni"
	\set Staff.midiInstrument="french horn"
	\transposition d
	\key c \major
	\clef treble
	\relative c' {
		<<{c2.~}\\{c~}>> |
		<<{c~}\\{c~}>> |
		<<{c~}\\{c~}>> |
		<<{c~}\\{c~}>> |
		<<{c}\\{c}>> |
		<<{c'~}\\{c~}>> |
		<<{c}\\{c}>> |
		<<{d}\\{g,}>> |

	\bar "|."
	}

}
