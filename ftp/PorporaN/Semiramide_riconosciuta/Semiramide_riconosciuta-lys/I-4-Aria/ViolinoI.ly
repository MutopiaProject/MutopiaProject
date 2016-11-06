\new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key a \major
	\clef treble
	\relative c'' { 	
	\partial 4 e4 |
	\appoggiatura d cis~ cis16 fis e d cis h a gis |
	a8. gis32 a e4~ e16 gis a e' |
	d8 d~ d16 cis h a gis fis e d' |
	cis32 h a8.~ a16 cis e gis a8. h32 cis |
	h cis d8.~ d16 cis h a gis fis e d |
	\appoggiatura d8 cis8. \times 2/3 {d32 e fis} \appoggiatura fis8 e4. d8 |
	\appoggiatura d8 cis8. \times 2/3 {d32 e fis} \appoggiatura fis8 e4. d8 |
	\appoggiatura d8 cis8. \times 2/3 {d32 e fis} \appoggiatura fis8 e4. d8 |
	a'8\prall gis16 fis e8 d cis h |
	\times 2/3 {cis16 e d} \times 2/3 {cis h a} e8. d32 e h'8. a32 h |
	a8 e a,4 r |
	e''8 e e e e d |
	cis cis e a a a |
	a a gis gis gis gis |
	a e e e e e |
	d d h h h h |
	a e~ e16 fis' e d cis h a gis |
	a8 e' e e e e |
	e e e e e e |
	fis fis dis dis dis dis |
	e h h h h h |
	cis cis cis cis cis cis |
	h h gis gis h h |
	fis' fis fis a, gis fis |
	gis a32 h cis16 \appoggiatura cis8 h4. a8 |
	\appoggiatura a8 gis a32 h cis16 \appoggiatura cis8 h4. a8 |
	\appoggiatura a8 gis a32 h cis16 \appoggiatura cis8 h4. a8 |
	e'8. dis32 cis h8 a gis fis |
	gis e' h,4 h'' |
	\appoggiatura a gis~ gis16 cis h a gis fis e dis |
	e8.\prall dis32 e h4~ h16 e gis h |
	a8 a~ a16 gis fis e dis cis h a' |
	\appoggiatura a8 gis8. \times 2/3 {a32 h cis} \appoggiatura cis8 h4. a8 |
	\appoggiatura a8 gis8. \times 2/3 {a32 h cis} \appoggiatura cis8 h4. a8 |
	\appoggiatura a8 gis8. \times 2/3 {a32 h cis} \appoggiatura cis8 h4. a8 |
	\times 2/3 {gis16 h a} \times 2/3 {gis fis e} h,4 fis''8.\prall e16 |
	e8 gis gis gis h h |
	a a, a' a a a |
	a a gis gis gis gis |
	a a,~ a16 fis' e d cis h a gis |
	a8 e' e e e e |
	d d fis fis fis fis |
	fis fis fis fis fis fis |
	e e e e d d |
	h h' h h h h |
	a a gis gis fis fis |
	e e e e d d |
	\appoggiatura d cis d32 e fis16 \appoggiatura fis8 e4. d8 |
	\appoggiatura d cis d32 e fis16 \appoggiatura fis8 e4. d8 |
	\appoggiatura d cis d32 e fis16 \appoggiatura fis8 e4. d8 |
	\times 2/3 {cis16 e d} \times 2/3 {cis h a} h8 a4 gis8 |
	a a a a a a |
	e' e e d cis h |
	a'8. gis32 fis e8 d cis h |
	cis a e4 r8\fermata e' |
	\appoggiatura d4 cis~ cis16 fis e d cis h a gis |
	a8. gis32 a e4~ e16 a cis e |
	d8 d'~ d16 cis h a gis fis e d |
	\appoggiatura d8 cis8. \times 2/3 {d32 e fis} \appoggiatura fis8 e4. d8 |
	\appoggiatura d8 cis8. \times 2/3 {d32 e fis} \appoggiatura fis8 e4. d8 |
	a'8. gis32 fis e16 e, d' e, cis' e, h' e, |
	\times 2/3 {cis'16 e d} \times 2/3 {cis h a} e8. d32 e h'8. a32 h |
	\time 4/4 a4\fermata \bar "||" 
	gis'16 gis gis gis a a a a fis fis fis fis |
	fis fis fis fis fis fis fis fis h, h h h gis' gis gis gis |
	a a a a fis fis fis fis fis fis fis fis eis eis eis eis |
	fis fis fis fis a, a a a gis gis gis gis gis' gis gis gis |
	a a a a fis fis fis fis fis fis fis fis fis fis fis fis |
	gis gis gis gis gis gis gis gis a2~ |
	a~ a8 gis gis fis |
	e16 e e e e e e e eis eis eis eis eis eis eis eis |
	fis cis cis cis cis cis cis cis cis cis cis cis cis, cis cis cis |
	gis4 r r \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." }
	\bar "|."
	}

}
