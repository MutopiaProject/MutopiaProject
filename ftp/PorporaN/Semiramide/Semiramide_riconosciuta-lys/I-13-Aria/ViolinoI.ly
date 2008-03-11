\new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key f \major
	\clef treble
	\relative c''' {
		\partial 4 a16 b c8 |
		c4 f, g16 a b8 |
		a8. b16 \appoggiatura a4 g2\prall |
		f4 c g'8. a32 b |
		a16 f c8 g'4.\prall a16 b |
		a f c8 g'4.\prall a16 b |
		\times 2/3 {a8 g a} \times 2/3 {b a b} \times 2/3 {c b c} |
		d4 e, f |
		b16 a g8 \appoggiatura f4 g2 |
		f4 r a16 b c8 |
		d4 f, g16 a b8 |
		a8. b16 \appoggiatura a4 g2 |
		f8.\prall e32 f g4 r |
		a16 b c8 b16 a8. g16 f8. |
		a16 b c8 b16 a8. g16 f8. |
		g16 a b8 a16 f8. g16 e8. |
		f4 c as' |
		\appoggiatura as8 g4. b8 as8. g16 |
		as16 g f8 f4. as8 |
		\appoggiatura as g4. b8 as8. g16 |
		as g f8 f4. c'8 |
		\appoggiatura c h4. c8 d8. f,16 |
		\appoggiatura f4 e2 c'4 |
		\appoggiatura c h2 f4 |
		e8. f16 g8. a16 b a g8 |
		a4 h2 |
		c4 h16 a8. g16 f8. |
		e16 d c8 d4 h' |
		c h8. a16 g8. f16 |
		e16 d c8 g,4. g''8 |
		g4 c, d16 e f8 |
		e8. f16 \appoggiatura e4 d2 |
		c4 g d'8. e32 f |
		e16 c g8 d'4.\prall e16 f |
		e c g8 d'4. e16 f |
		e8 g16 c, d4.\prall c8 |
		c4 r a'16 b c8 |
		c4 f, g16 a b8 |
		a8. b16 \appoggiatura a4 g2 |
		f4 c g'16 a b8 |
		a8. b16 \appoggiatura a4 g2 |
		f8. e32 f g4 r |
		b16 c d8 c16 b8. a16 g8. |
		a16 b c8 b16 a8. g16 f8. |
		g16 a b8 a16 f8. g16 e8. |
		f4 c as'16 b c8 |
		c4 g8. b16 as8. g16 |
		as16 g f8 f4 as16 b c8 |
		c4 g8. b16 as8. g16 |
		as16 g f8 f4 a\prall |
		b f h |
		\appoggiatura h c4. b16 a b8 a16 g |
		a8. b32 c b8 a g f |
		<e c>4 r\fermata g8. a32 b |
		a16 f c8 g'4. a16 b |
		a f c8 g'4. a16 b |
		\times 2/3 {a8 g a} \times 2/3 {b a b} \times 2/3 {c b c} |
		d4 e, f |
		b16 a g8 \appoggiatura a4 g2 |
		f8 c g'4.\prall a16 b |
		a f c8 g'4.\prall a16 b |
		a f c8 g'4.\prall a16 b |
		\times 2/3 {a8 g a} \times 2/3 {b a b} \times 2/3 {c b c} |
		d4 e, f |
		b16 a g8 c,,4 r8 a''32 b c16 |
		c4 f, g16 a b8 |
		a8. b16 \appoggiatura a4 g2\prall |
		f4 c g'8. a32 b |
		a16 f c8 g'4.\prall a16 b |
		a16 f c8 g'4. a16 b |
		\times 2/3 {a8 g a} \times 2/3 {b a b} \times 2/3 {c b c} |
		d4 e, f |
		b16 a g8 g2\prall |
		f4 r r \bar "||" |
		\time 4/4
		\tempo 4 = 80
		a8^\markup{Allegro} a, a' a, b' b, a' a, |
		b' b, b' b, a'16 a, a a a' a, a a |
		e' e, e e e' e, e e f' f, f f a' a, a a |
		e' e, e e e' e, e e f a d f a d, f a |
		d a d a f d f d f8 f e e |
		e e e a a gis gis gis |
		a a, r4 g'2 |
		f e |
		f8 a a a a a a b |
		b a a gis gis gis gis gis |
		gis gis gis gis a a a a |
		a a, dis, dis e4 r |
		r2 r4\fermata \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." }
	\bar "|."
	}

}
