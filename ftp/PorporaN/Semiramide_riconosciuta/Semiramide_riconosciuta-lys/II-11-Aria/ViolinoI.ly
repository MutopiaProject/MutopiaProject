\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key f \major
	\clef treble
	\relative c'' {
		\partial 8 c8 |
		d16 e f8 f f e16 d c4\prall d16 e |
		f8 f f f e16 d c4\prall a32 b c16 |
		d8 d d b' c, c c a' |
		b,8.\prall a32 b c8 b <a f a,> c c c |
		<f c f,> c c c <f a, f> c c c |
		f4.\prall e16 d \appoggiatura d c8 b16 a \appoggiatura c b8 a16 g |
		f'4.\prall e16 d \appoggiatura d c8 b16 a \appoggiatura c b8 a16 g |
		\grace {f'[ g]} a8 g16 f e d c b a f' f, g g8.\prall f16 |
		f4 r8 c' d16 e f8 f f |
		e16 d c4\prall d16 e f8 f f f |
		e16 d c4.\prall d8 d16 d d8 b' |
		c, c c a' b,8.\prall a32 b c8 b |
		a f' e16 d c h  c8 f e16 d c h |
		c8 a' g16 f e d c4 d\prall |
		c d16 e f8 \appoggiatura f e4 d16 e f8 |
		e a g16 f e d c4 h\prall |
		c16 e g8 d16 e f8 \appoggiatura f e4 d16 e f8 |
		e16 c f d g8 c, g,4 d''8.\prall c16 |
		c8 c c c c a16 b c8 d |
		es d4 c8 b16 c d8 a16 b c8 |
		b16 c d8 a16 b c8 b8 d d d |
		g d d d g d d d |
		g4. f16 es d8 c16 b c8 b16 a |
		b8 g' g g, g4 fis8 r32 d' e fis |
		g8 d d d g d d d |
		g4.\prall f16 es d8 c16 b \appoggiatura d8 c b16 a |
		g'4. f16 es d8 c16 b \appoggiatura d8 c b16 a |
		b16 g d' b g'8 g, g8. \times 2/3 {fis32 g a} a8.\prall g16 |
		g4 r8 g a16 h c8 c c |
		d16 e f8 f f e16 d c4\prall d16 e |
		f8 f f f e16 d c8 d16 e f8 |
		e16 d c8 d16 e f8 e16 d c8 r8 r32 a b c |
		d8 d d b' c, c c a' |
		b,8.\prall a32 b c8 b a f' f4~ |
		f16 e d c b8 a g c, r4 |
		b'8 b16 b b8 b e b b b |
		e4. f8 g16 f e d c8 b |
		a c c c f c c c |
		f c c c f4.\prall e16 d |
		c8 b16 a \appoggiatura c8 b a16 g f'4.\prall e16 d |
		c8 b16 a \appoggiatura c8 b a16 g f'8 e16 d c8 f, |
		f4 e\prall f8 c' c c |
		<f a, f> c c c <f a, f> c c c |
		a' g16 f e d c b a f' f, g g8. f16 |
		f4 r \bar "||" f'4 r8 r16 f |
		g4 e f8 r16 f g8.\prall f32 g |
		a4 r8 r16 a b4 g |
		a8 r32 c, d e f2 e4 |
		f8 c32 b a g f4~ f e\prall |
		f8 c' f f d d g g |
		g g g g e e e e |
		f f d' d e, e c' c |
		d, d h' h c, e e e |
		a e e e a8. g32 f e8 a |
		a a gis gis a f e16 d c h |
		a8. h16 h8.\prall a32 h c8 f e d |
		c4 r r r8\fermata \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." }
	\bar "|."
	}

}
