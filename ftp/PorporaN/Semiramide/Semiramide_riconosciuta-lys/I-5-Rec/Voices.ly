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
			\Tam a8 a16 h cis8 h cis4 cis |
			cis8 e g, g16 a fis8 fis r d' |
			h h r d a a \Irc r a,16 a |
			d8 d16 cis d8 d r4 d8 e |
			c c r c16 d h8 h r4 |
			d h16 h c8 d d g, r |
			h c d d16 c d8 d f d16 e |
			c8 c r4 e8 dis e e |
			r e c c r4 e8 dis16 e |
			h8 h \Mir r h' g g r4 |
			a8 a16 d d8 a a h c d16 a |
			h8 h \Irc r h, d8. g16 g8 d |
			d d16 c d8 d16 d d8 e f e |
			e e r f d16 d d8 r e16 h |
			c8 c \Tam r8 e' a,8. a16 a8 gis |
			h4 r16 g c h c8 c r c |
			c g a b a4 a |
			c8 f c c16 es d8 d r4 |
			%duplicate bars in score
			%{h r16 g c h c8 c r c |
			c g a b a4 a |
			c8 f c c16 es d8 d r4 |%}
			e8 e16 e r8 f c c \Irc r c, |
			a4 r8 a c b c c |
			c f c c16 d b4 r |
			d8 d r4 f8 d16 f f8 b, |
			r4 a8 a16 a d8 cis d d |
			d a16 b c8 c r16 c c d es8 d |
			b b \Tam r16 d' c d b8. b16 a8 g |
			cis cis16 d a8 a r2\fermata |
		}

	\bar "|."
	}

}
