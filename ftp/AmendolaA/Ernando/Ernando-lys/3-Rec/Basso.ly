\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef bass
	\relative c' { 	
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			a8 e16 e cis8 cis b'4. a16[ g] |
			f4 f r f8 d |
			a'4 a8 h gis2 |
			r8 gis gis a a,4 a |
			c'8 c16 c a8 c f, f r f |
			a a g f h4 h |
			r8 h a g c c, r4 |
			c'4. c8 fis,4 fis8 g |
			g, g r g' es fis16 g g8 d |
			r2 r8 f16 g e8 f16 g |
			c,4 c r8 c c d |
			e e e e16 f g4 g |
			g8 g16 a b8 a f f r c' |
			a a b c f, f r16 c es d |
			d4 d b8 b16 c d8 d16 es | %b instead of h, es instead of e
			f4 f r16 c' a b c[\melisma a f g] | %b instead of h
			a8\melismaEnd f f es d16[\melisma f d es] f[ d b c] | %b instead of h
			d[ b c d] es[ f g a] b[ c a c] d8\melismaEnd b | %b instead of h, es instead of e
			g g g es b' g es' b16 b | %b instead of h, es instead of e
			g8 g r4 a4. b8 | %b instead of h
			b, b r4 f'4. f8 | %b instead of h
			f4\melisma e8[ g]\melismaEnd a4. a8 |
			a[ g] r c c[ b] b b |
			b[\melisma a d d,] es[ g c c,] |
			d[ a' b b,] c[ g' a a,] |
			b[ fis' g b,] c16[ g' fis g] d8[ d,]\melismaEnd |
			g b' g d e16[\melisma fis g a] d,4\melismaEnd |
			g, r r2 |
			r4
		}

	\bar "|."
	}

}
