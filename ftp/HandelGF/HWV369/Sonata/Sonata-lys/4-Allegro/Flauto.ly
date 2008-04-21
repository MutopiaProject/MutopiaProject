\new Staff  {
	\time 12/8
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 160 
	\set Staff.instrumentName="Flauto dolce"
	\set Staff.midiInstrument="recorder"
	\key f \major
	\clef treble
	\relative c'' { 	
		f8 a f c a c f a f c a c |
		g' b g e c e a g f r r a |
		g a b c b c f,4. r8 r f |
		e f g a g a d,4. r8 r g |
		c, d e f g a b a g a g f |
		g f e f e d e d c g' f e |
		a g f e d c h' a g c h a |
		g f e f e d c2. \bar ":|:" |
		c8 e g e c g c e g c g e |
		a f d h d g e d c r4 r8 |
		f a f c a c f a f c a c |
		g' b g e c e a g f r r a |
		b a g f e d cis4 b'8 a4. |
		r8 r b a4. r8 r b a4 g8 |
		f e d a d cis d4. r8 r d' |
		e,4 d'8 d4 d8 d c h c4 c8 |
		d,4 c'8 c4 c8 c b a b4 b8 |
		c,4 b'8 b4 b8 b a g a b c |
		d c b a g f e4. r8 r c |
		d e f g a b c, d e f g a |
		b c d c d b a4. r8 r a |
		g a b c b c f,4. r8 r f |
		e f g a g a d,4. r8 r g |
		c, d e f g a b a g a g f |
		g f e f e d e d c f g a |
		d, e f c f e f4.~ f8 g e |
		f4.~ f8 g a b a g a g f |
		g e f c f e f2. |
	\bar ":|"
	}

}
