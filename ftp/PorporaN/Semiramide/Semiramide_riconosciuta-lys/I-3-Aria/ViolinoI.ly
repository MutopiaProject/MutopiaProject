\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key d \major
	\clef treble
	\relative c'' { 	
		\partial 8 fis16 g |
		a8 a a a d16 cis32 h a8 a a |
		h\prall a4 d8 \appoggiatura h16 a8 g16 fis \appoggiatura a g8 fis16 e |
		fis d a' d, d' d, h'8 \appoggiatura h a8 g16 fis \appoggiatura a g8 fis16 e |
		<fis a, d,>8 a a8.\prall g32 fis <e cis a>8 g g8. fis32 e |
		<fis a, d,>8 a a8.\prall g32 fis <e cis a>8 g g8. fis32 e |
		fis16 d a' d, d' d, a' d, fis d a' d, d' d, a' d, |
		h'8.\prall \times 2/3{a32 h cis} d8 d, d8.\prall \times 2/3 {cis32 d e} e8.\prall d16 |
		d4 r8 fis16 g a8 a a a |
		d16 cis32 h a8 a a h a4 d8 |
		a8 g16 fis g fis fis g fis d a' d, d'8 h |
		a g16 fis \appoggiatura a g8 fis16 e fis8 a a8.\prall g32 fis |
		<e cis a>8 g g8.\prall fis32 e <fis a, d,>8 a a8. g32 fis |
		<e cis a>8 g g8. fis32 e <fis a, d,>4 r |
		<e cis a> r r <e cis a> |
		r <e h e,> r8 a gis h, |
		cis16 a e' a, a' a, e' a, cis a e' a, a' a, e' a, |
		d a fis' a, a' a, fis' a, dis h fis' h, h' h, fis' h, |
		gis e h' e, e'4 fis,8 d' e, cis' |
		d, h' cis, a' h,4 gis''\prall |
		a8 a, a a' a a, a a' |
		a e e h' cis4 fis, |
		h,8 fis' e, a' h4 gis |
		a8 cis a fis cis4 h |
		cis16 a e' a, a' a, e' a, cis a e' a, a' a, e' a, |
		<fis' a, d,>8. \times 2/3 {e32 fis gis} a8 a, a8. \times 2/3 {gis32 a h} h8. a16 |
		a8. h16 a16 g fis e d8 a'' a a |
		d16 cis32 h a8 a a c h4 c8 |
		h a16 g a8 g16 fis g a h4 c8 |
		h a16 g a8 g16 fis g fis e8 r4 |
		<e cis a> r fis r |
		a r8 a h h, a a' |
		e e, e e' <fis a, d,> a a8. g32 fis |
		<e cis a>8 g g8.\trill fis32 e <fis a, d,>8 a a8.\prall g32 fis |
		<e cis a>8 g g8.\trill fis32 e fis16 d a' d, d' d, a' d, |
		fis d a' d, d' d, a' d, fis8.\prall e32 fis g8.\prall fis32 g |
		a8 g16 fis g a h cis d8 cis16 h a8 g |
		fis4 e\prall fis8 d' h fis |
		g4 a h8 d h fis |
		g4 a <fis a, d,>8 a a8.\prall g32 fis |
		<e a cis>8 g g8. fis32 e <fis a, d,>8 a a8. g32 fis |
		<e a cis>8 g g8. fis32 e fis16 d a' d, d' d, a' d, |
		fis d a' d, d' d, a' d, h'8.\prall \times 2/3 {a32 h cis} d8 d, |
		d8.\prall \times 2/3 {cis32 d e} e8.\prall d16 d4 \bar "||" r8 d16 e |
		fis8 fis fis fis h16 a32 g fis8 fis fis |
		g fis h h h h ais ais |
		h fis h, h h h ais cis |
		d16 h fis' h, h' h, fis' h, d h fis' h, h' h, fis' h, |
		d h fis' h, h' h, fis' h, d h fis' h, h' h, fis' h, |
		d h fis' h, h' h, fis' h, d h fis' h, h' h, fis' h, |
		d h fis' h, h' h, fis' h, cis,8 gis'' gis gis |
		a a a a eis eis eis eis |
		fis a cis cis h h gis gis |
		fis fis, fis d cis4 r |
		r2 r4 r8\fermata fis'16 g \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." }|
	\bar "|."
	}

}
