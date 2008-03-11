\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Semiramide}
	\set Staff.midiInstrument="oboe"
	\key d \major
	\clef treble
	\relative c' { 	
		\context Voice = "melodyAlt" {
			\dynamicUp
			\autoBeamOff
			\partial 4. r4 r8 |
			R1.*7 |
			r2. r4 r8 fis4 g8 |
			a8. h16[ a8] a4 d8 h4 a8 fis4 g8 |
			a8. h16 a8 a4 d8 h4 a8 a4 d8 |
			\appoggiatura a8 g4 fis8 r4 r8 r2. |
			r4 r8 a[ d] a g[ h] g fis[ d'] fis, |
			fis4 e8 a4 a8 a8.[\prall gis16] a8 a16.[ h32 cis8] h |
			a8.[ gis16] a8 a16.[ h32 cis8] h a[ gis]a e4 e8 |
			fis8.[ gis16] fis8 d'4 fis,8 fis4\prall e8 a4 e8 |
			fis[ d'] cis h[ a] gis a4.~\melisma a8[ cis16 h cis h] |
			a4.~\prall a8[ cis16 h cis h] a8[ a8.]\prall gis32[ a] e8[ h'8.\prall a32 h] |
			e,8[ cis'8. h32 cis] e,4\melismaEnd d'8 cis4\melisma h16[ cis] d8[ cis]\melismaEnd h |
			a4. h cis16[ e d cis h a] e8 h'4\prall |
			a4. r4 r8 r2. |
			R1. |
			r4 r8 a4 e8 a8. cis32[ h a8] a4 e8 |
			fis4\prall e8 a4 e8 a8 cis16[ h] a8 a4 e8 |
			fis4\prall e8 e4 a8 g4 fis8 r4 r8 |
			r4 r8 a8 h16[ a h a] g8 a16[ g] a[ g] fis8[ d'] fis, |
			e16[ d] e4 a8 h16[ a h a] g8 a16[ g] a[ g] fis8[ d'] fis, |
			e16[ d] e4 a a8 b8. c16 b8 b4 b8 |
			a8.[ g16] a8 a4 d8 g,8.[ fis16] g8 a4 g8 |
			fis8[ a] d cis16[ h a8] g fis[ a d]\melisma cis16[ h a8 g] |
			fis[ g a]\melismaEnd h cis4 d8[ d,] g fis e4 |
			d4.~\melisma d8[ fis16 e fis e] d4.~ d8[ a'16 fis g e] |
			d8\melismaEnd d'4 cis16[ h a8] g8 fis[ a] d cis16[ h a8] g |
			fis[ a] d cis16[ h a8] g fis[ g] a h cis4\prall |
			d8[ d,] g fis e4\prall fis8[ g a] h cis4\prall |
			d8[ d,] g fis e4\prall d4. r4 r8 |
			R1.*4 |
			\key d \minor
			\time 3/8
			a'8 a8.[ b16] |
			\appoggiatura a8 g4 f8 |
			e16[ a g e f d] |
			cis16.[ d32] d8.[\prall cis32 d] |
			e16[ gis] \appoggiatura gis8 a4 |
			f8[ e] d |
			a' e r16\fermata a |
			f8[ e] d |
			cis16[ h] a8 r\fermata |
			r c' f, |
			f8.[ e16] f8 |
			f c'32[ b a16] b32[ a g16] |
			f8.[\prall e16] f8 |
			r d' g, |
			g[ f] g|
			g d'[ g,] |
			g16.[ f32] g4 |
			b8[ as] g |
			as32[\melisma b c16] c4\prall |
			g8[ as b] |
			as32[ b c16] c4 |
			g8[ a b] |
			a\melismaEnd a4\prall |
			a8 a8.[\prall gis32 a] |
			a8 a a |
			a4.~ |
			a8.[ h16]\prall a8 |
			a4 r8 |
		}

	\bar "|."
	}

}
