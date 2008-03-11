\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key d \minor
	\clef treble
	\relative c'' {
		f16 d a' d, d' d, a' d, f d a' d, d' d, a' d,  |
		f a, a' a, f' a, a' a, f' a, a' a, f' a, a' a, |
		f' a, a' a, f' a, a' a, f' a, a' a, f' a, a' a, |
		f' a, a' a, f' a, a' a, f' f f f d d d d |
		d d d d cis cis cis cis d a a a a' a a a |
		e e e e e e e e f d a' d, d' d, a' d, |
		f d a' d, d' d, a' d, f f, f f f' f, f f |
		g' g, g g g' g, g g g' g, g g g' g, g g |
		a' a, a a d'4 c8 b16 a g8 f |
		c' b16 a g8 f c' b16 a g f e d |
		c4 b' a g |
		f8 d' c f, f4 e |
		f16 c a' c, f c a' c, f c a' c, f c a' c, |
		<f a, f>8 <f a, f> <f a, f> <f a, f> <f a, f>4 r |
		a16 a, a a f' f, f f e' e, e e fis' fis, fis fis |
		g' d d d g g, g g f' f, f f a' a, a a |
		a' a, a a gis' gis, gis gis a' e e e gis gis, gis gis |
		a' a, a a gis' gis, gis gis a' cis a e cis e cis e |
		a, h32 cis d e fis gis a8 e fis16 fis, fis fis d' d, d d |
		d' d, d d dis' dis, dis dis e' h h h e e, e e |
		e' e, e e a' a, a a b' b, b b a' a, a a |
		g' g, g g f' f, f f e' e, e e f' f, f f |
		a'8 g16 f e d cis h a4 b' |
		a8 f e cis' d b a d, |
		d4 cis f16 d a' d, d' d, a' d, |
		f d a' d, d' d, a' d, d16 e32 f g a h cis d8 d, |
		f4 e d r \bar "||"
		\time 12/8
		r8 r c' c e, f g4 \grace {a16[ b]} c8 \appoggiatura c b4. |
		a4 c8 c e, f g4 \grace {a16[ b]} c8 \appoggiatura c b4. |
		a4 c8 c4.~ c8 a16 b c8 c4.~ |
		c8 b16 a g f f8 e f g4 c8 \appoggiatura c h4 f8 |
		\appoggiatura f e4 c'8 \appoggiatura c h4 f8 e16. f32 g4 r8 r a |
		b8. c16 b8 b4 b8 d16 c b8 b b4 b8 |
		d16 c b4 a8 gis a \appoggiatura a gis4. h4 c16 d |
		c h a4 h4 c16 d c h a4 h4 c16 d |
		c16 h a4 a4 a8 a4 a,8 a4 a8 |
		a4. r4 r8 r2. \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." } |
	\bar "|."
	}

}
