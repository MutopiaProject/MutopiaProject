\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\Sem r4 e8. e16 a8 a16 gis a8 a |
			r a a e f4 r |
			g8 a h h h d g, g16 a |
			f4 r16 g f g e8 e r4 |
			b'2 g8 g r16 g b a |
			f8 f d' gis,16 a e4 r |
			r8 a a d, e4 r |
			r8 gis h h h d gis, gis16 a |
			a8 a r e a a r c |
			a a a g f4 f |
			h8 d f, f16 g e8 e a h16 c |
			g8 g r4 \Scit e'8 c16 c c8 h |
			d d r h d c d d |
			d f h, h16 c c4 r8 g |
			c c r c c g b b16 c |
			a4 r16 c b a d8 d16 f c8 c |
			\Sem r8 f, a a a g a a |
			a c f, f16 e g8 g r4 |
			a a8 b g g r16 g b a |
			f8 f r f a4 a |
			c8 b a a16 b b8 b r f |
			b a b b r b16 b b8 f16 es |
			f4 f f8 g as as16 g |
			es8 es r es g f g g |
			g g16 as b8 b b b16 b c8 des |
			g, g r g b8. b16 b8 c |
			as as r16 as b c c8 g g g16 f |
			g8 g r g b8. b16 b8 as |
			as4 as as8 c as g16 f |
			h4 h8 h16 c g8 g r es |
			g8. g16 g8 c fis,4 fis |
			a8 a16 b c8 b b b b4~ |
			b8 a16 b g8 g \Scit r4 d'8 c16 d |
			b8 b r g cis4 e8 cis16 d |
			a8 a r4 \Sem a8 a16 a a8 gis |
			a a a e16 f d8 d r16 g b a |
			f4 \Scit r8 c' a a16 a g8 a |
			f f \Sem r8 c' c f, r16 g f g |
			e4 r fis8 fis16 g a8 g |
			a a c a16 h g4 r8 h |
			h fis16 fis fis8 g a a \Scit c4~ |
			c8 c16 h a8 a16 h g8 g \Sem g e16 e |
			h'8 g16 g fis8 g e4 r16 e a gis |
			a8 a r h g8. g16 a8 e |
			fis4 \Scit d'8 cis16 d a8 a \Sem a g16 a |
			fis8 fis16 d gis4 r8 h16 a gis8 gis16 a |
			a8 a a gis16 a e8 e \Scit e' a, |
			r a cis cis16 h cis8 cis cis dis16 e |
			h8 h \Sem h fis16 gis e4 r |
			dis8 dis16 dis gis8 fis gis4 gis |
			gis8 dis fis8 fis16 e cis4 r8 e |
			gis fis gis4 gis8 gis gis a16 h |
			eis,4 r8 eis eis fis gis fis |
			gis8. gis16 h8 a fis fis r fis16 gis |
			ais8 h16 cis cis8 e, g g16 g g8 fis |
			d d r d fis e fis fis16 h |
			h8 fis g a g4 d8 d16 d |
			g8 g r g h h h a |
			a a r16 a a a a8 e r e |
			g8. g16 a8 a16 e fis8 fis r16 h a gis |
			h4 h h8 h16 h cis8 d |
			a a r gis16 a h8 h16 a h8 h |
			h c16 d gis,8 gis gis gis16 a h8 e, |
			a a a g16 a f8 f r16 f e d |
			gis8 gis16 a e8 e r4 a8 gis |
			a a r c h h r4 |
			h8 fis r16 fis a g e4 \Scit h'8 h16 c |
			c8 c r c16 e c8 c16 h g8 g |
			\Sem r d g fis g g r h |
			a8. a16 a8 e fis fis \Scit a a |
			d4 d8 a h h r h16 c |
			d8 d16 c d8 d d e16 f h,8 h |
			h8 c d d16 g, c8 c r16 c c d |
			b4 b b8 b16 b c8 g |
			a a r a c4 r8 es |
			d4 r8 b d d d d16 d |
			e8 f c c \Sem r4 r8 c |
			c f, f e f f r f |
			a a a g g4 g |
			h8 h16 h c8 d f, f r16 f g d |
			e8 e r e g g r g16 c |
			c8 g r g b b r16 b b a |
			a8 a r a a e r e16 f |
			g8 g r g16 b a8 a16 a r8 a |
			f f r4 fis8 g a a16 d, |
			g8 g r4 gis8 a h h16 e, |
			a8 a r e a a a gis |
			a4 c8 a16 e fis8 fis \Scit r fis |
			h8. h16 h8 ais h h \Sem h fis |
			r h h fis16 g a8 a16 a a8 g |
			e e r4 r8 g e e16 c' |
			g4 r16 e g f g8 g16 g b8 a |
			f4 a8 b16 c g8 g r g |
			e4 r8 e a4 a8 a16 gis |
			a4 a a8 b g g16 a |
			f4 a8 d, r4 a' |
			c8 fis, r4 d8 d16 e fis8 fis |
			fis fis16 g a8 g a4 a |
			a8 b c b16 a b4 r |
			b8 b16 b r8 d a a r4 |
		}

	\bar "|."
	}

}
