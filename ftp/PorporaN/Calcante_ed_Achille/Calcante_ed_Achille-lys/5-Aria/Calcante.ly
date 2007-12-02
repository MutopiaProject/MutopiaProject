\new Staff  {
	\set Staff.instrumentName="Calcante"
	\set Staff.midiInstrument="oboe"
	\key g \major
	\clef bass
	\relative c' { 	
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			\partial 8 r8 |
			R1*7 |
			e4 e,8. fis16 g4 a\prall |
			h h, r2 |
			c'4 c,8. d16 e4 fis |
			g g, r h' |
			c, c' d, d' |
			e,8[\melisma e'16 d c h a g] fis8[ a16 g fis e d c] |
			h8\melismaEnd g' e c d4. d8 |
			g,4 r r2 |
			R1 |
			d''4 g,8. a16 h4 cis\trill |
			d d, r2 |
			e'4 e,8. fis16 g4 a |
			h h, r g' |
			a, a' h, h' |
			c,8[\melisma c'16 h a g fis e] dis8[ fis16 e dis c h a] |
			g8\melismaEnd e'' c a h4 h, |
			e r a r |
			h,2\fermata r8 h' g e |
			h4. h8 e,4 r |
			R1 |
			r2 r4 r8 d'' |
			g,8.[ fis16] g8. a16 h8. cis16 |
			d4 d, r8 e' |
			a,8.[ gis16] a8. h16 c8. d16 |
			e4 e, r8 a |
			fis8.[ e16] fis4 r8 h |
			gis8.[ fis16] gis4 r8 c |
			a8.[ gis16] a4 r8 dis |
			e4\fermata e, r |
			r g c~ |
			c h r8 f |
			f4 e c' |
			f, g2 |
			a, fis'4 |
			g2.~ |
			g4\melisma cis2 |
			d4\melismaEnd d, g |
			c, d2 |
			g, r4\fermata |
		}
	\bar "|."
	}
}
