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
			\Sib r8 a fis fis r16 fis a g a8 a |
			d a16 h c8 h g g r d |
			g8. h16 g8 g r h h fis |
			r fis16 g a8 a16 g a8 a16 c a8 g |
			e e r4 g8 h e, e16 dis |
			e8 e g g16 fis g8 g r h |
			g8. g16 g8 fis fis fis r cis' |
			ais8. ais16 ais8 h fis fis \Scit r fis |
			h ais h h h h d cis16 d |
			h4 r8 a d cis d d |
			r d d d d a16 a a8 h |
			c h c4 c8 a16 h c8 h |
			g g r h16 a h4 r8 h16 d |
			cis8 cis r e cis d a a |
			d2 d8 d d cis |
			d8. d16 d8 c b4 d8 b16 b |
			b8 a gis gis r h h c |
			d c d d d16 d e f h,8 h16 d |
			c8 c r e c8. c16 c8 h |
			h4 h dis8 fis a, a16 h |
			g8 g e' dis16 e h8 h \Sib r h16 ais |
			h8 h16 h r4 h8 fis r h |
			g g r4 r h8 g16 h |
			a8 a \Scit r16 a d cis d8 d d d16 a |
			h8 h r4 h8 h16 c d8 g, |
			c c \Sib g e16 g g8 c, \Scit r g' |
			c8. c16 c8 h c c r4 |
			c8 c c g16 a b8 b b b16 a |
			a8 a r16 f a g a4 r8 a |
			c c r es d d r d |
			b b r d d g, g a |
			h4 h f'8 h,16 h h8 c |
			c r g c16 h c8 c r des |
			b8. b16 b8 a b b des des16 c |
			as8as f' des16 c h8 c g g |
			\Sib g8. c16 c8 g16 g es8 es r g |
			g c c fis, r fis16 g a8 a16 g |
			a8 a c a16 b g8 g \Scit b4 |
			r8 b16 c d8 d16 c c4 c |
			c8 d es es16 d b8 b \Sib r16 f b a |
			b8 b16 b b8 c as4 r |
			b8 f16 g as8 g es es r es |
			g8. g16 g8 f g g16 g a8 b |
			a a r c a8. a16 a8 b |
			f f \Scit r b d8. d16 es8 f |
			b, b b b16 a c8 c r a |
			a a d cis d d16 d c8 d |
			b8 b d cis16 d a8 a \Sib r e |
			a a r a16 e f8 f \Scit r a16 a |
			d4 d d8 f d d16 a |
			h4 r h8 e, e' h16 a |
			h4 h h8 c d d16 c |
			a8 a \Sib e e16 e a8 gis a a |
			a c h h16 c c8 g r g |
			g c c g16 a b8 b c g |
			a a \Scit r c a4 c8 a16 c |
			c8 f, r16 c' es d b4 r8 f' |
			f16 b, b c d4 d8 d16 d d8 es |
			c c r16 es c g a8 a r4 |
			d8 cis d d r es c c |
			r c16 d es8 es16 d b8 b d4~ |
			d d8 g cis, cis r e |
			cis cis cis d d a r4 |
			r d8 d16 c d8 d f b,16 d |
			c8 c r d b b c g |
			a a r a c c r es |
			d d r16 d c b e8 e r f |
			c c r4 \Sib a8 a16 b c8 f, |
			g4 r8 a a b g g |
			g g a a16 e f8 f \Scit r a |
			d cis d d r d d e |
			e h r16 h d c a8 a \Sib r e |
			a a c h16 c a8 a r fis |
			h ais h h r a a fis |
			fis fis16 g a8 g a4 a |
			a8 h fis fis16 g e4 \Scit h'8 a16 h |
			g8 g a4~ a8 a16 a d8 cis |
			d4 d d8 d d a16 h |
			g8 g \Sib g fis16 g g8 d r4 |
			h'8. d16 g,8 g16 fis g8 g r4 |
			g8 a h h16 a a8 a r a |
			a h g g g a e e16 fis |
			d8 d r4 h'8 h16 ais h8 h |
			h fis16 g a8 h g g r4 |
			h8 a g fis16 e ais8 ais r16 cis ais h |
			h8 fis r4 r2 |
		}

	\bar "|."
	}

}
