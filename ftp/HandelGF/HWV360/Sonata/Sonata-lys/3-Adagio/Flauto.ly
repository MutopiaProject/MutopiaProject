\new Staff  {
	\time 3/2
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName="Flauto dolce"
	\set Staff.midiInstrument="recorder"
	\key g \minor
	\clef treble
	\relative c''' { 	
		r2 g es |
		b'1. |
		r2 as f |
		c'1. |
		c2 b g |
		as4 b as2 g4. f8 |
		f2 a2. a4 |
		b2 h2. h4 |
		c2 as g |
		fis d'2. fis,4 |
		g b, c2. d4 |
		d1. |
	\bar "|."
	}

}
