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
			\Mir r8 g c h c8. c16 c8 g16 a |
			b8 b b c a4 \Tam c8 c16 b |
			c4 c c8 d es es16 d |
			d4 r d8 d16 es c8 c |
			c d a a16 b g8 g \Mir r16 g b a |
			b8 b r d cis cis cis d |
			a4 e'8 h16 c d8 d d d16 c |
			a4 \Tam r8 a c4 \Mir r16 e dis e |
			h8 h \Tam r16 e e h cis8 cis r fis |
			cis8. cis16 cis8 d e4 e8 fis16 cis |
			d8 d r4 r8 d d a |
			a h c c16 h g8 g \Mir d' d16 c |
			d8 d g d16 e c8 c \Tam g g |
			c c16 h c8 c c c c g16 b |
			a4 r d e8 f |
			c c \Mir r16 c b c a4 r8 a |
			d4 r8 c es es16 f c8 c16 es |
			d8 d r4 \Tam d8 d16 c d4 |
			d8 f c c16 d b4 r |
			\Mir d r8 d16 es es8 a,16 a c8 b |
			g4 \Tam g'8 cis,16 d a8 a r e' |
			e h16 h d8 c a a \Mir e'4 |
			c8 c r c16 e a,8 a16 gis a8. a16 |
			c8 c c h h4 r8 h |
			d c d d r8 d16 f f8 h,16 d |
			cis8 cis16 \Tam e cis8 cis r4 e8 cis16 d |
			d8 d fis dis16 e e8 e r16 e dis e |
			h8 h r4 h8 h16 h h8 a |
			h h r h e8. e16 e8 d |
			c8. c16 d8 e e ais, ais h |
			cis cis16 h cis8 cis r cis16 fis cis8 cis16 e |
			d8 d r16 d d e c8 c d a16 c |
			h8 h r16 h h c d8 c d d |
			d f h, h16 c c8 c r c16 d |
			e8 e16 d e4 r8 e fis g |
			d d \Mir r d h h r e |
			e h r16 h h cis d8 d16 d e8 h |
			cis4 r8 e e8. a,16 a8 cis |
			h h r4 dis8 dis16 dis e8 fis |
			fis a, r cis h h16 h h8 fis |
			gis4 r cis8 cis16 h cis8 cis16 d |
			h8. h16 cis8 gis a a fis' d16 cis |
			\appoggiatura cis8 his4 r fis'8 his,16 his his8 cis |
			gis gis r4 r2 |
		}

	\bar "|."
	}

}
