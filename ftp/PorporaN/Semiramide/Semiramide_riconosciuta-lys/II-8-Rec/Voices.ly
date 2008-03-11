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
			\Irc r8 f c8. c16 c8 b c c |
			r c16 d es8 es16 d d8 d r d16 d |
			d8 a r a16 c b8 b r g' |
			cis, cis16 e a,8 a \Tam r d'16 cis d4 |
			r d8 d h h r e, |
			gis fis gis gis gis gis16 a h8 a |
			h h r e e h h c |
			d d16 d e8 h c c r4 |
			\Irc c,8 c16 c d8 e e a, e' dis16 e |
			h8 h r4 \Tam h'8 g r h |
			a a r a d d16 d d8 a |
			h4 \Mir r16 d c d h4 r16 g h a |
			h8 h16 h cis8 d cis cis e cis16 d |
			a8 a \Tam r a16 a d8 d16 cis d4 |
			d8 d d a16 h g4 r |
			\Irc  d8 d16 c d8 d d g d d16 e |
			c8 c r4 c8 c16 d e8 e16 g |
			b,4 b8 b16 c a4 r16 f' e f |
			c8 c r c16 b c8 c r es16 d |
			b8 b r g d' d r16 d f es |
			c8 c r a d d16 d d8 cis |
			d d r es c c r16 c es d |
			b8 b r f' d d d es |
			es es r es es b c des |
			c c r16 es d es b8 b \Mir r b' |
			g g \Tam r b b es a, a |
			a b c c16 d b8 b r4 |
			c8 c16 h c8 c c g16 a b8 a |
			f f r4 \Irc a,8 h cis cis16 d |
			d8 d r4 f8 cis16 d a8 a |
			R1 |
		}

	\bar "|."
	}

}
