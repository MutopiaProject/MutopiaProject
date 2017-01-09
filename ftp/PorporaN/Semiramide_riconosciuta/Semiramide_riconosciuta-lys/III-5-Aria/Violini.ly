\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80
	\set Staff.instrumentName="Violini"
	\set Staff.midiInstrument="violin"
	\key c \major
	\clef treble
	\relative c''' {
		g8 c h8.\prall a32 h c8 g4 a8 |
		f8.\prall e32 f g8 f e16 g c8 c c |
		h16 a g8 g g e16 g c8 c c |
		h16 a g8 g g e8.\prall d32 e f8.\prall e32 f |
		\appoggiatura a8 g f16 e \appoggiatura g8 f e16 d e8.\prall d32 e f8.\prall e32 f |
		\appoggiatura a8 g f16 e \appoggiatura g8 f e16 d e,16 c' g' c, g' c, g' c, |
		f, c' a' c, a' c, a' c, g, d'' h' d, h' d, h' d, |
		e c' e, c' e, c' e, c' d, c' d, c' d, h' d, h' |
		c, e c e e, c' e, c' f, a f a g8 g, |
		c c'' h8. a32 h c8 g4 a8 |
		f8.\prall e32 f g8 f e16 g c8 c c |
		h16 a g8 g g e16 g c8 c c |
		h16 a g8 g g c,,16 c' e c e c e c |
		e, c' g' c, g' c, g' c, f, c' a' c, a' c, a' c, |
		g, d'' g d g d g d e, c' e c e c e c |
		e, c' g' c, g' c, g' c, f, c' a' c, a' c, a' c, |
		d, d' a' d, a' d, a' d, h8. a32 h c8. h32 c |
		d8 c16 h \appoggiatura d8 c h16 a h8. a32 h c8. h32 c |
		d8 c16 h c8 h16 a h' g h, g' h, g' h, g' |
		a, g' a, g' a, fis' a, fis' g, h g h h, g' h, g' |
		c, e' c e d8 d, h'16 d g8 g g |
		fis16 e d8 d d h16 d g8 g g |
		fis16 a d8 d d h16 g h, g' h, g' h, g' |
		a, g' a, g' a, fis' a, fis' g8 g, h8. a32 h |
		c8 c' h8. a32 h c8 g4 a8 |
		b8. a32 b c8 b a h4 c8 |
		f,8.\prall e32 f g8 f e16 g c8 c c |
		h16 a g8 g g e16 g c8 c c |
		h16 a g8 g g c,,16 c' e c e c e c |
		e, c' g' c, g' c, g' c, f, c' a' c, a' c, a' c, |
		g, d'' g d g d g d e, c' e c e c e c |
		e, c' g' c, g' c, g' c, f, c' a' c, a' c, a' c, |
		g, d'' g d g d g d e8.\prall d32 e f8.\prall e32 f |
		\appoggiatura a8 g f16 e \appoggiatura g8 f e16 d e8. d32 e f8. e32 f |
		g8 f16 e f8 e16 d c'8 h16 a g8 c, |
		c4 h e8. d32 e f8. e32 f |
		\appoggiatura a8 g f16 e \appoggiatura g8 f e16 d e8. d32 e f8. e32 f |
		\appoggiatura a8 g f16 e \appoggiatura g8 f e16 d e c' e, c' e, c' e, c' |
		d, c' d, c' d, h' d, h' c, e c e e, c' e, c' |
		f, a f a g8 g, e''16 g c8 c c |
		h16 a g8 g g e16 g c8 c c |
		h16 a g8 g g e16 c' e, c' e, c' e, c' |
		d, c' d, c' d, h' d, h' c, e c e e, c' e, c' |
		f, a f a g8 g, c4 r \bar "||"
		e'8 a gis4\prall a8 e4 f8 |
		d8. c32 d e8 d c e4 a8 |
		d,8. c32 d e8 d c16 e a8 a a |
		gis16 fis e8 e e c16 e a8 a a |
		gis16 fis e8 e e a,,16 c' a' c, a' c, a' c, |
		fis, h fis' h, fis' h, fis' h, g h g' h, g' h, g' h, |
		fis h fis' h, fis' h, fis' h, g'8.\prall fis32 g a8.\prall g32 a |
		\appoggiatura c8 h a16 g \appoggiatura h8 a g16 fis g8. fis32 g a8. g32 a |
		\appoggiatura c8 h a16 g \appoggiatura h8 a g16 fis g e g, e' g, e' g, e' |
		fis, e' fis, e' fis, dis' fis, dis' e, e' dis e g, e' g, e' |
		a, e' a, e' h e h e c e c e g, e' g, e' |
		a, c a c h8 h, e4 r \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." } |
	\bar "|."
	}

}
