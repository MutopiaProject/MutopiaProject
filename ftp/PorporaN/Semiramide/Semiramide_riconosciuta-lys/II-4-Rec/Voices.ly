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
			\Sem r8 d d d g fis g g |
			r g g d f f r16 f as g |
			es4 \Mir r8 g c c r es |
			c8. c16 c8 b g g r4 |
			r8 g b a b b r16 b d c |
			c8 c r4 f8 c16 d es8 d |
			b b \Irc r f f b, b c |
			d4 d d8 d16 es f8 b, |
			c c \Sem r16 a' c f, b8 b r b16 b |
			b8 f16 g as8 as r as b f |
			g g \Mir b8. g16 c8 c r c16 g |
			a8 a \Irc r8 c, a4 \Sem r8 f' |
			a g a4 a8 b16 c c8 f, |
			f a g g16 d e8 e \Irc r16 e d e |
			c8 c \Mir r8 g'16 g c8 c16 h c4 |
			r8 c d e d4 d |
			d8 f d d16 a h4 \Irc r16 e, h c |
			a8 a \Mir e'' d16 e c4 r8 e, |
			e e a gis a8. a16 c8 h |
			c c r16 c h a dis8. e16 h8 h |
			\Irc e, d16 e c8 c r c e e |
			e g c, c16 e d4 \Sem r8 d |
			g fis g8. g16 g8 d f e |
			c c \Mir r g' c h c8. d16 |
			b8 b c g a a \Sem c f,16 f |
			\Mir c'8 d b4 \Sem d8 b \Mir r f' |
			f c r4 r2 |
		}

	\bar "|."
	}

}
