\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Tamiri}
	\set Staff.midiInstrument="oboe"
	\key a \major
	\clef treble
	\relative c'' {
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\partial 8 r8 |
			R1.*10 |
			r4 r8 r r a e'[ fis] e e4 e8 |
			e[ cis] d e4 e8 fis4.~ fis16[ gis a gis fis8]\melisma |
			e4. d\prall\melismaEnd cis8 e[ d] cis[ h] a |
			gis4. a\prall h8 e[ d] cis[ h] a |
			gis4. a\prall h cis16[ d e d cis8] |
			\appoggiatura cis h4. cis16[ d e d cis8] \appoggiatura cis h4. r8 r\fermata h |
			h[ gis] a h4 e8 cis4.\prall h4 h8 |
			h[ gis] a h4 e8 cis4.\prall h4 e8 |
			a,[ gis] a fis'4.~ \grace {fis16[ gis]} a8 gis fis fis[ e] dis |
			\appoggiatura dis e4. fis~ \grace {fis16[ gis]} a8 gis fis fis[ e] dis |
			\appoggiatura dis e4. cis16[ h a h cis8] \appoggiatura cis8 h4. a16[ gis fis gis a8] |
			\appoggiatura a16 gis4. cis16[ h a h cis8] \appoggiatura cis h4. a16[ gis fis gis a8] |
			gis8 e'[ dis] cis[ h] a gis4. fis |
			gis8 e'[ dis]\melisma cis[ h a]\melismaEnd gis16[ fis]\melisma e4\melismaEnd fis'4.\prall |
			e r4 r8 r2. |
			R1.*2 |
			r4 r8 r r a e[ fis] e e4 e8 |
			e[ cis] d e4 e8 fis4.~ fis16[ gis a gis fis8]\melisma |
			e4. d\prall\melismaEnd cis8 e[ d]cis[ h]a |
			gis4. a h8 e[ d] cis[ h] a |
			gis4. a\prall h cis16[ d e d cis8] |
			\appoggiatura cis8 h4. cis16[ d e d cis8] \appoggiatura cis4 h2.\prall |
			r8 r e e4.~ e8[ cis] d e4 a8 |
			fis4.\prall e4 e8 e[ cis] d e4 a8 |
			fis4.\prall e4 a8 \appoggiatura e4 d2. |
			cis4. fis~ \grace {fis16[ gis]} a8 gis fis fis[ e] dis |
			\appoggiatura dis e4. fis~ \grace {fis16[ gis]} a8 gis fis fis[ e] dis |
			e g[ fis] e[ d] cis d fis[ e] d[ cis] his |
			cis8 e[ d] cis[ h] ais h d[ cis] h[ a] gis |
			a4.\prall e'\prall a8[ gis fis] e4 d8 |
			cis4. h a fis'16[ e d e fis8] |
			\appoggiatura fis e4. d16[ cis h cis d8] \appoggiatura d cis4. fis16[ e d e fis8] |
			\appoggiatura fis8 e4. d16[ cis h cis d8] cis[ h cis] d[ cis h] |
			a4. h\prall cis8 a'[ gis]\melisma fis[ e d]\melismaEnd |
			cis16[ h]\melisma a4\melismaEnd h4. a r4 r8 |
			R1.*2 |
			r2. r4 r8 \bar "||"
			\key a \minor
			\time 3/4
			\partial 4 e'4 |
			\appoggiatura d8 c4. h8 a c |
			h8.[ a16] h4 e~ |
			e d8 e f a, |
			gis8.[\prall a16] h4 e |
			c8 h c2 |
			h4 r e |
			c8 h c2\prall |
			h4 r r |
			c g'16[ f] e[ d] c8 c |
			c8.[ h16] c4 r |
			d a'16[ fis] g[ e] d8 d |
			d8.[ c16] d4 g |
			c,4. d16[ e] f[ g] a8 |
			h,4 c g' |
			c,4. d16[ e] f[ g] a8 |
			h,4\melisma c\melismaEnd r8 e |
			e4\melisma d8\melismaEnd c16[ h] c8 a |
			h e \appoggiatura h a4. fis'8 |
			g, e' e e e e |
			e8.[ dis16] e8 e e e |
			e8.[ d32 c] h4 c |
			h8 a16[g] a4 h |
			c2\prall\fermata e4 |
			h8 a16[ g] a4 h |
			e,2 r4 |
		}

	\bar "|."
	}

}
