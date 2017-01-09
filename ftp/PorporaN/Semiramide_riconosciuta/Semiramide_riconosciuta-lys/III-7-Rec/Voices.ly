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
			\Scit r8 d a8. a16 a8 g a a |
			a b c d16 a b4 r |
			d8 g, r g16 fis a8 a r4 |
			d a8 b g g r4 |
			r8 f a a a h c c16 d |
			b8 b r4 r8^\markup {legge} b8 b a |
			b b r16 f f f b8 a b b |
			r b16 b b8 f16 es f8 f r4 |
			c'8 g r c16 h c8 c c c |
			c g16 a b8 b16 b c8 c c g |
			a4 r16 f a g a8 a16 a h8 c |
			h4 h h8 h16 c d8 g, |
			c c r4 d8. d16 d8 a16 g |
			a8 a a b16 c b8 b b a16 g |
			cis8 cis16 d a8 a \Tam d d r16 d d a |
			h8 h \Scit r e h4 h8 h16 a |
			h8 h r d h h h c |
			a4 r a8 a16 gis a8 a |
			c c16 e e8 a,16 c h4 r16 fis a g |
			e8 e r h' g g16 g r8 h16 c |
			c8 c r e c h g g |
			\Tam h d g, g16 h a8 a r4 |
			\Scit d8 a d d16 e c8 c16 c c8 d |
			h4 r8 g h a h8. d16 |
			cis4 cis r16 cis d e a,8. a16 |
			a8 h g g16 a fis4 fis |
			\Tam d'8 a d e16 fis h,8. d16 cis8 d |
			a a r4 a8 g16 a fis8 fis |
			r fis h ais h8. c16 a8 a |
			a8 h c c16 h g8 g r4 |
			\Scit h8 g16 g fis8 g e e e'8 ais,16 h |
			fis8 fis \Tam d'4 r8 fis d cis16 d |
			h8 h r4 h8 fis
		}

	\bar "|."
	}

}
