\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c'' {
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			R1*3 |
			r2 b4. a8 |
			b4. c8 d es f[ es] |
			d4 c b4. a8 |
			b4. a8 b[ c] d[ es] |
			c4 r b4. a8 |
			b4. c8 d es f[ es] |
			d4 c b4. a8 |
			b4. a8 b8[ c] d[ es] |
			c4 r r8 f f a, |
			b f' f a, b4 r8 g' |
			f[ d] es[ c] d[ es] f g |
			f[ d] es[ c] d[\melisma f16 e] f8\melismaEnd b, |
			a4\melisma g8.\melismaEnd f16 f4 r |
			b4. d8 g,8[ b16 a] b4 |
			c4. es8 a,8[ c16 b] c4 |
			d4. f8 b,8[ d16 c] d4 |
			r8 d c b c d c b |
			c d c b a4 r8 f' |
			a,4\melisma r8 b c4 r8 d |
			es4 r8 d c[ b a g] |
			f[ es']\melismaEnd d c d4\melisma c8.\melismaEnd b16 |
			b4 r8 f' a,16[\melisma g a8] r8 b |
			c16[ b c8] r d es16[ d es8] r d |
			c16[ d b8] a16[ b g8] f[ es']\melismaEnd d c |
			d4\melisma c8.\melismaEnd b16 b4 r |
			R1*2 |
			r2 \bar "||" d4. c8 |
			b4. a8 g4. a8 |
			fis4 g g'4. f8 |
			es4. d8 c4. d8 |
			g,[ h] c[ f] es4\melisma d8.\melismaEnd c16 |
			c4 r es8 d es d |
			r2 es8 d es d |
			r2 es4. f8 |
			d4. es8 c4. d8 |
			b4. c8 a4. b8 |
			g[ a] b[ d]c4. d8 |
			d2 r |
			g4. f8 es4. d8 |
			c4. c8 c[ es] d[ c] |
			b4\melisma a8.\melismaEnd g16 g4 r |
			r2 es'4. d8 |
			cis8[ a] d[ g] f4\melisma e8.\melismaEnd d16 |
			d4 r r2 |
		}

	\bar "|."
	}

}
