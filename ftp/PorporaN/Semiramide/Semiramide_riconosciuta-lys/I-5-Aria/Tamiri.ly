\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Tamiri}
	\set Staff.midiInstrument="oboe"
	\key b \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			R1*11 |
			r2 b |
			c4.\melisma d16[ es]\melismaEnd d16[\melisma c] b4.\melismaEnd |
			es4.\melisma f16[ g]\melismaEnd f16[\melisma es] d4\melismaEnd c16[ d] |
			es8[ f] g a b4 b, |
			g'16[ f es8] d8 e \appoggiatura e4 f2 |
			f16[ es d8] c d \appoggiatura d4 es2 |
			\grace {es16[ f]} g4 f8 es d\melisma es4 f8~ |
			f[ es16 d] c8[ b] \appoggiatura b a4.\prall g8\melismaEnd |
			f4 r\fermata des'8 des4\melisma c8\melismaEnd |
			b16[ a] b4. f'16[\melisma es] des4\melismaEnd c8 |
			b16[ a] b4. e8 e4 f16[ e] |
			f8 c4 es8 d d4\melisma es16[ d]\melismaEnd |
			es2~ es16[ f g8] f es |
			d4\prall\melisma e\prall\melismaEnd f8 f f f |
			a16[ g f8] f f a[\melisma g16 f] e16[ d c b] |
			a[ b8.]\prall\melismaEnd c8 f a,4 g\prall |
			f r r2 |
			R1*4 |
			r2 f2 |
			g4.\melisma a16[ b]\melismaEnd a16[ g f8] r4 |
			r2 b2 |
			c4.\prall\melisma d16[ es]\melismaEnd d[ c b8] g'4 |
			f b, es4.\prall\melisma f16[ g]\melismaEnd |
			f4 b, c4.\prall\melisma d16[ es]\melismaEnd |
			d4 r g16[\melisma f es8] d\melismaEnd e |
			\appoggiatura e4 f2 g16[ f es8] d e |
			\appoggiatura e f4.\melisma g16[ d] \appoggiatura d8 es4. f16[ c] |
			d2\prall\melismaEnd c8 e4 f8 |
			des2 c4 r\fermata |
			g'16[\melisma f] es4\melismaEnd d8 c16[ h] c4. |
			g'16[\melisma f] es4\melismaEnd d8 c16[ h] c4. |
			f4 es d16[ c] b8 r4 |
			f' es d16[ c] b8 r4 |
			es8 g4\melisma f16[ es]\melismaEnd d8\melisma f4\melismaEnd es16[ d] |
			c8 es4 d16[ c] b4 r8 d |
			es16[\melisma f g f] g[ es d cis] d[ es f es] f[ d c h] |
			c[ d es d] es[ c b a] b8 c4 d8~ |
			d es4 f8~ f g4 a8 |
			b\melismaEnd b,4 es8 d4 c |
			b e~ e8\melisma f16[ g] f8\melismaEnd e |
			f c e4.\melisma f16[ g] f8\melismaEnd e |
			f c d4\prall c r\fermata |
			es8 g4\melisma f16[ es]\melismaEnd d8\melisma f4\melismaEnd es16[ d] |
			c8\melisma es4\melismaEnd d16[ c] b4 r8 d |
			es16[\melisma f g f] g[ es d cis] d[ es f es] f[ d c h] |
			c[ d es d] es[ c b a] b8 c4 d8~ |
			d es4 f g a8 |
			b8[ a16 g]\melismaEnd f8 es d4 c\prall |
			d8 g f b d,4 c\prall |
			b r r2 |
			R1*5 \bar "||" |
			g2 a4.\prall\melisma b16[ c]\melismaEnd |
			b[ a] g4. c\prall\melisma d16[ es]\melismaEnd |
			d[ c] b4 a16[ b] c8[ d] e[ fis] |
			g4 g, es' b' |
			a a, g g' |
			f f, es es' |
			d8\melisma fis4\prall g8 c, fis4\prall g8 |
			b,16[ a g8]\melismaEnd es'4.\melisma g16[ f]\melismaEnd es8 d |
			\appoggiatura d4 cis\melisma d16[ e]\melismaEnd d8 d4.\trill cis16[ d] |
			a8 e'4\prall\melisma d16[ e]\melismaEnd a,8 f'4\prall e16[ f] |
			g,2\prall r4 e'~ |
			e8.[ f32 g] f8[ e] f4 e8.\prall[ d16] |
			d4 d d2~ |
			d~ d4. a8 |
			e'4.\prall d8 d4 r |
		}

	\bar "|."
	}

}
