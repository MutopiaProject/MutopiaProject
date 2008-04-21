\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName="Soprano"
	\set Staff.midiInstrument="oboe"
	\key g \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			R1*4 |
			d4. g,8 fis d r a' |
			h c d c16[ h] h8 a d, d |
			g[ a16 h] g8 fis e e e e |
			a[ h16 c] a8 g fis16[\melisma e fis g] fis[ g e fis] |
			g[ fis g a] g[ a fis g] a[ g a h] a[ fis g a] |
			d,8\melismaEnd d r4 r a'8 a |
			h[ c16 d] h8 a g g g g |
			a[ h16 c] a8 g fis16[\melisma e fis g] fis[ g e fis] |
			g[ fis g a] g[ a fis g] a[ g a h] a[ h g a] |
			h[ a h c] h[ c a h] cis[ h cis d] cis[ d h cis] |
			d[ cis d e] d[ e cis d] e[ d e fis] e[ cis d e] |
			a,8\melismaEnd a r4 r2 |
			r4 a8 a h[ cis16 d] h8 a |
			g g g g g2~ |
			g1~ |
			g8 a fis e fis[\melisma e16 d] cis8.[ d16]\melismaEnd |
			d4 a'8 a h[ c16 d] h8 a |
			g g r4 r2 |
			r d'4. g,8 |
			fis d r4 r2 |
			r2 a''4. d,8 |
			cis a r e fis g a g16[ fis] |
			fis8 e a a d[e16 fis] d8 cis |
			h h h h e[ fis16 g] e8 d |
			cis16[\melisma h cis d] cis[ d h cis] d[ cis d e] d[ e cis d] |
			e[ d e fis] e[cis d e] a,8\melismaEnd a r4 |
			r e8 e fis[ g16 a] fis8 e |
			d d d d g[a16 h] g8 fis |
			e e e e fis[ g16 a] fis8 e |
			d d d'4~ d8 g, fis d |
			r a' h c d c16[ h] a8 d, |
			r4 d'8 d e[ fis16 g] e8 d |
			c[ d16 e] c8 h a16[\melisma g a h] a[ h g a] |
			h[a h c] h[ c a h] c[ h c d] c[ d h c] |
			d[ c d e] d[ h c d] c[ h c d] c[ a h c] |
			h[ a h c] h[ g a h] a8\melismaEnd c c c |
			c2~ c8[\melisma h16 a] h8[ a16 g] |
			fis8\melismaEnd d r4 r d'8 d |
			e[ fis16 g] e8 d c c c c |
			d[ e16 fis] d8 c h h r4 |
			r8 c c c c2~ |
			c1~ |
			c8 d h c h4\melisma a8.[ g16]\melismaEnd |
			g4 r8 e' fis[ d g] c, |
			h4\melisma a8.[ g16]\melismaEnd g2\fermata |
		}

	\bar "|."
	}

}
