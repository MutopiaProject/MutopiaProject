\new Staff  {
	\set Staff.instrumentName="Achille"
	\set Staff.midiInstrument="oboe"
	\key d \major
	\clef treble
	\relative c' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\partial 8 r8 |
			R1*8 |
			r4 r8 fis fis a a d |
			d4~\melisma d16[ cis h a] d4\trill~ d16[ cis h a] |
			d[ cis d fis] d[ cis d fis] e[ d e g] e[ d e g] |
			fis[ e] d4\melismaEnd cis16[ h] a8 d e d16 cis |
			d8.\prall[ cis32 h] a8 h a d e d16[ cis] |
			d8.\trill[ cis32 h] a8 d a4\melisma g\melismaEnd |
			fis r d'8 fis16 e d8 d |
			d fis16[ e] d8 d gis,4 r8 h |
			h e, e d' d gis, gis d' |
			d16[\melisma fis] e4\melismaEnd d8 cis[ a] h[ a16 gis] |
			a8\melisma e' r e r e r e |
			r16 fis[ e dis] e[ a, h a] h[ fis' e dis] e[ gis, a gis] |
			a[ fis' e dis] e[ a, h a] h[ fis' e dis] e[ h cis dis] |
			cis[ a h cis d e fis gis] a8[ gis16 fis]\melismaEnd e8 a, |
			a4\melisma h\prall\melismaEnd a r |
			R1 |
			r2 r4 r8 a |
			a cis cis e e4~\melisma e16[ cis h a] |
			e'4~\prall e16[ cis h a] g'[ fis e d cis h a g] |
			fis4\melismaEnd d'8.[ e32 fis] e16[ cis] d4\melisma fis8\melismaEnd |
			e32[ d cis16] d4 cis16[ h] a8 d e d16 cis |
			d8.\prall[ cis32 h] a8 h a d e d16[ cis] |
			d8.\prall[ cis32 h] a8 d h[ d] a[ d] |
			\appoggiatura a g2 fis4 a~ |
			a8 h16 cis d8 d, d fis fis a |
			a16[ h c8] r c c d, d c' |
			h4 r8 d d e, e d' |
			cis4 a' h, g' |
			a,16[\melisma a h a] fis'8.[\prall e32 fis] g,16[ g a g] e'8.[\prall d32 e] |
			fis,16[ e' d cis] d[ fis, g fis] g[ e' d cis] d[ g, a g] |
			a[ e' d cis] d[ a h a] h[ d cis e d fis e g] |
			fis8.\prall[ e32 fis]\melismaEnd g8 h, d4\melisma e\prall\melismaEnd |
			d r r fis |
			e8 a, a fis' e4 fis |
			e8 a, a fis' e4 r8 e |
			e a, a e' e g, g e' |
			fis, d'4.\prall g,8 d'4.\prall |
			a8\melisma d4.\prall h16[ d cis e d fis e g] |
			fis8.\prall[ e32 fis]\melismaEnd g8 h,8 d\melisma e4.\prall\melismaEnd |
			d4 r r2 |
			R1 |
			R1 |
			\partial2 r2 \bar "||" 
			\time 3/8
			d16.\trill[ cis32 d8] e |
			fis[ ais,] h |
			fis e'4 |
			d8 cis fis |
			d cis r |
			d16.\trill[ cis32 d8] e |
			fis[ ais,] h |
			fis e'4 |
			d8 cis fis |
			d cis r\fermata |
			\time 4/4
			fis4 h,8. h16 h4 fis' |
			g16[ fis e8] r4 e a,8. a16 |
			a4 e' fis16[ e d8] r4 |
			a8 h16 cis d8 a h4 h~ |
			h8 cis16 d e8 h cis4 cis |
			cis cis d16[\melisma e d fis] e[ d cis h] |
			cis[ d cis e] d[ cis h a] h[ cis h d] cis[ h a gis] |
			a8 cis r cis r cis r cis |
			r16 d[ cis h] cis[ fis, gis fis] gis[ d' cis h] cis[ gis a gis] |
			a[ d cis h] cis[ fis, gis fis] gis[ d' cis h] cis[ gis a h] |
			a[ fis gis a h cis dis eis] fis2\prall~ |
			fis8.[ e32 d]\melismaEnd cis8 h a4.\prall\melisma gis8\melismaEnd |
			fis2 r4 r8\fermata
		}
	\bar "|."
	}
}
