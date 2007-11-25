\new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 160 
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c'' {
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			R2.*8 |
			r4 f e |
			f e8[ d] c4 |
			r f e |
			f e8[ d] c4 |
			f f, a |
			g a8[ h] c4 |
			d d8[ e] f4 |
			e8[\melisma d e c d e] |
			f[ e f d e f] |
			g[ g, a h] c4\melismaEnd |
			d g, g' |
			c, r r |
			R2.*2 |
			r4 c c |
			c c8 c c c |
			c4 c8 c f e |
			f4 e8[ d] c4 |
			r4 f f |
			f f8 f f f |
			f4 f8 f f es |
			d c b4 r |
			b d f |
			f,4. g8 a4 |
			b b b |
			a8[\melisma g a f g a] |
			b[ a b g a b] |
			c4 d8[ e] f4\melismaEnd |
			b, g c |
			f,2.~ |
			f8[\melisma f' e d c b] |
			a[ d c b a g] |
			f[ g a b c d] |
			c,2\melismaEnd r4 |
			c'8[ b] a[ g] f[ e] |
			d'[\melisma c b a g f] |
			e'4.\melismaEnd e8 f4 |
			a, g e' |
			f r r |
			R2.*2 |
			r4 r \bar "||" a,4 |
			d8[ e] f[ g] a[ a,] |
			d[\melisma e f g a a,] |
			d4\melismaEnd d, r |
			r r e' |
			f8[ e] d[ e] f4 |
			e a, r |
			f'8[ e] d[ c] h[ a] |
			g4. g8 g4 |
			e'8[ d] c[ h] a[ g] |
			f2 r4 |
			d'8[ c] h[ a] g[ f] |
			e4. e8 a4 |
			f' c h8[ a] |
			a[\melisma h c d e f] |
			gis,[ a h c d e] |
			f,[ g a h c d] |
			e,4\melismaEnd r e' |
			a,8[ h]c[ d] e[ e,] |
			a[\melisma h c d e e,] |
			a4\melismaEnd a r |
			r r h |
			c8[ h] a[h] c4 |
			h e, r |
			e'8[ d] cis[ h] a4 |
			d4. d,8 d4 |
			d'8[ c] h[ a] g4 |
			c8[\melisma d e f g g,] |
			a[ h c d e e,] |
			f[ g a h c g] |
			a\melismaEnd f' e4\melisma d8.\melismaEnd c16 |
			c4\melisma r8 g[ c g] |
			c4 r8 c[ e c] |
			e4 r8 e[ g e] |
			g[ e c g e c'] |
			a\melismaEnd c g4. h8 |
			c4 r r |
		}

	\bar "|."
	}

}
