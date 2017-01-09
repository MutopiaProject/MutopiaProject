\new Staff  {
	\set Staff.midiInstrument="harpsichord"
	\key c \major
	\clef bass
	\relative c {
		cis1~ |
		cis2 d |
		g a4 fis~ |
		fis1~ |
		fis2 g~ |
		g1~ |
		g2 f |
		e4 gis,~ gis2~ |
		gis4 a~ a2 |
		h4 e2 fis4~ |
		fis1 |
		g~ |
		g4~ g2. |
		gis1 |
		a2 f |
		e4 c~ c2~ |
		c f~ |
		f b,~ |
		%duplicate bars in score
		%{e4 c2.~ |
		c f~ |
		f b,~ |%}
		b c4 f~ |
		f1~ |
		f2 b,~ |
		b1 |
		fis2~ fis~ |
		fis1 |
		g~ |
		g4 a d, r |
	\bar "|."
	}

}
