\new Staff  {
	\time 2/2
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 160 
	\set Staff.instrumentName="Flauto dolce"
	\set Staff.midiInstrument="recorder"
	\key c \major
	\clef treble
	\relative c'' { 	
		\partial 2 c8 d e f |
		g4 c h a |
		g c, h a |
		g c f e8 f |
		d2 \bar ":|:" g8 e c g |
		a c d a h d e h |
		c e f a g e f d |
		e c d h c e d c |
		h2 c'4. g8 |
		a f g e f d e c |
		f d e f g, h d f |
		e c d a h4. c8 |
		c2 \bar ":|:" a8 h c d |
		e4 a gis a |
		h e, d c8 h |
		c h c d d4. c16 d |
		e2 c'8 e, d c |
		d c' h a h d, c h |
		c h' a gis a e a g |
		f e d c d c h a |
		gis' a a8. gis32 a h8 e, d' h |
		c a h c gis4. a8 |
		a2 d,8 a' h c |
		h g a h d,4 fis |
		g4. a8 h g fis e |
		c' e, dis e h' e, dis e |
		c' e, dis e h' e, dis e |
		c' a h g a fis g e |
		dis h dis fis a c h fis |
		g dis e fis h,4 dis |
		e2 c8 d e f |
		g4 c h a |
		g c, h a |
		g c f e8 f |
		d2 g8 e c g |
		a c d a h d e h |
		c e f a g e f d |
		e c d h c e d c |
		h4 a8 g c'4. g8 |
		a f g e f d e c |
		f d e f g, h d f |
		e c d a h4. c8 |
		c2 c'4. g8 |
		a f g e f d e c |
		f d e f g, h d f |
		e c d a h4. c8 |
		c2\fermata
	\bar ":|"
	}

}
