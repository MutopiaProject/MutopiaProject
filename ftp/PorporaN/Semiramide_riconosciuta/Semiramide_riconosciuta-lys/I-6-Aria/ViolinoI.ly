\new Staff  {
	\time 3/8
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 60 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key c \major
	\clef treble
	\relative c''' {
		\partial 8 g8 |
		e c g |
		e c g'' |
		e c g |
		e c c' |
		d16.\prall c32 d16 e f32 e d16 |
		e32 f g16 c,8. e16 |
		d16.\prall c32 d16 e f32 e d16 |
		e32 f g16 c,4\prall |
		h32 c d16 g,4 |
		e32 f g16 c,4 |
		h32 c d16 g,8 r32 e'' f g a8 a g |
		fis32 g a16 g8 f |
		e32 f g16 f8 e |
		dis32 e fis16 e8 d |
		cis32 d e16 d8 c |
		h c8.\prall d32 e |
		f8 \appoggiatura e d4 |
		\times 2/3 {e16 d c} \times 2/3 {g' f e} \times 2/3 {a g f} |
		\times 2/3 {e d c} \times 2/3 {g' f e} \times 2/3 {a g f} |
		c'16. c,32 d8.\prall c16 |
		c8 r g' |
		e c g |
		e c g'' |
		e c g |
		e c c'~ |
		c h8.\prall a32 h |
		c,8 g'' c~ |
		c h4\prall |
		c8 c, a' |
		h,8 c4\prall |
		d8 \grace { e16[ f]} g4~ |
		g8 f16 e d c |
		h8 c4\prall |
		d16 g f e d c |
		h c32 d c8 fis, |
		g,8 r r32 e'' f g |
		a8 a g |
		fis32 g a16 g8 f |
		e32 f g16 f8 e |
		dis32 e fis16 e8 d |
		cis32 d e16 d8 c~ |
		c fis4 |
		<g h, d, g,>8 c,, d |
		g, g g |
		g g g |
		<d' h' g'> fis'4\prall |
		h32 c d16 g,8. h16 |
		a16.\prall g32 a16 h c32 h a16 |
		h32 c d16 g,4\prall |
		fis32 g a16 d,4 |
		\times 2/3 {h16 a g} \times 2/3 {d' c h} \times 2/3 {e d c} |
		\times 2/3 {h a g} \times 2/3 {d' c h} \times 2/3 {e d c} |
		g'16. g,32 a8. g16 |
		g8 d h |
		g r g'' |
		e c d |
		h g g' |
		e c c'~ |
		c h4 |
		c8 c,4~ |
		c8 h8. a32 h |
		c,8 g'' g |
		c, a' a |
		d, d d |
		c f f |
		f g g |
		g c, a' |
		d, e g |
		g,,4 f''8~ |
		f e d |
		e c'4~ |
		c8 h4~ |
		h8 a4~ |
		a8 g4~ |
		g8 f4~ |
		f8 e4 |
		d8 \appoggiatura c h4 |
		c,8 c c |
		c c c |
		<e c' e> h''4\prall |
		c8 \times 2/3 {r16 c, d} \times 2/3 {e f g} |
		a8 a g |
		fis16 g32 a g8 f |
		e16 f32 g f8 e |
		dis32 e fis16 e8 d |
		cis32 d e16 d8 c |
		h8 c fis, |
		g g, r |
		r r r32 e'' f g |
		a8 a g |
		fis16 g32 a g8 f |
		e16 f32 g f8 e |
		dis16 e32 fis e8 d |
		h c8. d32 e |
		f8 d4\prall |
		\times 2/3 {e16 d c} \times 2/3 {g' f e} \times 2/3 {a g f} |
		\times 2/3 {e d c} \times 2/3 {g' f e} \times 2/3 {a g f} |
		c'16. c,32 \appoggiatura e16 d8. c16 |
		c8 r \bar "||" e |
		c a e |
		c a e'' |
		c a e |
		c a a'' |
		h16.\prall a32 h16 c d32 c h16 |
		c32 h a16 e8 r16 a, |
		h16.\prall a32 h16 c d32 c h16 |
		a8 \times 2/3 {r16 c d} \times 2/3 {e fis gis} |
		a8 f e |
		dis16 e32 fis e8 d |
		cis16 d32 e d8 c |
		h16 c32 d c8 h |
		a16 b32 c b8 a |
		gis8 a a' |
		fis4.\prall |
		g8 a h |
		c,, h ais |
		h4. |
		R |
		r8 r\fermata \bar "||" g'' |
		e c g |
		e c g'' |
		e c g |
		e c c' |
		d16.\prall c32 d16 e f32 e d16 |
		e32 f g16 c,8. e16 |
		d16.\prall c32 d16 e f32 e d16 |
		e32 f g16 c,4 |
		h32 c d16 g,4 |
		e32 f g16 c,4 |
		h32 c d16 g,8 g'' \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." } |
	\bar "|."
	}

}
