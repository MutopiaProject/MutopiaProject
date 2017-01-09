\new Staff  {
	\time 12/8
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 90
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key a \major
	\clef treble
	\relative c'' {
		r4 r8 a4 h8 cis h a cis4 d8 |
		e d cis fis4 fis8 e d cis h cis d |
		cis a' cis, h4\prall cis16 d cis8 a' cis, h4\prall cis16 d |
		cis4.\prall dis\prall <<{e2.}\\{e8 h4 cis8 dis4}>> |
		<<{e2.}\\{e8 h4 cis8 dis4}>> e8 fis e e fis e |
		e fis e e fis gis a4.~ a8 gis fis |
		e d cis d cis h a'4.~ a8 gis fis |
		e d cis d cis h cis a' gis fis e d |
		cis4.\prall h\prall a8 e cis a4. |
		r4 r8 a'4 h8 cis h a d4 d8 |
		cis8 h a gis a h a h cis h cis d |
		cis h a h cis d cis4.\prall e\prall |
		a8 gis fis \appoggiatura fis e4 d8 cis h a e' d cis |
		<<{e2. e}\\{cis4 h8 cis dis4 e8 h4 cis8 dis4}>> |
		e8 gis gis gis gis gis gis gis gis gis gis gis |
		fis fis fis fis fis fis <<{e2.}\\{e8 h4 cis8 dis4}>> |
		e8 e e e e e e e e e e e |
		e e e dis dis dis <<{e2.}\\{e4 h8 cis dis4}>> |
		<<{e2. e}\\{e8 h4 cis8 dis4 e8 h4 cis8 dis4}>> |
		e8 dis cis cis h ais h cis h h cis h |
		h cis h h cis dis e4.~\prall e8 dis cis |
		h a gis a gis fis e'4.~\prall e8 dis cis |
		h a gis a gis fis gis e' dis cis h a |
		gis4. fis e'4 dis16 cis h4 e8 |
		e4. dis <<{e2.}\\{e8 h4 cis8 dis4}>> |
		<<{e2.}\\{e8 h4 cis8 dis4}>> e4 dis32 cis h16 cis8 e, a |
		gis4. fis e gis4 a8 |
		h a gis e'4 fis8 gis fis e gis gis gis |
		fis fis fis e e e e e e gis a h |
		a e fis gis a h a <<{e4 fis8 gis4}\\{a,4~ a4.~}>> |
		<<{a'8 e4 fis8 gis4}\\{a,2.}>> a'8 a a a a a |
		a a a a a a a gis fis fis e d |
		cis h a gis a h <<{s8 e4 fis8 gis4}\\{a,4.~ a}>> |
		a'8 cis cis cis cis cis cis cis cis cis cis cis |
		d d, d d e fis e d cis h cis d |
		cis <<{e4 fis8 gis4}\\{a,4~ a4.}>> a'8 e e fis gis a |
		gis <<{e4 e4. e2.}\\{h4 cis8 dis4 e8 h4 cis8 dis4}>> |
		e8 fis e e fis e e fis e e fis gis |
		a4.~ a8 gis fis e d cis d cis h |
		a'4.~ a8 gis fis e d cis d cis h |
		cis e d cis h a h4. gis\prall |
		a8 h a a h a a h a a h a |
		a'4.~ a8 gis fis e d cis d cis h |
		cis a' gis fis e d cis4. h |
		<<{a8 e'4 fis8 gis4 a8 e4 fis8 gis4}\\{a,2.~ a}>> |
		a'4.~ a8 gis fis e d cis d cis h |
		a'4.~ a8 gis fis e d cis d cis h |
		cis a' gis fis e d cis4. h\prall |
		a \bar"||" r4 r8 r4 r8 fis'4 gis8 |
		a gis fis h4 h8 a gis fis eis fis gis |
		fis gis a gis a h a gis fis ais4. |
		h8 h,4~ h cis8 d cis h d4 e8 |
		fis e d g4 g8 fis e d cis d e |
		d cis h cis d e d cis h h cis h |
		h cis h h cis h h cis h h cis dis |
		e16 fis g4~ g8 fis e d cis d e d cis |
		d d d cis cis cis d d d eis, eis eis |
		fis2. r |
		R1. \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." } |
	\bar "|."
	}

}
