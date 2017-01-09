\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Mirteo}
	\set Staff.midiInstrument="oboe"
	\key b \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			R2.*19 |
			f4 f4.\prall\melisma es16[ f]\melismaEnd |
			g4\melisma a,\melismaEnd b |
			c8.[\melisma d16] es4\melismaEnd d |
			c\melisma b8.[ a16]\melismaEnd b4 |
			c8.[\melisma d16] es4\melismaEnd d |
			c\melisma b8.[ a16]\melismaEnd b4 |
			es d g |
			d c r |
			f f4.\prall es16[ d] |
			c4\melisma d\melismaEnd es |
			d\melisma c\melismaEnd b |
			a8.[ g16] f4 r |
			f' f4.\prall\melisma es16[ d]\melismaEnd |
			c4\melisma d\melismaEnd es |
			d\melisma c\melismaEnd b |
			a8.[ g16] f4 r |
			f'16[\melisma g as8] g4\melismaEnd h, |
			c\prall\melisma h\melismaEnd c |
			f16[\melisma g as8] g4\melismaEnd h, |
			c\prall\melisma h\melismaEnd c |
			d16[\melisma es f8] es4\melismaEnd d |
			es16[\melisma f g8] h,4\melismaEnd c |
			d16[\melisma es f8] es4\melismaEnd d |
			es f g |
			as\melisma h,\melismaEnd c |
			f \appoggiatura es d2 |
			es4 f g |
			as\melisma h,\melismaEnd c |
			f16[ es d8] \appoggiatura es4 d2 |
			c4 r r |
			R2.*8 |
			f4 f4.\prall\melisma es16[ f]\melismaEnd |
			g4\melisma a,\melismaEnd b |
			f' f4.\melisma es16[ f]\melismaEnd |
			g4\melisma a,\melismaEnd b |
			c8.[\melisma d16] es4\melismaEnd d |
			c4\melisma b8.[ a16]\melismaEnd b4 |
			c8.[\melisma d16] es4\melismaEnd d |
			c\melisma e\melismaEnd f |
			des c b |
			c\melisma e\melismaEnd f |
			des c b |
			a8.[ g16] f4 r |
			f' f4.\prall g16[ as] |
			g4\melisma h,\melismaEnd c |
			R2. |
			es4 es4.\melisma f16[ g]\melismaEnd |
			f4\melisma a,\melismaEnd b |
			R2. |
			f8.[ f'16] f2\prall |
			g,8.[ f'16] f2\prall |
			a,8.[ f'16] f2\prall |
			b,8.[ f'16] f2\prall |
			c4\melisma d\melismaEnd es |
			d16[ e f8] f2\prall |
			c4 d es |
			d16[ e f8] f2\prall |
			c4\melisma d\melismaEnd es |
			d es f |
			g\melisma a\melismaEnd b |
			b,8.[ c16] c2\prall |
			b4 r r |
			c\melisma des\melismaEnd es |
			des16[ es f8] f2\prall |
			c4 des es |
			des16[ es f8] f2\prall |
			c4\melisma d\melismaEnd es |
			d es f |
			g a2\prall |
			b4\melisma b,\melismaEnd es |
			d16[ c b8] c2\prall |
			b4 r r |
			R2.*7 \bar "||" |
			d4 d4.\prall\melisma c16[ d]\melismaEnd |
			es4\melisma fis,\melismaEnd g |
			a8.[\melisma b16] c4\melismaEnd b |
			a\melisma g8.[ fis16]\melismaEnd g4 |
			d' d4.\prall\melisma c16[ d]\melismaEnd |
			es4\melisma fis,\melismaEnd g |
			a8.[\melisma b16] c4\melismaEnd b |
			a\melisma g8.[ fis16]\melismaEnd g4 |
			a\melisma b\melismaEnd c |
			b16[ c d8] d2\prall |
			a4\melisma b\melismaEnd c |
			b16[ c d8] d2 |
			c4 d es |
			d16[ e f8] f2 |
			c4\melisma d\melismaEnd es |
			d16[ e f8] f2 |
			c4\melisma d\melismaEnd es |
			d\melisma e2 |
			f4\melismaEnd f f |
			f e8[ d] c[ b] |
			a8.[ b16] \appoggiatura a4 g2\prall |
			a4 b c |
			d\melisma e2 |
			f2.~ |
			f4\fermata\melismaEnd e8[ d] c[ b] |
			a4 g2\prall |
			f r4\fermata |
		}

	\bar "|."
	}

}
