\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 70 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key c \major
	\clef treble
	\relative c'' {
		\partial 8 e16. f32 |
		g8 c, \appoggiatura d16 c32 h c16 \appoggiatura d16 c32 h c16  d8\prall c g'32 e d c g' e d c |
		d8\prall c \appoggiatura h'16 a32 gis a8. \grace {a16[ h]} c32 h a8. c32 h a16 a32 g fis16 |
		g8.\prall a32 h c h a16 a32 g fis16 g8. a32 b a g f16 e32 d cis16 |
		\appoggiatura cis8 d8 f32 g a16 g32 f e16 d32 c h16 c8 f4\prall e16 d |
		\appoggiatura f16 e8 d16 e \appoggiatura g16 f8 e16 d c8.\prall \times 2/3 {h32 c d} d8.\prall c16 |
		c'8. h32 a g16 e d c g,4 \grace {h'16[ c]} d8.\prall c16 |
		c8 g c, e'16. f32 g8 c, \appoggiatura d16 c32 h c16 \appoggiatura d16 c32 h c16 |
		d8 c c, c' d c g' h\prall |
		c c, a' a d, d d c |
		c h g' c, g g, r r32 d'' e fis |
		g8. a32 b a g f16 e32 d cis16 d8 d, r e' |
		f32 g a8. f32 g a16 cis,8 d d, r4 |
		f'32 g a8. f32 g a16 h,8\prall c c, r d' |
		e32 f g8. e32 f g16 h,8 c c, r d' |
		e g g h c c a a |
		\times 2/3 {g,,16 g' a} \times 2/3 {h d c} \times 2/3 {d h c} \times 2/3 {d e f} g8 g,4 a16 b |
		a8 f' f a, h g' g h, |
		c f4\prall e16 d \appoggiatura f8 e d16 e \appoggiatura g8 f e16 d |
		c4 d8 h' c8 c \times 2/3 {c16 h a} \times 2/3 {a g fis} |
		\appoggiatura fis8 g4 r\fermata h32 c d8. c8 h |
		c e, e c \times 2/3 {g,16 g' a} \times 2/3 {h d c} d16 fis8. |
		\appoggiatura fis8 g4 r\fermata h32 c d8. c8 h |
		c h g g g e e c |
		\times 2/3 {g,16 g' a} \times 2/3 {h d c} \times 2/3 {d e f} \times 2/3 {g a h} c8 g,4 a16 b |
		a8 f' f32 e d16 c32 h a16 h8 g' g32 f e16 d32 c h16 |
		c8 a'4 g16 fis g8 f4 e16 d |
		\appoggiatura f8 e d16 e \appoggiatura g8 f e16 e c8. d16 d8.\prall c16 |
		c'8. h32 a g16 e d c g,4 r8 r32 g'' a h |
		c8 c \times 2/3 {c16 h a} \times 2/3 {a g fis} g8. a32 h c h a16 a32 g fis16 |
		g8. a32 b a g f16 e32 d cis16 d8.\prall \times 2/3 {f32 g a} g f e16 d32 c h16 |
		\times 2/3 {c d e} \times 2/3 {f g a} \times 2/3 {g f e} \times 2/3 {d c h} c'8. h32 a g16 e d c |
		g,4 \grace {h'16[ c]} d8.\prall c16 c4 r\fermata \bar "||" |
		\time 3/8
		e16.\prall d32 e8 f |
		\appoggiatura e d4 e8 |
		c16. d32 e8 a, |
		gis a f' |
		gis, a r |
		e' e8. f32 g |
		f8 cis d |
		a e'8. f32 g |
		f e d16 d8 r |
		d d8.\prall e32 f |
		e8 h c |
		g d'8. e32 f |
		e d c16 c8 r |
		e32 f g16 c,8 b |
		a cis d~ |
		d16 e d8 c |
		h dis e~ |
		e16. f32 e8 d |
		c e f |
		r d g |
		\appoggiatura f e4 f8 |
		\appoggiatura e d4 e8 |
		\appoggiatura d8 c4 e8~ |
		e d16 c h a |
		a' f \appoggiatura e8 dis8. e16 |
		\appoggiatura a,8 gis4 r8 \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." } |
	\bar "|."
	}

}
