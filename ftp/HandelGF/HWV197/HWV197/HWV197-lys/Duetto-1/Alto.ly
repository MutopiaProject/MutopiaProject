\new Staff  {
	\set Staff.instrumentName="Alto"
	\set Staff.midiInstrument="oboe"
	\key g \major
	\clef treble
	\relative c' { 	
		\context Voice = "melodyAlt" {
			\dynamicUp
			\autoBeamOff
			R4.*19 |
			r8 fis g |
			a d, h'~ |
			h a4 |
			fis8. e16[ d8] |
			R4. |
			r8 fis g |
			a d, h'~ |
			h a4 |
			fis16[\melisma e fis g a h] |
			e,[ d e fis g a] |
			d,[ cis d e fis g] |
			a[ h a h a h] |
			a8\melismaEnd g16[ fis e8] |
			r g g |
			g[ fis] fis |
			r e d |
			cis[\melisma a d]~ |
			d16\melismaEnd e cis8. d16 |
			d8 e fis |
			g4.~ |
			g |
			r8 fis8. fis16 |
			g8.[ a16 h8] |
			c a8. g16 |
			g4. |
			R4.*2 |
			r8 e e |
			e[ d] d |
			r c' c |
			c[\melisma h16 a h c] |
			a[ g a h c d] |
			g,[ fis g a h c] |
			d[ c d d, g fis] |
			e[ g] c4~ |
			c16[ d h a h g] |
			fis8\melismaEnd d r |
			r d' h a4 g8 |
			d'8. c16[ h8] |
			a[ fis16 e] d8 |
			r g g |
			g[ fis] fis |
			r e e |
			e[ d] d |
			r c' c |
			c4.~\melisma |
			c~ |
			c8[ h16 a h c] |
			a[ g a h c d] |
			g,[ fis g a h c] |
			d4. |
			c16[ h]\melismaEnd a8. g16 |
			g4. |
			r8 a a |
			a[ g] g |
			r fis fis |
			e16[\melisma d e fis g a] |
			fis[ e fis g a h] |
			g[ fis g a h c] |
			d4.~ |
			d4\melismaEnd d8 |
			r c c |
			c8.[ d16 h8] |
			a16[ g] fis8. g16 |
			g4. |
			r8 g c |
			c8.[ d16 h8] |
			a16[ g] fis8. g16 |
			g4. |
			R4.*9 |
			r8\fermata \bar "||" r r |
			R4.*3 |
			r8 a gis |
			a e f~ |
			f e4 |
			c8. h16[ a8] |
			r8 a' d, |
			h'4.~\melisma |
			h16[ a g fis e gis] |
			a4.~ |
			a16[ gis a c h a] |
			gis[ fis gis a fis gis] |
			a[ gis a h gis a] |
			h[ a h c a h] |
			c8.\melismaEnd h16[ a gis] |
			a[ h] gis8. a16 |
			a4. |
			R4.*2 |
			r8 h ais |
			h fis g~ |
			g fis4 |
			d8. cis16[ h8] |
			r8 h' e, |
			cis'4.~\melisma |
			cis16[ h a g fis a] |
			h4.~ |
			h16[ ais h d cis h] |
			ais[ gis ais h gis ais] |
			h[ ais h cis ais h] |
			cis[ h cis d h cis] |
			d8.\melismaEnd cis16[ h ais] |
			h[ cis] ais8. h16 |
			h4. |
			R4.*5 |
		}

	\bar "|."
	}

}
