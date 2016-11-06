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
			\partial 2 \Tam r8 a d d |
			r d d a16 c h8 h r e |
			e8. h16 h8 e c c r e |
			c8. c16 h8 c a a r4 |
			c8 c16 h c8 c r4 e |
			e8 dis dis e h h \Mir r h |
			h e e ais, cis cis16 d e8 d |
			h4 r d8 d16 cis d8 d |
			r4 d8 a16 h g8 g r4 |
			h8 h16 c d8 c d4 r16 d f e |
			c8 c r4 c8 g16 a b8 c |
			a a r4 f'8 c16 c c8 d |
			h4 h d8 e f f16 e |
			c4 \Sib r8 g e4 \Scit c'8 c16 h |
			c8 c c g16 b a8 a r c |
			a4 r8 a c b c c |
			r c16 f c8 c16 d b8 b \Mir d d16 c |
			d4 d d8 f b, b16 d |
			c8 c r4 d8 a r d |
			b b \Scit r d b4 r8 g |
			b a b b16 d b8 b a g |
			cis4 r e8 d cis cis16 d |
			d8 d d cis16 d a4 \Mir r16 a d cis |
			d8 d d d16 a h8 h \Scit r gis |
			h a h h e h r h16 c |
			d4 r8 d16 c a8 a r4 |
			c8 g16 a b8 c a4 r |
			c8 a16 c c8 f, \Sib a8 a \Sem r16 a c f, |
			b8 b \Mir r f b a b b |
			r f f f b a b b |
			r b16 b b8 b16 c c8 c c c16 d |
			b8 b r4 c8 c16 h c4 |
			c8 c16 c c8 c c4 g |
			g8 a b b16 a a8 a r f |
			a a a g a a r a |
			a a16 a h8 c h h16 h h8 c |
			g g r4 d'8 a r4 |
			a8 a d a b4 d8 cis16 d |
			a8 a \Sem r e a gis a a |
			a a16 a a8 e fis4 \Sib a8 a16 d |
			d8 a r4 a8 a fis e16 fis |
			d8 d r fis a a r h |
			h fis fis g a4 a8 h |
			g g r16 e g fis fis8 fis fis e16 fis |
			d4 r fis8 fis16 fis h8 fis |
			g4 g h8 ais16 ais ais8 h |
			fis fis \Scit cis' cis16 fis, h8 h d4 |
			h8 h16 h r8 h gis gis \Sib r cis |
			cis gis r4 r8 eis gis gis |
			h h16 h h8 a fis4 \Sem a8 a16 a |
			cis8 fis, r4 \Sib a8 a16 a a8 h |
			gis gis r4 gis8 a h h16 cis |
			a8 a r4 r a8 e16 e |
			r8 e a4 a8 a16 gis a8 a |
			r a g a fis fis r fis |
			a4 a a8 h c c16 h |
			h8 h r16 h cis d a8 a \Sem a d, |
			r d' a a16 h g4 r |
			h8. h16 h4 r8 d d g, |
			r fis16 h h8 fis16 g e4 r16 e g fis |
			g8 g16 g fis8 e ais4 cis8 ais16 h |
			fis8 fis r4 fis8 fis h h16 a |
			a4 a r a8 e16 fis |
			g8 g g fis d d r a' |
			a h c h g g r4 |
			a8 a a h16 c e,4 e |
			c'8 fis,16 fis fis8 g d4 r |
		}

	\bar "|."
	}

}
