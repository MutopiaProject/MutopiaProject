\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Ircano}
	\set Staff.midiInstrument="oboe"
	\key b \major
	\clef "G_8"
	\relative c' {
		\context Voice = "melodyTen" {
			\dynamicUp
			\autoBeamOff
			\partial 8 f8 |
			f b, b8.[ a32 b] c4 r8 f |
			f b, b8.[ a32 b] c4 r8 f |
			f b, b8.[ a32 b] c4 r8 f |
			f b, b8.[ a32 b] c4 r |
			R1 |
			\time 3/8
			g'8 g g |
			g16[ f e8] f |
			es es es |
			es16[ d cis8] d |
			g32[ f es16] h8 c |
			es32[\melisma d c16] a8[ b]\melismaEnd |
			c32[ d es16] g,8 a |
			\appoggiatura a b4 r8 |
			c16[ g'] f[ es] d[ c] |
			b4 r8 |
			c16[ g'] f[ es] d[ c] |
			b4 r8 |
			R4.*3 |
			d32[ es f16] b,8 b |
			b8.[\prall a32 b] c8 |
			\appoggiatura b c c c |
			c8.[\prall b32 c] d8 |
			\appoggiatura cis d d d |
			d8.[\prall c32 d] es8 |
			e e e |
			f[ e16 d] c[ b] |
			a[ b] g4 |
			a8 f'4\prall |
			\times 2/3 {e16[\melisma g f]} \times 2/3 {e[ d c]} \times 2/3 {b[ a g]} |
			a8 f'4\prall |
			\times 2/3 {e16[ g f]} \times 2/3 {e[ d c]} \times 2/3 {b[ a g]} |
			f'[ e]\melismaEnd d[ c] b[ a] |
			b8[ g] c |
			f16[ e d c] b[ a] |
			b8[ g] c |
			f, r r |
			R4.*8 |
			\time 4/4
			r4 r8 g' g c, c8.[\prall h32 c] |
			d4 r8 g g c, c8.[\prall h32 c] |
			d4 r8 g g c, c8.\prall[ h32 c] |
			d4 r8 g g c, e4 |
			f r8 f f b, d4\prall |
			es8 es32[ f g16] f8 es d d32[ es f16] es8 d |
			c f e16[d] c[ b] a8 d c16[ b] a[ g] |
			f2 r\fermata |
			\time 3/8
			d'32[ es f16] b,8 b |
			b8.[\prall a32 b] c8 |
			\appoggiatura b c c c |
			c8.[ b32 c] d8 |
			\appoggiatura cis d d d |
			d8.[\prall c32 d] es8 |
			g16[ f] es[ d] c[ b] |
			a8[ b] d |
			c16[ d] c4\prall |
			b8 f'4\prall |
			\times 2/3 {a,16[\melisma b a]} \times 2/3 {c[ d c]} \times 2/3 {es[ f es]} |
			c8 f4\prall |
			\times 2/3 {a,16[ b a]} \times 2/3 {c[ d c]} \times 2/3 {es[ f es]} |
			d16[ b f' d g es] |
			d16[ b f' d] g[ es] |
			b'8\melismaEnd b, es |
			d16.[ es32] \appoggiatura d8 c4 |
			f8 es16[ d c b] |
			f8 c'4\prall |
			b r8 |
			R4.*5 |
			r8 \bar "||" r d |
			d[ g] fis |
			g d r16 g |
			es8 c r16 f |
			d8 b r16 es |
			c8[ a] d |
			b16.[ a32] g8 g' |
			fis16.[ e32 d8] c |
			b16.[ a32] g8 r |
			g' es d |
			cis d r |
			f d c |
			h c r |
			es32[ f g16] c,8 c |
			c8.[\prall h32 c] d8 |
			d d d |
			d8.[ c32 d es8] |
			es8 es es |
			es8.[\prall d32 es] f8 |
			as16[\melisma g f es d c] |
			g'8[ h,]\melismaEnd c |
			f d g |
			es16.[\melisma d32] c16.[ b32] as16.[ g32]\melismaEnd |
			f'8 d g |
			c,4.
			\time 4/4
			\partial 8 r8 |
			r2 r4 r8 f |
			f b,
		}

	\bar "|."
	}

}
