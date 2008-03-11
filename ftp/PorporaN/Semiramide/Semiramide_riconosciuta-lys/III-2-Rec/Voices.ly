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
			\partial 2. \Sib r8 g e8. c'16 c8 g |
			\Irc r c,16 c c8 g16 b a4 \Sib r8 c' |
			a4 r8 f a a16 g a a a b |
			c8 c c c16 f, b8 b r4 |
			b8 b16 b c8 d g, g r b |
			a8. a16 a8 h f f \Irc d d16 c |
			d8 d r d d8. d16 es8 f |
			b, b16 b b8 a c c r4 |
			a8 a d d16 cis d8 d r es |
			c8. c16 d8 a b b r4 |
			\Sib b'8 d g, g16 a b8 b r16 b c d |
			a8 a \Irc f8. f16 d8 d r f |
			f16 c c d es8 es16 d d4 f8 e16 f |
			c4
		}

	\bar "|."
	}

}
