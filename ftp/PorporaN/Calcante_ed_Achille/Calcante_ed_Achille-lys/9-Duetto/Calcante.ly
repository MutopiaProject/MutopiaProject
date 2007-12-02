\new Staff  {
	\set Staff.instrumentName="Calcante"
	\set Staff.midiInstrument="oboe"
	\key g \major
	\clef bass
	\relative c { 	
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			\partial 8 r8 |
			R1.*17 |
			r2. d2. |
			e fis4. h |
			e, a d,8[ e] fis g4 g8 |
			fis[ e] d h'4 h8 a[ g] fis g[ fis] e |
			fis[ e] d r4 r8 r2. |
			g a |
			h4. e a, d |
			g,8[ a] h c4 c8 h[ a] g e'4 e8 |
			d[ c] h c4 c8 h[ a] g a[ g] fis |
			g[\melisma a h] c[ d e] fis,[ g a] h[ c d] |
			e,[ fis g] a[ h cis] d2. |
			cis h |
			a~ a4. g~ |
			g8[ fis e] fis[ g a]\melismaEnd h4 cis8 d4 fis,8 |
			g4. a h8[\melisma a g] fis4 g8\melismaEnd |
			a4. a, d r4 r8 |
			R1.*6 |
			a'2. g |
			fis4. h e, a |
			d,8[ e] fis g4 g8 fis[ e] d r4 r8 |
			d'2. c |
			h4. e a, d |
			g,8[ a] h c4 c8 h[ a] g c4 c8 |
			h[ a] g c4 c8 h[ a] h a[ g] fis |
			g[\melisma a h] c[ d e] fis,[ g a] h[ c d] |
			e,[ fis g] a[ h cis] d,2.~ |
			d1.~ |
			d2. e8[ fis g] a[ h c] |
			d4.~ d8[ c h] c2. |
			h a |
			g8[ fis g] a[ g fis] g[ a h] c[ h a] |
			h[ a g] a[ g fis] g[ a h] c[ h a] |
			h[ a h] c[ h a]\melismaEnd g4 a8 h4 c8 |
			d4. d, e r4 r8 |
			r2. g~ |
			g4.\melisma cis, d2. |
			d4.~ d4\melismaEnd d8 g,4. r4 r8 |
			R1.*4 |
			r2. \bar "||" r2. |
			R1.*7 |
			a'2. a |
			a4. a a d |
			cis8[ h] a d4 d8 cis8[ h] a d4 d8 |
			cis8[ h] a d4 c8 b[ a] g c4 b8 |
			a[ g] f b4 a8 g[ f] e a4 g8 |
			fis4.\melisma g~ g f8[ e d] |
			e[ fis gis] a2. g8[ f e] |
			f[ g a] h[ c d] e,[ fis gis] a[ h c] |
			d2. c |
			h a8[ h c] d[ e f]\melismaEnd |
			e4. e, f2.\fermata |
			e4.~ e4 e8 a,4. r4\fermata 
		}
	\bar "|."
	}
}
