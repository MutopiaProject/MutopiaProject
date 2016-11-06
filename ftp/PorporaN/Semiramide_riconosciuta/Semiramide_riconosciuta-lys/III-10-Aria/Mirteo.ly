\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Mirteo}
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\partial 8 r8 |
			R4.*26 |
			r8 r c |
			f[ e] f |
			d\prall c f |
			b,[\prall a] f' |
			\appoggiatura a,16 g4 f8 |
			R4.*3 |
			f'8 e f |
			d[ c] f |
			b, a f' |
			\appoggiatura a, g4\prall f8 |
			f'32[ g a16] a8 a |
			g[ h,] c |
			f32[ g a16] a8 a |
			g[ h,] c |
			d g, f' |
			e[ h] c |
			d g, f' |
			e[ h] c |
			f[ h,] c |
			g'[ h,] c |
			a' g fis |
			\appoggiatura fis g4. |
			e4. |
			d16 g[ f e d c] |
			d8 \appoggiatura c h4\prall |
			d16 g[ f e d c] |
			f8 \appoggiatura e d4 |
			e8[ f] g |
			a[ h,] c |
			f \appoggiatura e d4\prall |
			e8[ f] g |
			a[ h,] c |
			f16[ d] \appoggiatura e d4 |
			c8 r r |
			R4.*6 |
			r8 r c |
			f[ e] f |
			d c f |
			b,[ a] f' |
			\appoggiatura a, g4 f8 |
			f' e f |
			d[c] f |
			b, a f' |
			\appoggiatura a,16 g4 f8 |
			R4.*2 |
			f'32[ g a16] a8 a |
			g[ h,] c |
			d32[ e f16] f8 f |
			e[ gis,] a |
			b32[ c d16] d8 d |
			c[ e,] f |
			b g c |
			a a'4\prall |
			g8[ h,] c |
			f[ a,] b |
			e[ gis,] a |
			d[ fis,] g |
			c[ e,] f |
			b g c |
			a f'4\prall |
			b,8 \appoggiatura a16 g4 |
			a8 f'4 |
			b,8 \appoggiatura a16 g4\prall |
			f'8[\melisma e16 d c b] |
			a8\melismaEnd f'4\prall |
			b,16[ a g8] c |
			a f'4 |
			b,16[ a g8] c |
			f, r r |
			R4.*16 |
			r8 r \bar "||" a |
			d[ cis] d |
			b a d |
			b[ a] f' |
			cis d8.[ cis32 d] |
			e8 a, a'~\melisma |
			a g16[ f e d]\melismaEnd |
			cis8\melisma d8.[\prall cis32 d] |
			e8\melismaEnd a, r |
			d32[ e f16] f8 f |
			e[ gis,] a |
			d32[ e f16] f8 f |
			e[ gis,] a |
			d8 h e |
			c[ gis] a |
			d[ gis,] a |
			e'[ gis,] a |
			f'[ e] dis |
			\appoggiatura dis e4. |
			f8 e dis |
			\appoggiatura dis e4. |
			gis |
			a8 a, f' |
			d16[ c h8] e |
			c[ e] a |
			d,16[ c h8] e |
			a, r
		}

	\bar "|."
	}

}
