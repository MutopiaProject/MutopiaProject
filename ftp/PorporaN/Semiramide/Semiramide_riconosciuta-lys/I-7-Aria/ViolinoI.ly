\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 60
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key a \major
	\clef treble
	\relative c'' { 	
		e8 a d,8. cis32 d \appoggiatura d8 cis4. a'8 |
		e32 d cis16 e32 d cis16 h8.\prall a32 h a4 fis'8.\prall e32 fis |
		e8 a, fis'8.\prall e32 fis e d cis16 e32 d cis16 h8.\prall cis32 d |
		cis16 a' gis a gis a gis a h,8. cis32 d cis8 h |
		cis16 a' gis a gis a gis a h,8. cis32 d cis8 h |
		cis16 a gis a h a h a cis a gis a h a h a |
		e' a, gis a h a h a fis'8 fis4\prall gis8 |
		a a,4 d8 cis16 e a8 h,8.\prall cis32 d |
		cis16 e a8 h,8.\prall cis32 d cis16 a' a, h h8.\prall a16 |
		a8 e a,4 e''8 e fis fis |
		e e e e a a gis gis |
		a e fis8.\prall e32 fis e8 a, fis'8.\prall e32 fis |
		e d cis16 e32 d cis16 h4 a16 a' gis a gis a gis a |
		h,8.\prall cis32 d cis8 h cis16 a' gis a gis a gis a |
		h,8.\prall cis32 d cis8 h cis16 a' gis a gis a gis a |
		h,8.\prall cis32 d cis8 h cis e e a |
		a a, a a gis16 e' dis e dis e dis e |
		<d, a' fis'>8 fis'4\prall gis8 a16 a, gis a gis a gis a |
		d8 cis4 h8 cis16 e dis e dis e dis e |
		e,4 gis'\prall a16 e dis e dis e dis e |
		e,4 gis'4\prall a8 a, a' a |
		gis gis fis fis gis a h e, |
		e4 dis\prall <gis, h e> r |
		<gis h e> r <<{gis'8 gis gis gis}\\{<e, h'>2}>> |
		gis'16 h gis e h gis' e h e,8. fis16 e d cis h |
		a4 r e''8 a d,8.\prall cis32 d |
		cis4\prall r e32 d cis16 e32 d cis16 h4\prall |
		a8 a, fis''8.\prall e32 fis e8 a, fis'8.\prall e32 fis |
		e d cis16 e32 d cis16 d4\prall cis16 a' gis a gis a gis a |
		h,8. cis32 d cis8 h cis16 a' gis a gis a gis a |
		h,8. cis32 d cis8 h cis16 a' gis a gis a gis a |
		h,8. cis32 d cis8 h cis gis'4\prall a8 |
		c,2\prall h16 e dis e dis e dis e |
		fis8 fis4\prall gis8 a16 a, gis a gis a gis a |
		d8 cis4 h8 cis16 a gis a h a h a |
		d a gis a h a h a e' a, gis a h a h a |
		fis'8\prall fis4\prall gis8 a a, fis' a, a4 gis\prall cis16 a gis a h a h a |
		d a gis a h a h a e' a, gis a h a h a |
		fis'8 fis4\prall gis8 a gis16 fis e8 a, |
		a4 gis <a cis e> <a cis e> |
		<a cis e> <a cis e> r16 a' gis a gis a gis a |
		h,8. cis32 d cis8 h cis16 a' gis a gis a gis a |
		h,8. cis32 d cis8 h cis16 e a8 h,8. cis32 d |
		cis16 e a8 h,8. cis32 d cis16 a' a, h h8.\prall a16 |
		a4 r \cadenzaOn \cadenzaOff
		\time 6/4
		\key a \minor
		\tempo 4 = 100
		e'8.\prall d32 e f4 e \appoggiatura e d2\prall c4 |
		h8 f'e a, h gis a f' e a, h gis |
		a8. gis32 a h4 r e8. d32 e f4 e |
		\appoggiatura e d2 c4 h8 f' e a, h gis |
		a f' e a, h gis a4 r r |
		g'8 g g g g g a a a a a a |
		e e e e d d c c c c c c |
		fis4 fis2\prall g4 g, fis'~ |
		fis e dis e e e |
		\times 2/3 {e8 fis e} \times 2/3 {d e d} \times 2/3 {c d c} \times 2/3 {h c h} \times 2/3 {a h a} \times 2/3 {g a g} |
		fis4 dis'2\prall e4 e e |
		g8 g, g g g g h,4 r r |
		R1. \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." } |
	\bar "|."
	}

}
