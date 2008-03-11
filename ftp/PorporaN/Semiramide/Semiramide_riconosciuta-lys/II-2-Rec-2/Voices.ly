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
			\Sem r8 d fis8. fis16 fis8 e fis fis |
			fis gis16 a gis8 gis h gis16 gis gis8 a |
			e e \Sib r16 cis' h cis a8 a \Irc r e |
			cis cis16 cis dis8 e h h \Mir r h' |
			gis gis r4 r8 gis h h |
			h cis d d16 cis a8 a \Tam r cis |
			a a \Scit r a16 cis his4 \Sem r16 his his cis |
			gis8 gis r4 \Sib r8 gis fis gis |
			e e \Sem r e gis gis16 a h8 h16 cis |
			a8 a r e e e a gis |
			a a r h g g g a |
			fis fis r16 fis a g a8 a16 a h8 c |
			h h16 d a8 a \Tam r a d cis |
			d d r d d a a h |
			g4 g g8 a h h16 a |
			a8 a r16 cis d e e8 a, r4 |
			a8 a16 a g8 a fis fis r d' |
			d8. a16 a8 h c4 c |
			c8 d d a16 h g8 g r4 |
			d'8 d16 e f8 e c4 r16 c h c |
			g8 g \Sem g d16 e c8 c \Mir e'4 |
			c8 c \Scit c b16 c a8 a r4 |
			\Sib a8 a16 a g8 a f f \Irc c8. b16 |
			c8 c r es d d r16 f e f |
			c8 c \Scit r a' c c c h |
			c4 c c8 es c c16 g |
			a8 a r4 \Tam d8 a16 b c8 b |
			g g \Sem r16 b c d a8 a \Scit r a |
			d4 d d8 f d d16 a |
			h8 h r4 \Sem h gis8 a |
			a a r4 a8 gis16 a e4 |
			\Scit c'8 c16 e a,4 r8 h h fis |
			fis g a a16 h g4 r8 g |
			h a h h16 e c8 c c h |
			ais ais r4 cis ais8 h |
			fis fis r4 a8 a16 a d8 cis |
			d d r e c c c c16 d |
			h8 h r4 d8 cis16 d a8 a |
			\Tam a a \Sib a8. a16 fis8 fis \Irc r a, |
			d8. d16 e8 fis e e r fis |
			d d e h cis cis r4 |
			cis8 fis fis cis16 e d8 d d e16 fis |
			cis8 cis \Sem r fis a gis a cis |
			h h r d h8. h16 h8 fis |
			gis gis \Mir cis h16 cis a8 a \Irc r a, |
			cis4 cis cis8 fis cis cis16 dis |
			his8 his r his dis cis dis dis16 gis |
			gis8 dis dis e cis4 r |
			cis8 cis16 cis r8 e h h r4 |
			\Tam h'8. gis16 gis4 r8 h d cis |
			a a r4 cis8 cis16 h cis8 cis |
			r e cis4 r8 cis e a, |
			d d r4 d8 d d e16 fis |
			h,8 h r16 d cis d a8 a \Irc r8 a, |
			d4 fis8 e16 fis d8 d \Tam a'4 |
			d8 a r g h h r16 h h c |
			d8 d r d d d e f |
			h, h r d h h h c |
			c c r16 g c h c4 r16 e d e |
			c8 c16 h g8 g \Irc d4 \Tam h' |
			r8 h d c d d r4 |
			d8 e h h16 d c8 c r16 e dis e |
			h8 h r4 \Irc e,8 e16 e r8 e16 a, |
			h4 \Sib r16 h' fis g e4 r |
			\Tam h'8 e h h16 d c4 c8 d16 e |
			d8 d16 d d8 a h h \Irc d,4 |
			r8 d c d h h r4 |
			d8 d r f h, h r g |
			c c r4 e8 fis16 g d8 d |
			\Sem h'8. h16 h4 r8 h16 d d8 g, |
			g a f f16 g e4 r |
			a8 a16 a r8 c g g r4 |
			g8 g16 g g8 f g4 g |
			g8 a b b16 a f8 f \Mir c'4 |
			a8 a \Tam r c16 a d8 d \Irc d, e16 f |
			c8 c r4 g'8 d16 e f8 e |
			c c \Scit g' c8. c16 d8 e e |
			e h \Irc r16 e, e h c8 c16 c h8 a |
			dis dis16 e h8 h \Tam h'4 h8 e |
			e ais, r r fis' cis cis16 e d8 |
			h8 h r4 d8 d16 d d8 cis |
			d d16 d e8 fis e4 r |
			e8 e16 e e8 h cis cis \Sem r e, |
			a8 a a gis a a \Mir r a |
			cis h cis cis16 e e8 a, h cis |
			h h16 \Tam h16 h8 e e h d d16 cis |
			a8 a r4 cis8 cis16 his cis8 cis |
			r d h h16 h d8 d d cis |
			a4 r8 cis his cis gis gis |
			r cis16 cis cis8 d16 e dis8 dis r4 |
			dis8 fis a, a16 h gis4 r8 gis |
			h a h h r h h e |
			e h r h d8. d16 d8 cis |
			cis8 cis r4 fis8 cis e d16 cis |
			d8 d r16 d e fis cis8 cis r4 |
		}

	\bar "|."
	}

}
