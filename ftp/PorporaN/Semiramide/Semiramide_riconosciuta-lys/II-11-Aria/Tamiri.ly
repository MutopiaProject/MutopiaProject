\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Tamiri}
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c'' {
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\partial 8 r8 |
			R1*8 |
			r4 r8 c d16[ e] f8 f f |
			e16[ d] c4\prall d16[ e] f8 f f f |
			e16[\melisma d] c4.\prall\melismaEnd d8 d16 d d8 b' |
			c, c c a' b,8.[\prall a32 b] c8 b |
			a f' e16[ d] c[ h]  c8 f e16[ d] c[ h] |
			c8 a' g16[ f]e[ d] c4 d\prall |
			c d16[ e f8] \appoggiatura f e4 d16[ e f8] |
			e a g16[ f] e[ d] c8 d4.\prall |
			c4 r r2 |
			R1 |
			c8 c16 c c8 c c a16[ b] c8 d |
			es d4 c8 b16[ c d8] a16[ b c8] |
			b16[ c d8] a16[ b c8] b8 d d d |
			g d d d g d d d |
			g4. f16[ es] d8[ c16 b] c8[ b16 a] |
			b8 es d g b,4 a\prall |
			g r r2 |
			R1*3 |
			r4 r8 g a16[ h] c8 c c |
			d16[ e] f8 f f e16[ d] c4\prall d16[ e] |
			f8 f f f e16[ d c8] d16[ e f8] |
			e16[ d c8] d16[ e f8] e16[ d c8] r4 |
			d8 d16 d d8 b' c, c c a' |
			b,8.[\prall a32 b] c8 b a f' f4~\melisma |
			f16[ e d c] b8\melismaEnd a g4 r |
			b8 b16 b b8 b e b b b |
			e4.\melisma f8 g16[ f e d] c8\melismaEnd b |
			a c c c f c c c |
			f c c c f4.\prall\melisma e16[ d] |
			c8[ b16 a]\melismaEnd \appoggiatura c8 b[ a16 g] f'4.\prall e16[ d] |
			c8[ b16 a] \appoggiatura c8 b[ a16 g] a'8 g16[ f] e[ d] c[ b] |
			a4 g\prall f r4 |
			R1*2 |
			r2 \bar "||" d'4 a8. d16 |
			e4 cis d8 a r4 |
			f'4 c8. f16 g4 e |
			f8.[ e32 d] c8 f \appoggiatura c4 b2 |
			a8 e'4\melisma f8\melismaEnd \appoggiatura c4 b2 |
			a4 r8 f' f h, h f' |
			es16[ d] c8 r g' g cis, cis g' |
			f8.[\prall e32 f] g8[ f] e8.[\prall d32 e] f8 e |
			d8.[\prall c32 d] e8 d c e e e |
			a e e e a8.[ g32 f] e8 f |
			\appoggiatura e4 d2 c8 f e16[ d] c[ h] |
			a4 h c8 f e a |
			c,4 h a r8
		}

	\bar "|."
	}

}
