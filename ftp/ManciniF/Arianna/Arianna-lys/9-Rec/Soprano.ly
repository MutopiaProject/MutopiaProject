\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c'' {
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			r8 b es es r es g es |
			c c r4 c8 c c d16 es |
			f8 f r4 f8 c c c16 d |
			es8 es r16 es es d d8 d r 4 |
			b8 b16 c d8 b g g r4 |
			b4^"a tempo Allegro" b8 b b4 b |
			c c8 c c4 c |
			r8 f, b d g, g r c |
			a f f'4.\melisma g16[ f] e4\melismaEnd |
			f r b, es8 d |
			es b c g as c f d |
			h g c4.\melisma d16[ c] h4\melismaEnd |
			c r8 e f c r a |
			b d b f g es' c g |
			a c f4~ f16[\melisma b, c d] es4~ |
			es16[ a, b c] d[ c b a] g[ es' d es] c4\melismaEnd |
			b r b c8 d |
			es d c b a c f4~ |
			f8[\melisma es16 d] c4\melismaEnd b8 f b d |
			g, g' c,4 b r |
			R1 |
		}

	\bar "|."
	}
}
