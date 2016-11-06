\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Scitalce}
	\set Staff.midiInstrument="oboe"
	\key b \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\partial 8 g8
			d'4 d8 d es d r d |
			es d r d d8.[\prall c32 b] a8 g |
			fis4 g r2 |
			R1 |
			r4 b c8[ b] f' b, |
			c b r c d[ c] g' c, |
			d c r es es[ a,] a es' |
			d es f g a, b4 g'8 |
			a, b g'4 f8[ es16 d] es8 d16[ c] |
			d4 g f8[ es16 d] c8 f |
			b,4 r8 f' \appoggiatura f es2 |
			d4 r8 f \appoggiatura f es2 |
			d4 r8 d, es[ c] f d |
			g es a f b16[ c d es] f8 g |
			f[ es16 d] c8 f b,4 r |
			R1 |
			r2 r4 r8 g |
			d'4 d8 d es d r d |
			es d r d d8.[ c32 b] a8 g |
			g'8.[ f32 es] d8 cis d16[ cis] d8 r g16[ cis,] |
			d[ cis] d8 r\fermata f f[ h,] h f' |
			f[ h,] h f' \grace {f16[ g]} as4 g8 f |
			es16[ d c8] r es8 es[ a,] a es' |
			es[ a,] a es' \grace{es16[ f]} g4 f8 es |
			d16[ c b8] r d \appoggiatura d4 c2 |
			b4 r8 d \appoggiatura d4 c2 |
			b4 d es8[ c] fis d |
			g g, r d' es[ c] fis[ d] |
			g8.[\prall f32 es] d8 es d[ c16 b] c8 d |
			es4 g d8[ c16 b] a8 d |
			g,4 r8 d es[ c] fis d |
			g d a' d, b'16[ a b c] d8 g |
			d[ c16 b] a8 d g,4 r |
			R1*3 |
			r2 r4 \bar "||" r8 f' |
			f[ b,] b d d c r es |
			es[ f,] f es' es d r f |
			f8.[ es32 d] c8 b a[ b] c f |
			a,[ b] c d c8.[ b32 a] g8 f |
			f'8.[\prall e32 d] c8 h c4 r8 f |
			e16[ d c8] r f e16[ d c8] r\fermata c |
			\appoggiatura c4 b2 a4 r8 c |
			\appoggiatura c4 b2 a4 r8 a |
			b[ g] cis a d d d d |
			d8.[\prall cis32 d] d8 d d8.[ c32 b] a8 b |
			a[ g16 f] g8 a b4 d |
			a8[ g16 f] g8 a d,4 r |
			R1*4 |
			r4 r8 g 
		}

	\bar "|."
	}

}
