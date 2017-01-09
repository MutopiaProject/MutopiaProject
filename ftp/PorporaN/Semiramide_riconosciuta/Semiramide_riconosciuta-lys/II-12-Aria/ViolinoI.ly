\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key e \minor
	\clef treble
	\relative c'' {
		\partial 8 r32 h cis dis |
		e8 h32 a g fis e8 g' fis fis,32 e d c h8 fis'' |
		e8 e,32 d c h a8 e'' dis8.\trill \times 2/3 {cis32 dis e} fis8 a, |
		\times 2/3 {g16 h' a g fis e} g, e'8\prall dis32 e a,16 e'8\prall dis32 e h16 e8\prall dis32 e |
		c16 e8\prall dis32 e \times 2/3 {g,16 h' a g fis e} \times 2/3 {a, h' a g fis e} \times 2/3 {h h' a g fis e} |
		c'8. h32 a h8 e, h e16. fis32 fis8.\prall e16 |
		e8 h32 a g fis e4 \mark \markup { \musicglyph #"scripts.segno" } r8 h''32 a g fis e4 |
		r8 fis32 e dis cis h4 r8 fis32 e dis cis h4 |
		r8 h'32 a g fis e4 r8 fis'32 e dis cis h4 |
		r8 h'32 a g fis e4 r8 fis,32 e dis cis h4 |
		\times 2/3 {r16 h'' a g fis e} g8.\prall fis32 g c, d e16 a,32 h c16 fis,32 g a16 d,32 e fis16 |
		g,8 d'' e e \times 2/3 {r16 d c h a g} g'4\prall |
		\times 2/3 {r16 a, g fis e d} fis'4\prall g8 h c, a' |
		h a g e d c16 h a8 d |
		g,,16 g''8\prall fis32 g h,16 g'8\prall fis32 g c,16 g'8\prall fis32 g d16 g8\prall fis32 g |
		e,16 g'8\prall fis32 g h,,16 g''8\prall fis32 g \times 2/3 {c,,16 g'' fis e d c} d8 d, |
		g, d'' d d e e f f |
		e e,32 d c h a8 c' r h'32 a gis fis e8 e, |
		r e'32 d c h a8 a, r h'32 a gis fis e8 gis' |
		a,,16 a''8 gis32 a c,16 a'8.\prall d,16 a'8.\prall e16 a8. |
		f,16 a'8. c,16 a'8. d,16 a'8. c,16 a'8. |
		f8 f, e gis' a8. g32 f e8 f, |
		e8 d16 c d8 e a,16 e'' a c h8.\prall a32 h |
		c8 a h, gis' a e,32 d cis h a4 |
		r8 a''32 g fis e d4 r8 d32 c h a g4 |
		r8 h'32 a g fis e4 r8 c32 h a g fis4 |
		r8 a'32 g fis e dis4 r8 g fis h |
		h g g, g' dis8.\prall \times 2/3 {c32 dis e} fis8 a, |
		\times 2/3 {g16 h a g fis e} g, e''8\prall dis32 e a,16 e'8.\prall h16 e8.\prall |
		c16 e8. g,16 e'8. a,16 e'8. h16 e8. |
		c16 e8. e,16 e'8. e8 e e e |
		dis fis fis fis g16 h,8.\prall dis16 h8.\prall |
		e16 h8.\prall fis'16 h,8.\prall g'8 g fis fis |
		e8. d32 c h8 c h a16 g a8 h |
		c4 e h8 a16 g a8 h |
		e,16 e'8\prall d32 e g,16 e'8\prall d32 e a,16 e'8\prall d32 e h16 e8\prall d32 e |
		c16 e8\prall d32 e \times 2/3 {g,16 h' a g fis e} \times 2/3 {a, c' h a g fis} fis8.\prall e16 |
		e4 \bar "||" r4 r8 d g h |
		r d, fis a r c, fis a |
		r d, g h h a a g |
		fis a g fis g b b b, |
		r a d fis r h, d f |
		r e g c r a, e' g |
		r a h h, c16 g'8\prall fis32 g d16 g8.\prall |
		e16 g8.\prall h,16 g'8. c,16 g'8. d16 g8. |
		g,8 g' g g cis, cis e e |
		fis a a a g g g g |
		g g g g fis fis fis fis |
		fis h,4\prall a16 gis e'8 a,4\prall g16 fis |
		g d8.\prall a'16 d,8.\prall h'16 d,8.\prall c'16 d,8.\prall |
		d'8 fis, g e' d c16 h a8 d |
		e,4\fermata e' d8 c16 h a8 d |
		g,4 r r r8 r32 h cis dis |
		e8 e,32 d c h e8 g' fis fis,32 e d c h8 fis'' |
		e e,32 d c h a8 e'' dis8.\prall \times 2/3 {cis32 dis e} fis8 a, |
		g8 h32 a g fis e4 \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "Dal Segno" }
	\bar "|."
	}

}
