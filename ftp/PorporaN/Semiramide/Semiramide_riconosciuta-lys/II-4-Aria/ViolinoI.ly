\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key b \major
	\clef treble
	\relative c'' {
		\partial 8 f8 |
		f b, b8.\prall a32 b c8 f,16 g f es d c |
		b4 b'8.\prall a32 b c8 f,16 g f es d c |
		b4 b'8. a32 b c8 f,16 g f es d c |
		b4 b'8.\prall a32 b a16 f' e f a f e f |
		c f e f c f a, f' f,4 r\fermata |
		\time 3/8 \tempo 4 = 60
		g'8 g g |
		g16 f e8 f |
		es es es |
		es16 d cis8 d |
		g32 f es16 h8 c |
		es32 d c16 a8 b |
		c32 d es16 g,8 a |
		b, d'32 es f16 d32 es f16 |
		f,8 a4 |
		b,8 d'32 es f16 d32 es f16 |
		f,8 a4 |
		b16 d f b c, a' |
		b8 d, f |
		b, d, f |
		b, r r \fermata |
		d'32 es f16 b,8 b |
		b8.\prall a32 b c8 |
		\appoggiatura b c c c |
		c8.\prall b32 c d8 |
		\appoggiatura cis d d d |
		d8.\prall c32 d es8 |
		e e e |
		f e16 d c b |
		a8 g e' |
		f a32 b c16 a32 b c16 |
		c,,8 e'4 |
		f,8 a'32 b c16 a32 b c16 |
		c,,8 e'4 |
		f16 e d c b a |
		b8 g c |
		f16 e d c b a |
		b8 g c |
		a'32 b c16 f,8 f |
		f8. e32 f g8 |
		\appoggiatura fis g \appoggiatura fis g \appoggiatura fis g |
		g8.\prall f32 g a8 |
		\appoggiatura gis a a a |
		a8.\prall g32 a b8 |
		d16 c b a g f |
		e8 f b |
		a32 g f16 g4\prall |
		\time 4/4 \tempo 4 = 80
		f8 r16 as, g f es d c4 c'8.\prall h32 c |
		d8 g,16 as g f es d c4 c'8.\prall h32 c |
		d8 g,16 as g f es d c4 c'8. h32 c |
		d8 g,16 as g f es d c4 g'' |
		a8 f,16 g f es d c b4 f'' |
		g f f g |
		a,8 f' e16 d c b a8 d c16 b a g |
		f4 r r2\fermata |
		\time 3/8 \tempo 4 = 60
		d'32 es f16 b,8 b |
		b8.\prall a32 b c8 |
		\appoggiatura b c c c |
		c8. b32 c d8 |
		\appoggiatura cis d d d |
		d8.\prall c32 d es8 |
		g16 f es d c b |
		a8 b d |
		d c a' |
		b d,32 es f16 d32 es f16 |
		f,8 a'4\prall |
		b,8 d32 es f16 d32 es f16 |
		f,8 a'4\prall |
		b8 b,8.\prall a32 b |
		b'8 b,8. a32 b |
		b'8 b, es |
		d16. es32 \appoggiatura d8 c4\prall |
		f8 es16 d c b |
		f8 a4 |
		b,8 d'32 es f16 d32 es f16 |
		\times 2/3 {a,16 b a} \times 2/3 {c d c} \times 2/3 {es f es} |
		d b' b8. a32 b |
		\times 2/3 {a16 c b} \times 2/3 {a g f} \times 2/3 {es d c} |
		b'16. a32 g16. f32 es16. d32 |
		es8 c f |
		b, \bar "||" r r |
		d b' a |
		b b, r16 b' |
		c8 a r16 a |
		b8 g r16 g |
		a8 fis r16 fis |
		g8 d b' |
		a a,4 |
		\times 2/3 {g16 a g} \times 2/3 {b c b} \times 2/3 {d es d} |
		es8 g b |
		e, f r |
		d f as |
		d, es r |
		es32 f g16 c,8 c |
		c8.\prall h32 c d8 |
		d d d |
		d8. c32 d es8 |
		es8 es es |
		es8.\prall d32 es f8 |
		as16 g f es d c |
		g'8 h, c |
		f d g |
		c,16. b32 as16. g32 f16. es32 |
		f8 d g |
		c,4 r8
		\time 4/4 \tempo 4 = 80
		\partial 8 f'8 |
		f b, b8.\prall a32 b c8 f,16 g f es d c |
		b4 \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." }
	\bar "|."
	}

}
