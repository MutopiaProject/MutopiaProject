\new Staff  {
	\set Staff.instrumentName="Alto"
	\set Staff.midiInstrument="oboe"
	\key g \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodyAlt" {
			\dynamicUp
			\autoBeamOff
			d4. g,8 fis d r a' |
			h c d c16[ h] h8 a d, d |
			g[ a16 h] g8 fis e e e e |
			a[ h16 c] a8 g fis16[\melisma e fis g] fis[ g e fis] |
			g[ fis g a] g[ a fis g] a[ g a h] a[ fis g a] |
			d,8\melismaEnd d r4 r2 |
			r4 d8 d e[ fis16 g] e8 d |
			c c c' c c2~ |
			c1~ |
			c8 d h a h[\melisma a16 g] fis4\melismaEnd |
			g d8 d g[ a16 h] g8 fis |
			e e r4 r2 |
			d'4. g,8 fis d r4 |
			R1 |
			a'4. d,8 cis a r e' |
			fis g a g16[ fis] fis8 e a, a |
			d[ e16 fis] e8 cis h h h h |
			e[ fis16 g] e8 d cis16[\melisma h cis d] cis[d h cis] |
			d[ cis d e] d[ e cis d] e[ d e fis] e[ cis d e] |
			a,8\melismaEnd a r4 r e'8 e |
			fis[ g16 a] fis8 e d d d d |
			g[ a16 h] g8 fis e16[\melisma d e fis] e[ fis d e] |
			fis[ e fis g] fis[ g e fis] g[ fis g a] g[a fis g] |
			a[ g a h] a[ h g a] h8[ h,16 a] h[ cis a h] |
			cis[ h cis d] cis[ d h cis] d[ cis d e] d[ e cis d] |
			e[ d e fis] e[ cis d e] a,8\melismaEnd a r4 |
			r2 r4 a'8 a |
			h[ cis16 d] h8 a g g g g |
			g1~ |
			g2~ g8 a fis e |
			fis[\melisma e16 d] cis8.[ d16]\melismaEnd d4 a'8 a |
			h[ c16 d] h8 a g g g g |
			a[ h16 c] a8 g fis fis r4 |
			d'4. g,8 fis d r a' |
			h c d c16[ h] a8 d, d d |
			g[ a16 h] g8 fis e e e e |
			a[ h16 c] a8 g fis16[\melisma e fis g] fis[ g e fis] |
			g[ fis g a] g[ a fis g] a[ g a h] a[ h g a] |
			h[ a h c] h[ g a h] a[ g a h] a[ fis g a] |
			g[ fis g a] g[ e fis g] fis8\melismaEnd d r4 |
			r8 d' d d d4.\melisma c16[ h] |
			a8[ h16 c] h8[ a16 g]\melismaEnd g4 r |
			r g8 g a[ h16 c] a8 g |
			fis fis fis fis g[ a16 h] g8 fis |
			e16[\melisma d e fis] e[ fis d e] fis[ e fis g] fis[ g e fis] |
			g[ fis g a] g[ a fis g] a[ g a h] a[ fis g a] |
			d,8\melismaEnd fis g a g4\melisma fis8.[ g16]\melismaEnd |
			g4 r8 c c[ d h] a16[ g] |
			g4\melisma fis8.[ g16]\melismaEnd g2\fermata |
		}

	\bar "|."
	}

}
