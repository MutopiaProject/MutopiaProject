\new Staff  {
	\set Staff.instrumentName="Achille"
	\set Staff.midiInstrument="oboe"
	\key g \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\partial 8 r8 |
			R1.*9 |
			d2. c |
			h4. e a, d |
			g,8[ a] h c4 c8 h[ a] g e'4 e8 |
			d[ c] h c[ h] a h[ a] h c[ h] a |
			h[ a] g r4 r8 h4. cis |
			d4 a8 h4 cis8 d4 a8 h4 cis8 |
			d4 a8 e'4 a,8 fis'[ e] d cis[ h] a |
			h[\melisma cis d] e[ fis g] a,[ h cis] d[ e fis] |
			g,[ a h] cis[ d e] fis,4\melismaEnd a8 d4.~ |
			d\melisma cis\prall\melismaEnd d r4 r8 |
			R1.*2 |
			d2. c |
			h8[ d] c h[ a] g g4. fis |
			d'2. c |
			h8[ a] g a[ g] fis g[ a] h c4 c8 |
			h8[ c] d e4 e8 d8[\melisma c h] c[ h a] |
			h[ a]\melismaEnd g e'2. d4.~ |
			d cis8[\melisma d e] fis16[ e d cis h8] fis'16[ e d cis h8] |
			e16[ d cis h a8] e'16[ d cis h a8] d16[ cis h a gis8] d'16[ cis h a gis8] |
			cis8[ e d] cis[ h a] h[ cis d] e[ fis g] |
			a,[ h cis] d[ e fis] g[ fis e]\melismaEnd fis[ e] d |
			e4. cis d8[\melisma cis h] a4\melismaEnd <g g'>8 |
			<fis fis'>4. <e e'> <d d'> r4 r8 |
			R1.*2 |
			a'2. h |
			c4. f h, e |
			a,8[ h] c d4 d8 c[ h] a f'4 f8 |
			e8[ d] c d[ c] h c[ h] c d[ c] h |
			c16[ h] a4 r r8 r2. |
			r4 r8 d2. cis4. |
			d4 a8 h4 cis8 d4 a8 h4 cis8 |
			d4 a8 r4 r8 r2. |
			d c |
			h8[ a] g r4 e'8 d4 g,8 r4 e'8 |
			d4 g,8 r4 e'8 d4. c |
			h\melisma e2. d4.~ |
			d\melismaEnd cis8[ d e] d[\melisma c h] a[ h c] |
			h[ a g] fis[ g a] g[ a h] a[ h c] |
			h[ a g] d'4.~ d8[ c h] c4.~ |
			c8[ h a] h[ c d] e16[ d c h a8] e'16[ d c h a8] |
			d16[ c h a g8] d'16[ c h a g8] c16[ h a g fis8] c'16[ h a g fis8] |
			h8[ a h] c[ h a] h[ a g] a[ g fis] |
			g[ a h] c[ h a] h[ c d] e4 fis8 |
			g4\melismaEnd d8 e4 fis8 g[ fis e] d4 c8 |
			h4. a g e' |
			fis, g r2. |
			h1. |
			a4.~ a4 a8 g4. r4 r8 |
			R1.*4 |
			r2. \bar "||" h |
			a g4. c |
			fis, h g8[ fis8] e e'4.~ |
			e dis e8[\melisma d c] h[ a h] |
			c4\melismaEnd c8 h4 a8 g[ fis] e r4 r8 |
			e'2. d |
			c4. f h, e |
			e4 a,8 a[ h] c d4 d8 d[ cis] h |
			cis[\melisma d e] d[ e f] e[ f g] f[ e d] |
			cis[ d e] d[ e f] e[ f g] f[ e d] |
			a1.\melismaEnd |
			r4 r8 f'4.~ f4 e8 e4.~ |
			e4 d8 d4.~ d4 c8 c4.~ |
			c8[\melisma b a] b[ a g] a[ h cis] d4.~ |
			d8[ c h] c[ h a] h[ c d] e4.~ |
			e d~ d c8[ d e] |
			f16[ e d c h8] f'16[ e d c h8] e16[ d c h a8] e'16[ d c h a8] |
			d16[ c h a gis8] d'16[ c h a gis8] c[ d e] f[ e]\melismaEnd d |
			c4. h4\melisma a8\melismaEnd d4.~\fermata d4 d8 |
			c4.\melisma h4\melismaEnd a8 a4. r4\fermata
		}
	\bar "|."
	}
}
