\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.instrumentName="Flauto dolce"
	\set Staff.midiInstrument="recorder"
	\key g \minor
	\clef treble
	\relative c'' { 	
		d4 g8. a16 fis4. d8 |
		g4 a b2 |
		d,4 a' b4. a8 |
		b4 c a2 |
		a4 b g4. fis8 |
		g4 a fis2 |
		g4 d es4. d8 |
		es4 f d4. f8 |
		b4 c a4. f8 |
		b4. f8 g f es d |
		c4 a' b2 |
		f4 b8 a g f es d |
		c4. b8 b2 \bar ":|:" |
		d8 f c f d f c f |
		d f c f d2 |
		es8 g d g es g d g |
		es g d g es4. g8 |
		c,4~ f~ f8 g es d |
		d4. c8 c4. c8 |
		f4 es8. d16 d4. d8 |
		g4 f8. e16 e4. e8 |
		a4 g8. fis16 fis4. g8 |
		a4 d b4. a8 |
		g4 f8 g es4 d |
		c4. d8 d2 |
		d4 g8. a16 fis4. d8 |
		g4 a b4. a8 |
		b8 d a d b d a d |
		b d fis, d' g,4. g8 |
		c b a g fis4 g8 c |
		b4 a8.\trill g16 g4. f8 |
		es d c4~ c8 d b a |
		a4. g8 g2\fermata |
	\bar ":|"
	}

}
