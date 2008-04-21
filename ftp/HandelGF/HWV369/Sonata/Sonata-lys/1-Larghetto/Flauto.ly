\new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.instrumentName="Flauto dolce"
	\set Staff.midiInstrument="recorder"
	\key f \major
	\clef treble
	\relative c'' { 	
		r4 a b |
		c2.~ |
		c4 c d |
		e2 f4 |
		g a f |
		b g c |
		a4. g8 f4 |
		r8 d g,4 a8. b16 |
		a4 a b |
		c2.~ |
		c4 c d |
		e2 f4 |
		g a f |
		d2 e4 |
		f d4. c8 |
		c2. |
		r4 a' g |
		e8. d16 c4 r |
		r c' a |
		b4. a8 b g |
		a4. g8 a f |
		g4. f8 g e |
		f4 b a |
		g f e |
		f8 g e4. d8 |
		d4 b'8. a16 b4 |
		c,4 a'8. g16 a4 |
		b,8 a' g8.\trill f16 f8.\trill e16 |
		e4 c c |
		c d8 c b a |
		g4 a' a |
		a2.~ |
		a8. g16 f4 b~ |
		b4. g8 a4 |
		g8 f e4. f8 |
		a,4 a a |
		f' a, d |
		c4. d8 b4 |
		a8 g g4. f8 |
		f4 f' e8. d16 |
		c2. |
		r4 a' g8 c, |
		f a, h4. c8 |
		c2. |
	\bar "||"
	}

}
