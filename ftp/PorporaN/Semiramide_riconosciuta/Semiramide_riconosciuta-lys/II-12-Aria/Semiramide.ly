\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Semiramide}
	\set Staff.midiInstrument="oboe"
	\key e \minor
	\clef treble
	\relative c'' {
		\context Voice = "melodyAlt" {
			\dynamicUp
			\autoBeamOff
			\partial 8 r8 |
			R1*5 |
			r4 r8 h h e, r g |
			g fis r h a16[g] fis8 r h |
			g16[ fis] e8 r h' h fis r h |
			g16[ fis] e8 r h' h fis r h |
			g16[ fis] e8 r4 r r8 d' |
			d[g,] g g g16[fis] g8 r h |
			a d, r c' h[ g] a g16[ fis] |
			g[\melisma a h c] d8\melismaEnd e d[ c16 h] a8 d |
			g,4 r r2 |
			R1 |
			r4 r8 d' d[ gis,] gis gis |
			a16.[gis32] a8 r a h4 e,8 h' |
			c16[ h] a8 r8 c h4 e,8 d' |
			c16[ h] a8 r a a8.[\prall gis32 a] a8 a |
			a8.[\prall gis32 a] a8 a a16[\melisma h c d] e8[ a,] |
			h[ a16 h]\melismaEnd e,8 gis a8.[\prall\melisma g32 f] e8\melismaEnd f |
			e[ d16 c] d8 e a,4 r |
			r2 r4 r8 c' |
			c fis, r c' c h r h |
			h e r h h a r a |
			a dis, r h' g4 fis8 h |
			\appoggiatura a4 g2 fis4 r |
			r r8 h h[ e,] e e |
			e16[ dis] e4 h'8 c[ e,] e e |
			e16[ dis] e4 e'8 e[ ais,] ais ais |
			h16[ ais] h8 r h h4\prall h8 h |
			h4\prall h8 h h8[\melisma a16 g] a[ h cis dis] |
			e8.\melismaEnd d32[ c] h8 c h[ a16 g] a8 h |
			c4 e h8[ a16 g] a8 h |
			e,4 r r2 |
			R1 |
			r4 \bar "||" r8 d' d[ g,] g h |
			h a r c c[ fis,] fis c' |
			c h r h h[ a] a g |
			fis4 g8 a b2 |
			a4 r8 d, g g4 f8 |
			f e r e a a4 g8 |
			g fis r d' d[ g,] g g |
			g16[ fis] g8 r d' e[ g,] g g |
			g16[ fis g8] r8 g cis4 cis8 cis |
			d d4 c8 \appoggiatura c4 h2\melisma |
			c8 c4 h8 \appoggiatura h4 ais2 |
			h8 h4\prall a16[ gis] a8 a4\prall g16[ fis] |
			g8[ d]\melismaEnd a' d, h' g c a |
			d[ fis,] g e' d[ c16 h] a8 d |
			e,4\fermata e' d8[ c16 h] a8 d |
			g,2 r |
			R1*2 |
			r4 r8 h 
		}

	\bar "|."
	}

}
