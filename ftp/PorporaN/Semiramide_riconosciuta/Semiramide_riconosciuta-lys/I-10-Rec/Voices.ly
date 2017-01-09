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
			\partial 2. \Tam r8 e cis4 cis8 cis16 h |
			h8 h d d16 cis a4 \Sem r16 a gis a |
			a8 e r4 r8 fis h h |
			h fis16 fis fis8 gis a a16 a a8 gis |
			e4 r cis'8 gis16 gis gis8 fis |
			gis4 gis h8 h16 h h8 a |
			fis4 \Tam cis'8 fis, r fis a a |
			cis a r4 e'8 h \Sem r h |
			gis4 r cis8 a16 gis e8 e |
			r4 r8 e gis gis h ais16 h |
			fis4 \Scit r8 gis cis his cis cis |
			r cis16 gis h8 h16 a fis8 fis r4 |
			\Sem fis8 gis a a16 gis gis8 gis r4 |
			\Scit dis' fis,16 fis a8 gis e e r |
			\Sem gis8 gis r gis16 a a8 a r4 |
			\Scit r8 a cis h cis cis r e |
			h h r4 \Sem h8 e,16 e r8 e16 gis |
			fis8 fis r16 fis a gis a8 a r cis |
			h h r16 h h fis gis8 gis \Scit r h |
			gis4 r8 e gis fis gis gis |
			gis a h h16 a h8 h r4 |
			h8 cis d d16 cis d8. d16 e8 h |
			cis cis r4 cis8 cis16 cis d8 e |
			e a, r4 e'8 cis16 d d4 |
			fis8 e16 fis d8 cis a a r4 |
			\Sem a8 a a e16 fis g4 g |
			g8 g a a16 e fis4 \Scit d'8 d16 cis |
			d8 d r d d a h c |
			h4 h d8 c h a16 g |
			cis8. e16 cis8 d a a r4 |
			\Sem fis8 g a a16 g a8. a16 c8 h |
			g g \Scit d' d16 d h8 h d4 |
			d8 g, h h16 c d8 c d d |
			d d16 d e8 f e e r4 |
			e8 h16 h c8 d c c16 \Sem d a4 |
			r8 e a a a c a a16 e |
			fis8 fis \Scit h a16 h g8 g r g |
			c4 c c8 d b b16 c |
			a8 a r4 c8 b16 a d4 |
			d8 d16 d e8 f c c r4 |
			\Sem a8 c f, f16 e f8 f r f |
			a a a g g g g d16 f |
			e4 a r a8 a16 a |
			h8 c g g r4 g8 c |
			g g16 f g8 g r16 g g a b8 a |
			a a r e g4 r8 b |
			a4 a a8 a16 a a8 e |
			f f r a16 d d8 a r a16 c |
			b4 b8 c16 d a8 a \Scit a a16 e |
			f4 r r8 gis h h |
			d h16 h h8 c a a r4 |
			c4. c16 e e8 a, r4 |
			a8 a16 h c8 h h h r d |
			h h h c g4 \Sem g8 d16 e |
			c8 c r4 c'8 g16 f g8 g |
			\Scit r g c c r d d a |
			c c16 c c8 b g g \Sem r d |
			g fis g g b a16 b g4 |
			r c8 a16 b f4 \Scit r8 b |
			d d r f f b, c d |
			c c r a c8. c16 d8 es |
			d4 d8 e16 f c8 c \Sem c4 |
			a8 a a b16 c c8 f, r4 |
			\Scit c'8 c16 c c8 f b, b r b |
			d8 d f es c c16 \Sem c g4 |
			r8 g es4 c'8 g16 as b8 as |
			f f r4 as8 c f, f16 e |
			f8 f r f f g as as |
			as b16 c b8 b b f16 g as8 g |
			es es r4 \Scit b'8 es es b16 des |
			c8 c r c d es b b |
			\Sem b8 b b f16 g es8 es r4 |
			b'8. es,16 es4 r8 es g g |
			g g g a16 b a4 r16 c a b |
			f8 f \Scit d' b r b g g16 \Sem b16 |
			b8 es, es d f4 f |
		}

	\bar "|."
	}

}
