\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 50 
	\set Staff.instrumentName="Flauto dolce"
	\set Staff.midiInstrument="recorder"
	\key c \major
	\clef treble
	\relative c'' { 	
		c4~ c16 e g h c4~ c16 h c g |
		a8 c,16 d h8. c16 d4 r |
		c~ c16 e g h c4~ c16 h c g |
		a8 c,16 d h8. c16 d4 r8 g16 e |
		f16. d32 e16. f32 g,8 f' f16. d32 e8~ e16. f32 d16. c32 |
		h16. g32 c16. f32 e8 d16. c32 c4 r8 c'16. a32 |
		b16. g32 a16. b32 c,8 b' b16. g32 a8~ a g16. f32 |
		e8 d16 e32 f h,8. c16 c8 e g4~ |
		g8 fis16 a c8 c c16 a h8 r h~ |
		h a16 h32 c a8. g16 fis16. e32 d8 d4~ |
		d8 e16 d c8. h16 h8 a d'4~ |
		d8 c16 h a8 g c fis, g4~ |
		g8 a16 h32 c fis,8. g16 g8 d h'4~ |
		h16. gis32 a16. h32 d,8 d d\trill c c'4~ |
		c16. dis,32 e16. fis32 h,8 a' a\trill g b4~ |
		b16. cis,32 d16. e32 a,8 g' g\trill f as4~ |
		as8 g g f e d16 c f4 |
		b16. e,32 f16. d32 e8. f16 f4 f~ |
		f8 e16 d e8 g16 fis g8 g, d'4~ |
		d16 g, c e f8 e16. d32 e8 c c'4~ |
		c16. c,32 f16. a32 b8 a16. g32 a8 c16 h c8 h16 a |
		g8 f32 e d c e8 d16. c32 c16. c'32 h16. a32 g4 |
		r16 c, h16. a32 g4 r16 g' f16. e32 d8 g |
		c, c'16 a fis8. g16 g2 |
	\bar "||"
	}

}
