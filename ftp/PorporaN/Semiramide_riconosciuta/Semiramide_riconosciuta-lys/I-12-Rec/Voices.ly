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
			\Tam r8 c c g a a r4 |
			a8 a16 b c8 b c c r c |
			es es es d b b r4 |
			\Sem b8 b16 a b8 b r b16 b b8 f16 g |
			es8 es r4 g4 g8 f |
			g g r4 b8 c c g |
			g as b b16 as f8 f r c |
			f e f f r f16 g as8 as16 g |
			as8 as r16 as as g g8 g r g |
			g d16 d f8 es c c r c |
			es es r g f f r4 |
			f8 f16 f b8 a b b r16 b as b |
			g8 g r4 b8 as g f16 es |
			a8. c16 a8 b f f r4 |
			\Tam b8 d a a16 b g4 \Sem r8 d |
			g fis g g r g b a |
			a a r4 a8 a a e16 f |
			d8 d r4 gis8 gis16 a h8 h16 a |
			h8. h16 d8 c a a \Tam c4 |
			c8 e e a,16 a a8 gis a a |
			r c h a dis8. e16 h8 h |
			R1\fermata |
		}

	\bar "|."
	}

}
