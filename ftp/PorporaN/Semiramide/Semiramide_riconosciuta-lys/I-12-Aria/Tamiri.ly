\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Tamiri}
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\partial 8 r8 |
			R1*6 |
			r4 r8 e16. f32 g8 c, c c |
			d16[ h] c8 \times 2/3 {g16[\melisma a h]} \times 2/3 {c16[ d e]\melismaEnd} d[ h] c8 e8. f16 |
			\grace{e16[ f]} g8 f16[ e] d8 c h16.[ c32] d16.[ e32] f8 e |
			e d g c, h8.[ a16] g4 |
			r2 d'8.[\prall\melisma cis32 d] e8\melismaEnd cis |
			d a r a' d,8.[\prall\melisma cis32 d] e8\melismaEnd cis |
			d a r4 c8.[\melisma h32 c] d8\melismaEnd h |
			c8 g r g' c,8.[\prall\melisma h32 c] d8\melismaEnd h |
			c8.[\prall h32 c] d8 g \appoggiatura f4 e2 |
			d4 r g,8 g4\melisma a16[ b]\melismaEnd |
			a8 f' f a, h g' g h,\prall |
			c f4\prall e16[ d] \appoggiatura f8 e[\melisma d16 e] \appoggiatura g f8\melismaEnd e16[ d] |
			c4 d8.\prall c16 c4 r8 fis |
			\appoggiatura fis g4 g, r8 f' e d |
			e2 d4 r8 fis |
			\appoggiatura fis g4 g, r8 f' e d |
			e d4 g8 \appoggiatura f8 e2 |
			d4 r g,8 g4\melisma a16[ b]\melismaEnd |
			a8 f' f32[ e d16] c32[ h a16] h8 g' g32[ f e16] d32[ c h16] |
			c8\melisma a'4 g16[ fis] g8\melismaEnd f4 e16[ d] |
			\appoggiatura f e8[ d16 e] \appoggiatura e f8[ e16 d] c8.[ d16] d8.[\prall c16] |
			c'8.[\melisma h32 a] g16[ e]\melismaEnd d[ c] g4 d'8. c16 |
			c4 r r2 |
			R1*3 \bar "||" |
			\time 3/8
			e16.[\prall d32 e8] f |
			\appoggiatura e d4 e8 |
			c16.[ d32 e8] a, |
			gis a f' |
			gis, a r |
			e' e8.[ f32 g] |
			f8[ cis] d |
			a e'8.[ f32 g] |
			f[ e d16] d8 r |
			d d8.[\prall e32 f] |
			e8[ h] c |
			g d'8.[ e32 f] |
			e[ d c16] c8 r |
			e32[\melisma f g16] c,8\melismaEnd b |
			a[ cis] d~ |
			d16 e d8 c |
			h[\melisma dis e~] |
			e16.[ f32 e8 d] |
			c[ e]\melismaEnd f |
			r d g |
			\appoggiatura f e4 f8 |
			\appoggiatura e d4 e8 |
			\appoggiatura d8 c4 e8~ |
			e\melisma d16[ c] h[ a] |
			a'[ f]\melismaEnd \appoggiatura e8 dis8. e16 |
			\appoggiatura a,8 gis4 r8 |
		}

	\bar "|."
	}

}
