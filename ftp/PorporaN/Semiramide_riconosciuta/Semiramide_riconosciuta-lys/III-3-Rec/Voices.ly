\new Staff  {
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' {
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\Mir r4 c8 b c c |
			c8 f f c c d es es16 d |
			b8 b \Sib r f b a b b |
			r4 b8 b b f16 es f8 f16 es |
			as8 as as g es4 \Mir es'8 b16 as |
			b8 b r g b8. b16 b8 c |
			des4 des des8 es es b16 des |
			c8 c \Irc r16 as, c b c8 c16 es d8 es |
			b4 \Mir r8 b' es es r16 f f c |
			a8 a r c es es es d |
			d d r4 d8 d d a16 b |
			g8 g r4 \Irc d8 d16 d d8 g |
			cis, cis \Mir r16 e' cis d a8 a r4 \bar "||" |
			\Mir r4 d8 cis d d r d16 cis |
			a8 a \Irc r16 a, cis h cis8 cis16 cis cis8 e |
			dis4 r8 fis dis8. dis16 dis8 e |
			h h \Mir r8 h' gis8. e'16 cis4 |
			fis8 cis16 d e8 d h h \Irc r16 fis eis fis |
			cis8 cis \Mir r cis' a a r a |
			cis cis cis h cis4 cis |
			cis8 d e e16 fis d8 d r4 |
			\Irc r4 a,8 d16 cis d8 d \Mir d'4 |
			d8 a c h g4 \Irc r8 g, |
			h a h h h c d d16 e |
			c8 c \Mir c' c16 e e8 h d d16 c |
			a4 c8 c16 e dis8 dis16 e h8 h |
			\Irc r4 e,8 e16 a, h4 r |
			r2 r4 r8 g' |
			g d d e c c r4 |
			c8 d e e16 d e8 e r e16 g |
			g8 c, r c16 e d8. d16 c8 d |
			h h r4 r16 h h c d8 c |
			d8 d r d f8. f16 f8 e |
			e e r e e8. h16 h8 c |
			d4 d r8 d f e |
			c c r e e a, c h |
			c c r16 c c d e8 e e g |
			b, b r c a a r4 |
			c8 f, es' es16 d d4 r |
			e8 e r e16 f f8 c r4 |
			R1 |
		}

	\bar "|."
	}

}
