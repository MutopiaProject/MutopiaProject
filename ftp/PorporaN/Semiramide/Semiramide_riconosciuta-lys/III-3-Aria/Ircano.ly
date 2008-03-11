\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Ircano}
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef "treble_8"
	\relative c' { 	
		\context Voice = "melodyTen" {
			\dynamicUp
			\autoBeamOff
			\partial 8 r8 |
			R4.*31 |
			r8 r a |
			a[ c] f |
			e f4\prall |
			g8 c, f |
			e f4\prall |
			g16[\melisma f e d c b] |
			a8[ g f] |
			c'\melismaEnd c, r |
			f'4. |
			d8[ c] f |
			d c f |
			d16[ c] d8 r |
			g4. |
			e8[ d] g |
			e d g |
			e16[ d] e8 r |
			\grace {f16[ g]} a4. |
			f8[ h,] c |
			f \appoggiatura e8 d4 |
			e16[ d] c8 r |
			\grace {f16[ g]} a4. |
			f8[ h,] c |
			f \appoggiatura e8 d4 |
			e8[ f] g |
			a,16[\melisma h c a h c] |
			h[ c d h c d] |
			c[ d e c d e] |
			d[ e f d e f] |
			e8[ d]\melismaEnd c |
			d[ e] f |
			e[ d] c |
			d[ e] f |
			e[ f] g |
			a[ h,] c |
			g d'4\prall |
			e8[ f] g a[ h] c |
			g, d'4 |
			c r8 |
			R4.*9 |
			r8 r c |
			c[ e] g |
			c,[ e] g |
			c,\melisma b4\prall\melismaEnd |
			a8 a'4 |
			g16[\melisma f e d c b] |
			a[ g]\melismaEnd f8 r |
			f'4. |
			d8[c] f |
			d c f |
			d16[ c] d8 r |
			g4. |
			e8[ d] g |
			e d g |
			e16[ d] e8 r |
			\grace {f16[ g]} a4. |
			g8[ h,] c |
			f[ a,] h |
			e[ gis,] a |
			d4.\prall |
			c8[ e] f |
			b, \appoggiatura a g4 |
			a8 f'4 |
			b,8[\melisma a g] |
			a16[ b c a b c] |
			b[ c d b c d] |
			c[ d es c d es] |
			d8\melismaEnd e4 |
			f4. |
			f |
			f |
			f |
			f16[\melisma a g f e d] |
			c[ f e d c b] |
			a8[ b c] |
			d[ e]\melismaEnd f |
			b, g4 |
			a8[ b] c |
			d[ e] f |
			b,16[ a g8] c |
			f,4 r8 |
			R4.*13 |
			r8 r \bar "||" f |
			f[ a] d |
			cis d4\prall |
			e8 a, f' |
			cis d4\prall |
			e8 a, r |
			d f a |
			b,16.[ a32] b8 r |
			c g' b, |
			a16.[ g32] a8 r |
			f'4. |
			g,8 r r |
			e'4.\prall |
			f,8 r r |
			a h c |
			h16[\melisma cis d h cis d] |
			cis[ d e cis d e] |
			d[ e f d e f] |
			e[ f g e f g] |
			f8[ e]\melismaEnd d |
			e[ f] g |
			f16[ e] d8 r |
			f4. |
			e8[ gis,] a |
			f' r r |
			e r r |
			d h4 |
			c8 r f |
			d[ h] e |
			c[ e] a |
			d,16[ c h8] e8 |
			a, r r |
		}

	\bar "|."
	}

}
