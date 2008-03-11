\new Staff  {
	\time 3/8
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key f \major
	\clef treble
	\relative c'' {
		\partial 8 r32 c d e |
		f8 e f d\prall c f |
		b,\prall a f' |
		\appoggiatura a, g4\prall f8 |
		a'32 h c16 c4 |
		a32 h c16 c4 |
		g16 b a f g e |
		f8 c4\prall |
		a32 h c16 c4 |
		a32 h c16 c4 |
		g16 b a f g e |
		<f a f'>8 e' f |
		d\prall c f |
		b,\prall a f' |
		\appoggiatura a, g4\prall f8 |
		f'32 g a16 a8 a |
		g h, c |
		f32 g a16 a8 a |
		g h, c |
		f \appoggiatura e16 d4 |
		e8 h c |
		f h, c |
		g' h, c |
		a' h8. a32 h |
		c8 c, f |
		e32 d c16 d4\prall |
		c8 r c |
		f e f |
		d\prall c f |
		b,\prall a f' |
		\appoggiatura a,16 g4 f8 |
		a'32 h c16 c4 |
		a32 h c16 c4 |
		g16 b a f g e |
		f8 e f |
		d c f |
		b, a f' |
		\appoggiatura a,16 g4\prall f8 |
		f'32 g a16 a8 a |
		g h, c |
		f32 g a16 a8 a |
		g h, c |
		d g, f' |
		e h c |
		d g, f' |
		e h c |
		f h, c |
		g' h, c |
		a' g fis |
		\appoggiatura fis g4. |
		e4. |
		d16 g f e d c |
		d8 \appoggiatura c h4\prall |
		d16 g f e d c |
		f8 \appoggiatura e d4 |
		e8 f g |
		a h, c |
		f \appoggiatura e16 d4\prall |
		e8 f g |
		a h c |
		d, \appoggiatura c16 h4\prall |
		e32 fis g16 g4 |
		e32 fis g16 g4 |
		d16 f e c d h |
		c8 g4\prall |
		e'32 fis g16 g4\prall |
		e32 fis g16 g4\prall |
		d16 f e c d h |
		c8 c, r32 c' d e |
		f8 e f |
		d c f |
		b, a f' |
		\appoggiatura a,16 g4 f8 |
		f' e f |
		d c f |
		b, a f' |
		\appoggiatura a,16 g4 f8 |
		f'32 g a16 a8 a |
		g h, c |
		f32 g a16 a8 a |
		g h, c |
		d32 e f16 f8 f |
		e[ gis,]a |
		b32 c d16 d8 d |
		c e, f |
		b g c |
		a a'4\prall |
		g8 h, c |
		f a, b |
		e gis, a |
		d fis, g |
		c e, f |
		b g c |
		a f'4\prall |
		b,8 \appoggiatura a16 g4 |
		a8 f'4 |
		b,8 \appoggiatura a16 g4 |
		f'8 e16 d c b |
		a8 f'4\prall |
		b,16 a g8 c |
		a f'4 |
		b,16 a g8 c |
		f32 g a16 a8 a |
		g h, c |
		f32 g a16 a8 a |
		g h, c |
		d32 e f16 f8 f |
		e gis, a |
		b32 c d16 d8 d |
		c e, f |
		b \appoggiatura a16 g4 |
		a8 f'8. e32 f |
		d16 b' c, b' b, b' |
		c, a' b, a' a, a' |
		b, g' a, g' g, g' |
		a,8 f'8.\prall e32 f |
		b,16 a g8 c |
		<a f> f'8. e32 f |
		b,16 a g8 c |
		f, r \bar "||" a |
		d cis d |
		b a d |
		b a f' |
		cis d8. cis32 d |
		e8 a, a'~ |
		a g16 f e d |
		cis8 d8.\prall cis32 d |
		e8 a, r |
		d32 e f16 f8 f |
		e gis, a |
		d32 e f16 f8 f |
		e gis, a |
		d8 h e |
		c gis a |
		d gis, a |
		e' gis, a |
		f' e dis |
		\appoggiatura dis e4. |
		f8 e dis |
		\appoggiatura dis e4. |
		gis |
		a8 a, f' |
		d16 c h8 e |
		c e a |
		d,16 c h8 e |
		a, r \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." }
	\bar "|."
	}

}
