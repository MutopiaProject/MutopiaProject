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
			\Mir r4 a8 a d d16 cis d4 |
			r8 d fis e e e r4 |
			e8 e e h16 cis a8 a r a |
			cis h cis4 r8 e16 d cis8 h16 a |
			dis8 dis fis dis16 e h8 h r gis |
			h h \Irc e, h r e e h |
			h cis d d16 cis d8 d r e |
			cis cis \Mir r cis' a a r a |
			cis cis cis h cis cis16 \Irc f, cis8. cis16 |
			cis8 h cis cis r cis16 cis cis8 d16 e |
			e8 ais, r fis' cis8. cis16 d8 e |
			d d r h eis eis r eis |
			cis cis \Mir r cis' cis gis r gis |
			cis his cis cis r cis16 cis cis8 gis16 a |
			h8 h r16 cis gis a fis8 fis \Irc r8 a, |
			cis4 \Sem r16 a' gis a fis8 fis r4 |
			h8 fis a a16 gis e8 e r4 |
			\Irc h8 e h h16 cis d4 e8 e16 h |
			cis8 cis \Mir r8 a' cis cis16 h h8 cis |
			a a r e' e g, r a |
			fis fis r d' d a r16 a h c |
			h4 d8 cis16 d a8 a \Sem a a |
			fis8. fis16 fis8 a a d, r fis |
			a g a a r16 a a h c8 h |
			g g r4 h8 d gis, gis16 a |
			a8 a \Tam c c r dis16 e h8 h |
			\Sem r8 h g16 g a h h8 e, r4 |
			\Irc h8 h e e16 dis e4 \Tam e'8 cis16 d |
			h8 h \Irc r fis d4 d8 cis16 d |
			h4 r\fermata r d8 d16 cis |
			d8 d  d a16 h f8 f r16 h h c |
			d8 c d d g d16 d d8 e |
			c c r g c h c c |
			c c16 d e8 e16 d d8 d r g, |
			f'8. f16 f8 e e e r16 e fis g |
			d8 d r d h h r h16 d |
			cis4 cis e8 g cis, cis16 d |
			a8 a r4 d8 d16 cis d8 d |
			d d16 d e8 f f b, r b |
			d d16 c c4 c8 g16 a b8 c |
			a a r4 c8 c f f16 c |
			d8 d r4 e8. e16 e8 f |
			c c \Tam r c' a a \Sem r16 a g a |
			f8 f r4 a8 c f, f16 a |
			g8 g \Tam e' h16 c g8 g \Sem g f16 g |
			e8 e \Sib c'4 fis,8 fis r16 fis a d, |
			g8 g r4 fis8 fis h h16 fis |
			g8 g \Sem h e,16 e r8 h' gis gis |
			r gis h e, a a \Sib r cis |
			a a \Sem r a e4 \Scit cis'8 cis |
			r e e a, r16 fis a g a8 a |
			r a d d d a r16 d d a |
			h8 h \Irc r8 d, h h \Scit r8 h' |
			g4 r \Sem h8 h r h16 d |
			g,8 g g g16 fis a8 a \Scit r a |
			fis fis \Sem a4 gis8 gis \Scit r8 h16 d |
			c8 c r e h h \Sem h fis16 g |
			e8 e r4 \Scit e'8 d c c16 h |
			ais8 ais \Sem r cis ais h fis fis |
			\Irc d8. d16 e8 fis h, h16 ais h8 h16 d |
			cis4 \Scit r8 gis' cis his cis cis |
			cis gis16 a h8 a fis fis \Mir cis' his16 cis |
			gis8 gis \Tam cis cis r e e cis |
			a a r cis h4 \Sem r8 e, |
			gis fis gis gis gis a h h16 cis |
			a8 a \Tam cis dis16 e h8 h r4 |
			\Sem gis8 h e, e16 dis e8 e16 e e8 fis |
			gis4 gis gis8 gis16 gis a8 h |
			a4 a a8 a a h16 cis |
			h8. h16 h8 fis gis gis r4 |
			\Scit h4 r8 h16 e, a4 r8 a |
			cis cis r4 e e8 a, |
			r4 a8 h g g r g16 a |
			fis8 fis r4 a d8 a |
			\Sem fis8 g a a16 g a8. a16 c8 h |
			g g \Tam d' h16 d d8 g, r h |
			h c d c d d f d16 e |
			c4 r c8 c16 c d8 e |
			e4 h h8 c d d16 c |
			a8 a \Scit a a a e r4 |
			\Sem a8 gis a4 \Scit d8 d r d16 a |
			h8 h r4 h h8 e |
			h h16 a h8 h16 h h8 c d4 |
			d8 d16 d e8 h c c \Irc r8 e,16 a, |
			d8 d \Scit r8 d' h4 \Irc g8 d16 e |
			c8 c \Tam c' g r c c d |
			b4 b b8 b c c16 g |
			a8 a \Sem r16 c, f e f8 f f g |
			a a16 g a8 a a a16 a h8 c |
			g4 \Tam r16 e' d e c8 c \Sem g8 g16 g |
			e8 e \Irc r16 c c g a8 a r a |
			c c16 f f8 c c d es es16 d |
			b8 b \Tam r f'' c c \Sem r a |
			f4 r a c8 f,16 f |
			f8 g a4 a8 a16 a a8 b |
			g g r g b b b a |
			f f r f a a r d |
			gis,4 gis h8 gis16 a e8 e |
			\Mir e' h16 c d8 c a a \Scit r16 c h c |
			a4 \Sem r8 a a e \Mir a c |
			h h \Scit h h g g \Irc e dis16 e |
			e8 h r4 \Sem r8 h' g g |
			r e g g16 h a8 a a a16 e |
			fis8 fis \Irc a,4 r8 d d a |
			r d d a16 h c8. c16 c8 h |
			g g r4 d'8 e f f16 e |
			e8 e r16 e fis g d8 d \Tam d' d |
			h h \Irc r g g d f f16 e |
			e4 e r8 e e h |
			h cis d e16 h cis4 \Tam a' |
			r8 cis16 h cis8 cis r e d e |
			cis8. cis16 cis8 d d a r4 |
			\Sem a4 d8 a a h g g16 a |
			fis4 \Tam r16 a d cis d8 d r4 |
			d8 d d a16 h c4 d8 a16 c |
			h8 h r4 g r16 g h d |
			c8 \Sem a a e16 fis g8 g g g16 fis |
			d4 d r8 fis h ais |
			h h h a16 h g4 r8 e |
			g fis g g16 h gis8. gis16 gis8 a |
			a4 r a8 e16 d e8 e |
			r8 e a a a e16 fis g8. g16 |
			a8 h a a16 a fis8 fis r a |
			a d,16 d r8 a' gis gis r h |
			gis a e e \Tam h' e e h16 cis |
			a8 a \Irc cis, d16 e e8 a, \Sem a'4 |
			a8. e16 e4 r8 e a a |
			a h16 cis cis8 gis gis gis16 a h8 a |
			fis fis r4 fis8 gis a a16 gis |
			a8 a16 a a8 gis gis gis r4 |
			gis8 gis16 gis gis8 a fis fis a a16 gis |
			e4 r fis8 fis16 fis h8 ais |
			h h16 fis a8 gis e e \Mir h' h16 h |
			gis8 gis \Irc r8 e h8. h16 h8 cis |
			d4 r8 d d e e h16 cis |
			a8 a r4 \Sem a'8 h g g16 a |
			fis4 h8 cis16 d a8 a r4\fermata |
		}

	\bar "|."
	}

}
