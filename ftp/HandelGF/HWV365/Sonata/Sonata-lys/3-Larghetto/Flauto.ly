\new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 60 
	\set Staff.instrumentName="Flauto dolce"
	\set Staff.midiInstrument="recorder"
	\key c \major
	\clef treble
	\relative c'' { 	
		R2.*4 |
		e2.~ |
		e2 a4 |
		gis2 e4 |
		d c h |
		c8. h16 a4 r |
		r e' f |
		g2.~ |
		g2 c4 |
		h2 c4 |
		d, e f |
		e2.~ |
		e4 g fis |
		g2. |
		gis |
		a |
		h |
		c2 h4 |
		e,2 fis4 |
		dis4. cis8 h4 |
		r e d |
		c2 h4 |
		r4 a'8.\trill gis16 a4 |
		a4. h8 g4~ |
		g8 fis fis4.\trill e8 |
		e2. |
		R2.*2 |
		r4 h' h8 c16 d |
		c4 e, f |
		g2 a4 |
		f4. e8 d4 |
		r h' e, |
		c'4. h8 a4~ |
		a8 h gis4. a8 |
		d,2.~ |
		d4. e8 h4 |
		c2 e4 |
		a d,4. e8 |
		e2. |
	\bar "||"
	}

}
