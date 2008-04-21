\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName="Flauto dolce"
	\set Staff.midiInstrument="recorder"
	\key f \major
	\clef treble
	\relative c'' { 	
		\partial 8 c8 |
		f c c c d\trill c r c |
		g' c, c c a'\trill g r g |
		a e f g e16.\trill d32 c8 r g' |
		a e f g e f16 g c,8 b' |
		a g16 f c8 e f4 r8 a |
		g16 c b c g c b c f, d' c d h c a h |
		c g c h a g f e d4 r8 d |
		e16 c d e f d e f g e f g c, g' f g |
		a f e f d a' g a h g f g e g a h |
		c a h g a f g e f4. d'8 |
		e, c' d,16 c' h c f,4. g8 |
		e d16 c h8 c f,4. f'8 |
		e8 d16 c h8 h' c h16 a g8 f |
		e d16 c g8 h c4. \bar ":|:" g'8 |
		c g g g a g r a |
		b fis g a fis d r a' |
		b fis g d es c' d, a' |
		b a16 g fis8. g16 g4 r16 g a b |
		c e, f g c, g' a b a c, d e f e f c |
		d f g a b a g f e d c8 r16 f e f |
		d b a b g g' f g e c b c a a' g a |
		f d c d b b' a b g e d e c c' b c |
		a g a f d' c d f, g f g e c' b c e, |
		f e f c d8 b' b4. a16\trill g |
		a8 g16 f e8\trill f b,4. g'8 |
		a,8 f' g, e' b'4. a16 g |
		a8 g16 f e8 d16 c f8 e16 d c8 b |
		a f' g, e' f4.
	\bar "|."
	}

}
