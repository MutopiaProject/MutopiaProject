\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.midiInstrument="oboe"
	\key g \minor
	\clef bass
	\relative c' { 	
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			R1*3 |
			r2 g4. a8 |
			b8 a16[ g] es'8 es es[ d] g, g |
			g[ fis] c' c c[ b] r b16 b |
			c8 g f es d b'4 d8 |
			g, es c' es a,4\melisma r16 f[ g a] |
			b8[ d b g] e[ c' c, b'] |
			a[ c f, a] b,[ c16 d] c8[ e] |
			f8[ g16 a] g8[ b] a[ b16 c] b8[ d] |
			c\melismaEnd f,4 a8 b, b' c, c' |
			f,4 r4 f4. g8 |
			a g16[ f] d'8 d d[ c] c c |
			c[ b] b b b[ a] r a16 b |
			g8 b a g f4 r |
			r8 d'4 c8 b16[\melisma c d b] g[ a b g] |
			e8\melismaEnd d' c b a16[\melisma b c a] f[ g a f] |
			d8[ d' c b] g16[ a b g] e[ f g e] |
			a,8[ b' a g] f4\melismaEnd r |
			b4 b b\melisma c,\melismaEnd |
			a' a a\melisma b,\melismaEnd |
			g' g g a, |
			fis' fis g8[\melisma d a' d,] |
			b'8[ d, c' d,] d'[ c16 b] a8[ g] |
			fis4\melismaEnd r4 r8 d'4 c8 |
			b c d d, g[\melisma b] r a |
			g[ c] r b a g4 a8 |
			fis[ e16 d] g8[ b] c,[ es'] d[ cis] |
			d,4\fermata\melismaEnd r d'8 d, c[\melisma c'] |
			b,[ b' a, a'] g,[ g'] c16[ b a g] |
			fis8\melismaEnd g c, d g,4 r |
			R1*3 |
			r2 b'4. c8 |
			d c16[ b] b8 b b[\melisma a16 g] f[ es d c] |
			b8[ b'] c[ d16 es] d8\melismaEnd b c f, |
			b4 r r d8 d, |
			es c c' c, d b b' b, |
			c a a' a, b b'4 g8 |
			cis d g, a d,4 r |
			d4. e8 f e16 d b'8 b |
			b[\melisma a] d[ e] cis[ a] g[ f16 e] |
			f8[ d'] c[ b16 a] b8[ es] r d |
			es,[ c'] r b c,[ a'] r b |
			c[ f,] d'[ c16 b] c8[ f,] b[ a16 g] |
			a8[ f] d'16[ c b c] f,4\melismaEnd r |
			f'8[ d] es[ c] d b4 c8 |
			es,4 f es'8[\melisma d16 c] d8\melismaEnd b |
			es,4 f b, r\override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "Da capo" } |
		}

	\bar "|."
	}

}
