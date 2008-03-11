\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key d \major
	\clef treble
	\relative c'' {
		<fis a, d,>8. e32 fis a16 a, g' a, <fis' a, d,>8. e32 fis a16 a, g' a, |
		<<{fis'8 fis fis fis}\\{<a, d,>2}>> <fis' a, d,>4 fis16 d' fis, d' |
		e, cis' e, cis' d, h' d, h' cis, a' cis, a' h, g' h, g' |
		a, fis' a, fis' g, e' g, e' <fis a, d,>8. e32 fis a16 a, g' a, |
		<fis' a, d,>8. e32 fis a16 a, g' a, fis' a fis d e8.\prall d16 |
		d4 r <fis a, d> r |
		a,8 a' h, h' <a fis d,>4 d,16 h' d, h' |
		cis, a' cis, a' h, g' h, g' a, fis' a, fis' g, e' g, e' |
		<a, fis d>4 <a fis d> <a fis d> <a fis d> |
		fis' e fis h |
		e,8 fis a16 a, a' a, <fis' a, d,>8. e32 fis a16 a, a' a, |
		fis'8 d' fis, d' e, cis' e, cis' |
		gis, h' gis h cis cis a a |
		gis gis gis gis a a a a |
		gis gis gis gis a e e e |
		cis16 e d cis d e fis gis a8 e fis cis' |
		d, h' cis, a' h, h' h, gis' |
		a a h h cis h a fis |
		cis4 h cis8 fis e a |
		cis,4 h <<{e8 e e e}\\{<cis a>2}>> |
		<a cis e>16 a cis e a e a h cis e, a e h'8.\prall a16 |
		a4 r <e cis a> r |
		e,8 e' fis, fis' e, e' fis, fis' |
		e16 a e cis e a e cis <fis d d,>4 d16 h' d, h' |
		<a cis,>4 <g h,> <fis a,> <e g,> |
		<<{fis fis}\\{<a, d,>2}>> <fis' a, d,>4 r |
		<fis a, d,> r a h |
		e,8 fis a, a' a, a' a, a' |
		h, h' h, h' gis, h' gis, h' |
		a, cis' a, cis' d fis, fis fis |
		e e e e fis fis fis fis |
		e e e e <fis a, d,>4 fis16 d' fis, d' |
		<cis e,>4 <h d,> <a cis,> <g h,> |
		<fis a,> <e g,> fis,8 g a h |
		cis d e fis g fis16 e fis8 d |
		e4 cis d8 a' fis d |
		a,4 cis'\prall <fis a, d,>8. e32 fis a16 a, g' a, |
		<fis' a, d,>8. e32 fis a16 a, g' a, <<{fis'8 fis fis fis}\\{<a, d,>2}>> |
		<d, a' fis'>16 a' d fis a d, fis a d8 d, e8.\prall d16 |
		d4 r \bar "||" r2 |
		fis8 fis d d e e cis cis |
		d4 fis16 d' fis, d' <cis e,>4 <h d,> |
		<a cis,> <g h,> ais,8 fis' h d, |
		cis ais' h d, cis16 fis cis ais cis fis cis ais |
		h h' fis dis fis h fis dis e g e h e g e h |
		a a' e cis e a e cis d fis d a d fis d a |
		h,4 e'16 gis h8 r4 e,16 a cis8 |
		r4 d,16 fis a8 r4 d,16 gis h8 |
		r4 cis,16 eis gis8 a,16 fis gis a h cis dis eis |
		fis8 fis, fis' fis, fis'16 gis a h cis8 fis, |
		cis,4 r r2 \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." } |
	\bar "|."
	}

}
