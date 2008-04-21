\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 60 
	\set Staff.instrumentName="Flauto dolce"
	\set Staff.midiInstrument="recorder"
	\key g \minor
	\clef treble
	\relative c''' { 	
		g4. b16 a a4. c16 b |
		b8 a16 g fis8.\trill g16 a8 d, r a' |
		b a16 g f8. es16 d8 c16 b f'4 |
		r8 es16 d d4 r8 c16 b b8 f' |
		g16 a b c, d8 c16. b32 b4 r |
		d4. e16 f e8 fis16 g fis8 g |
		a d, r a' b8. a16 g f e d |
		cis8 a r a' g32 a b16 a8 r f |
		g f r a b d, g4~ |
		g8 a f e f8. g32 e e8. d16 |
		d4 r d'4. f,8 |
		es c' d, h' c4. es,8 |
		d b' c, a' b d, g4 |
		r8 e a4 r8 a d c |
		b a c b a g fis g |
		a d, r d c32 d es16 d8 r d |
		g fis c'4~ c8 d b a |
		b8. c32 a a8. g16 g8 b16. g32 es4~ |
		es8 d16. c32 d4~ d8 g c,8. d16 |
		d1 |
	\bar "|."
	}

}
