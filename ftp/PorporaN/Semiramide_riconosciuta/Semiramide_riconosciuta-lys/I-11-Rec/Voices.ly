\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\Tam r8 b d8. d16 d8 c d d |
			d d16 d e8 f c4 r |
			a8 a16 g a8 a16 c h8 h16 h d8 g, |
			c c \Sem c h16 c g8 g r e |
			g8. g16 g8 c c4 fis, |
			fis8 g a a16 h g4 r16 d g fis |
			g8 g r h a a r4 |
			a8 e g g16 fis d4 \Tam r8 a' |
			d4 \Sem r8 a gis gis h gis16 a |
			e4 r8 e a a16 cis a8 a16 gis |
			a8. a16 a8 h h fis r dis16 e |
			fis8 fis16 gis a8 a r cis a gis |
			e8 e \Scit r gis h4 d8 h16 d |
			cis4 \Sem r16 gis h a fis8 fis \Scit r8 fis' |
			cis cis cis d h h \Tam r16 fis h ais |
			h8 h r h d8. d16 d8 cis |
			cis cis r e cis cis cis d |
			d a \Sem a d,16 d r8 fis a a16 a |
			a8 g a4 a8 a16 h c8 h |
			g g \Tam h h16 c d4 \Sem g,8 a |
			f f16 f f8 g e e r e |
			g f g g16 g g8 a b4 |
			c8 g16 a b8 a f f \Scit c' f, |
			\Sem a4 c8 h16 c c8 f, r4 |
			a8 c h h16 c g4 \Scit r16 g c h |
			c8 c16 c d8 e d d r4 |
			d8 d16 d e8 f f h, r4 |
			h8 c d d16 c d8 d r f |
			d d d c a a \Sem r e |
			a8. c16 a4 r16 a gis a a8 e |
			\Scit r c'8 a g e e r4 |
			\Tam h'8 a16 h g8 g r d' a8. a16 |
			a8 g a a r a16 d a8 a16 a |
			c4 c c8 e d d16 a |
			h8 h \Scit r8 g h a h h |
			h d h a16 h g4 r8 h |
			d8 c d d d d16 d e8 f |
			f8 h, r h h c d es |
			c c r g16 g c8 c16 h c8 c |
			r c16 d b8 b16 c a8 a c b16 a |
			d8 d r4 d8 c16 b e8 e16 f |
			c8 c \Sem c8. f,16 f4 \Scit c'8 d |
			b b \Tam d d16 f f8 b, r b |
			d d d es c c es  es16 d |
			b8 b r d h h16 h h8 c |
			c c r es c b g g |
			R1\fermata |
		}

	\bar "|."
	}

}
