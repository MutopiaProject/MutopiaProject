\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Scitalce}
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			r8 g c h c c r4 |
			r c8 c16 c c8 d b b |
			b c c g16 b a8 a r4 |
			r8 f' h,8. c16 c8 g r4 |
			R1 |
			r16 g g g c8 h c c r es |
			d d r4 r8 d16 es c8 c16 d |
			b8 b r4 r8 g8 b a |
			b8 b16 b d8 c d d r4 |
			d8 d16 es f8 as, g g r4 |
			es'8 b16 c des8 c c c r4 |
			f8 c16 c des8 es des des r16 f e f |
			f8 c r4 r r8 f |
			h,8. h16 c8 d es es r16 c b c |
			as4 r r8 as' f des |
			h h16 c c8 g r2 |
		}

	\bar "|."
	}

}
