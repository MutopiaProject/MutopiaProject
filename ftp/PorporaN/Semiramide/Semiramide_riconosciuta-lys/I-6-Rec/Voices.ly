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
			\Irc r4 r8 g g g c h |
			c c r4 d8 d16 cis d8 d |
			d a16 b c8 b g g r4 |
			d'8 c16 d b8 b16 d d8 g, g d' |
			cis4 r8 e cis d a a |
			r4 d8 b f' d16 f f8 b, |
			r b b c d c d d |
			f e16 f c8 c16 \Mir c'16 c8 g a b |
			a8. a16 h8 c h4 h |
			h8 c d d16 e c8 c r g |
			c h c c c c c d16 e |
			e8 h r4 h8 c d d16 c |
			d8 d f d16 c a8 a r4 |
			\Irc c,8 e a, a16 h c8 c16 c c8 h |
			h4 h fis'8 a,16 a c8 h |
			g4 r h8 h16 e e8 ais, |
			ais h cis cis16 d h8 h r a |
			d cis d d r d16 a c8 c16 h |
			g8 g r h e dis e e |
			r8 e16 e e8 h16 cis d8. d16 d8 cis |
			a a r8 fis' fis cis e e |
			e e16 e fis8 cis d d \Mir r fis |
			h ais h h16 cis c4 cis |
			cis8 d e e16 d h8 h r gis |
			cis his cis cis r cis16 cis cis8 gis16 a |
			h8 h16 h h8 a fis fis \Irc r cis |
			cis fis e e r e16 e e8  h16 cis |
			d4 e8 e16 h cis8 cis r4 |
			\Mir a'8 a16 a cis8 h cis4 cis |
			cis8 e g, g16 a fis8 fis r a |
			d d r d16 e c8 c r e |
			d d16 d r8 d h h r4 |
			h8 d g, g16 a h8 h r8 h |
			h h cis d cis4 r16 e cis d |
			a8 a \Irc r cis, e8. e16 e8 a, |
			d4 d \Mir r8 fis' d8. cis16 |
			a8 a r4 \Irc e8 e cis h16 cis 
			a4 r d8 d16 cis d8 d |
			d8. a16 a8 h g g r h |
			d c d d r d16 e f8 f16 e |
			e8 e r4 e8 e e h16 c |
			a4 r d8 d16 c d8 d16 d |
			f8 f f e c c r4 |
			e8 g c, c16 h c8 c r4 |
			c8 d e e16 d e4 e8 fis16 g |
			d8 d \Mir r8 a' d8. d16 d8 cis |
			d d r4 d8 a c c16 h |
			g8 g r4 h8 h16 ais h8 h |
			r4 dis8 fis h, h16 c a8 a |
			a a16 a a8 h c4 c8 c16 h |
			g8 g r4 \Irc h,8 h d d16 h |
			c8 c r e dis e h h |
			R1 |
		}

	\bar "|."
	}

}
