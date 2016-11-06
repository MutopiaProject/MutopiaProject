\new Staff  {
	\time 4/4
	\tempo 4 = 100
	\override Score.MetronomeMark #'stencil = ##f
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key es \major
	\clef treble
	\relative c'' {
		b2 es\prall |
		d16 c b8 b4 b4 es |
		d16 c b8 b4 g es |
		d16 c b8 r4 b''16 g es4 b8 |
		c8.\prall b32 c b4 b'16 g es4 b8 |
		c8.\prall b32 c b4 f'16 d c b f' d c b |
		\appoggiatura as8 g2 f'16 d c b f' d c b |
		\appoggiatura as8 g2 <g, es' b'> |
		<as es' c'> <g es' b'> |
		<as es' c'> <a f' c'> |
		<b f' d'> <a f' c'> |
		<b f' d'> <d b' f'> |
		<es b' g'> <d b' f'> |
		g'16 es b g es'32 d c b as g f es b''4 b, |
		es, r4 b'2 |
		es d16 c b8 b4 |
		b es d16 c b8 r4\fermata |
		b,2 es |
		d16 c b8 b4 b es |
		d16 c b8 r4\fermata g''8 g g g |
		as as g g g g g g |
		as as g g g g g g |
		g g g g g g g g |
		c c c c b b b b |
		es, es es es d d d d |
		b16 f' b4.~ b16 g f es b' g f es |
		b4\prall b'~ b16 g f es b' g f es |
		<b, es b'>2 <as es' c'> |
		<as es' c'> <a f' c'> |
		<a f' c'> <b f' d'> |
		b'16 f' b4.~ b16 g f es b' g f es |
		b4 b'~ b16 g f es b' g f es |
		g2\prall c,16 es g8 h c |
		f,2\prall b,16 d f8 a b |
		es, es es es d d d d |
		es es es es d16 f f f f, f' f f |
		f, f' f f a a a a b b, b b g' g, g g |
		f8 c'4.\prall b'8 a16 g f8 b, |
		b4 a <d, b' f'>2 |
		<es b' g'> <d b' f'> |
		b''16 g f es b' g f es c' a g f c' es, d c |
		b'32 a g f es d c b es d c b a g f es f'4 f, |
		b r f2 |
		b,4 b' b c16 d es8 |
		d16 c b8 b4 b es |
		d16 c b8 b4 g es |
		d16 c b8 b4 b es |
		d16 c b8 r4\fermata g'' r |
		f r g r |
		g, r f r |
		g r b'8 b b b |
		c c c c g g g g |
		g g g g b b b b |
		b16 g f es b' g f es b g f es b' g f es |
		b' f es d f' d c b es c b a es' c b a |
		<b, f' d'>2 <b f' d'> |
		<b f' d'> <b g' es'> |
		<b f' d'>1 |
		<b g' es'> |
		<b f' d'>2 <f' d' f> |
		<es b' g'> b''16 g es4.~ |
		es8 e f4~ f8 fis g4~ |
		g as~ as8 a b4~ |
		b8 g g4\prall r8 g g4\prall |
		r8 f f4\prall r8 b b4\prall |
		r8 as as4\prall r8 g g4\prall |
		r8 f f4\prall es8 b as as |
		g16 es' d c b as g f es8 f g as |
		b4 b'2 a4~ |
		a16 g f es d c b a b4 b, |
		R1*2 |
		b''16 g f es es es es es c' es, es es es es es es |
		b' es, es es es es es es c' es, es es es es es es |
		c' f, f f f f f f d' f, f f f f f f |
		c' f, f f f f f f d' f, f f f f f f |
		b, b' b, b' b, b' b, b' b, b' b, b' b, b' b, b' |
		b, b' b, b' b, b' b, b' b g es b es32 d c b as g f es |
		b'4 b, es r \bar"||" |
		r4 as'2 g4 |
		r g2 f4 |
		r fis g8 g, r8 r32 g, as h |
		c8 d es f g g, r8 r32 g as h |
		c8 d es f g g, r4 |
		r2 \cadenzaOn \cadenzaOff |
		\time 3/8
		\tempo 4=60
		es''16.\prall d32 es8 fis |
		\appoggiatura fis g4 d8 |
		d16. c32 d8 e |
		f4 c8 |
		c16. h32 c8 d |
		es d es |
		\appoggiatura f es8 d es |
		\appoggiatura f es8 d es |
		\appoggiatura f es8 d c |
		\appoggiatura c8 h4 d8 |
		\appoggiatura d8 c4 es8 |
		\appoggiatura es8 d4 g8 |
		es d fis, |
		\appoggiatura fis g4. |
		es'8 d c |
		g' g, r |
		es' d c |
		g' g, c, |
		as4. |
		g4 r8 \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." } |
	\bar "|."
	}

}
