\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key b \major
	\clef treble
	\relative c'' {
		b2\prall c4.\prall d16 es |
		d c b4. es4.\prall f16 g |
		f es d4 c16 d es8 f g a |
		b b,4. g'16 f es8 d e |
		\appoggiatura e f2 b16 a g8 d e |
		\appoggiatura e8 f4. g16 d \appoggiatura d8 es4. f16 c |
		\appoggiatura c8 d4. g32 f es d es8 es4 f32 es d c |
		d8 es4 f g\prall a8 |
		b b,4 es8 d c16 b c4\prall |
		d8 es4 f g\prall a8 |
		b16 f8. g8 g, b8\prall a32 b c16 c8.\prall b16 |
		b8 f b,4 r8 r32 f'' g a b4 |
		b a b8 f f f |
		g g g g f f f f |
		es f g a b4 b, |
		g'16 f es8 d e \appoggiatura e4 f2 |
		f16[ es d8] c d \appoggiatura d4 es2 |
		\grace {es16[ f]} g4 f8 es d8 es4 f8~ |
		f g4 b,8 f4 r |
		r2\fermata des'8 des4 c8 |
		b16 a b4. f'16 es des4 c8 |
		b16 a b4. e8 e4 f16 e |
		f8 c4 es8 d d4 es16 d |
		es8 b g' g c, c a' a |
		b b g g a f f f |
		f f f f a a g g |
		a g f f f4 e |
		d'32 c b16 a8 a h c2 |
		c16 b32 a g8 g a \appoggiatura a b4. c16 g |
		\appoggiatura g8 a4. c16 f, g a b8 a16 g f e |
		f8 \appoggiatura es f \appoggiatura es16 f8 \appoggiatura es16 f8 a32 g f16 f8 f f |
		\grace {f16[ g]} a8 g16 f e d c b a8 b32 c d e f8 f, |
		f8.\prall \times 2/3 {e32 f g} g8.\prall f16 f8 f' f f |
		e e e e f,16 c' f a a8.\prall g32 a |
		b16 f es d es c b a b8 b, b''4~ |
		b a\prall b8 f g g |
		f f f f g g g g |
		f f f f a a a a |
		b b,4\prall a16 b g'16 f es8 d8 e |
		\appoggiatura e4 f2 g16 f es8 d e |
		\appoggiatura e f4. g16 d \appoggiatura d8 es4. f16 c |
		d8 b' b b a c, c c |
		des des des des c4 r\fermata |
		g'16 f es4 d8 c16 h c4. |
		g'16 f es4 d8 c16 h c4. |
		f16 a c4. d,16 f b8 d,16 f b8 |
		f16 a c4. d,16 f b8 d,16 f b8 |
		es, g4 f16 es d8 f4 es16 d |
		c8 es4 d16 c b8 f' f8.\prall g32 a |
		b8 es,4 b'8 a d,4 as'8 |
		g c,4\prall b16 a b8 c4 d8~ |
		d es4 f8~ f g4 a8 |
		b b,4 es8 d b' a4\prall |
		b8 b b b g g g g |
		a c c c b b b b |
		a4 b a r\fermata |
		es8 g4 f16 es d8 f4 es16 d |
		c8 es4 d16 c b8 f'4\prall e16 f |
		b8 es,4 b'8 a d,4 a'8 |
		g c,4 b16 a b8 c4 d8~ |
		d es4 f g a8 |
		b a16 g f8 b, b4 a |
		b8 g' f b f,4 r8 r32 f' g a |
		b16 a g8 d e \appoggiatura e4 f2 |
		g16 a b8 d,8 e \appoggiatura e f4. d'8 |
		\appoggiatura f,8 es4. c'8 \appoggiatura es,8 d4. g32 f es d |
		es8 es4 f32 es d c d16 b8. es16 b8. |
		f'16 b,8. g'16 a8. b16 f8. g8 g, |
		b8.\prall \times 2/3 {a32 b c} c8.\prall b16 b4 r \bar "||" |
		r8 r32 d e fis g2 fis4 |
		g8 d d d es es es es |
		d d d d c d e fis |
		g16 d d d d d d d es es es es es es es es |
		es es es es d d d d d d d d c c c c |
		c c c c b b b b b b b b a a a a |
		d8 fis4 g8 c, fis4 g8 |
		b,8 b' b b b b b b |
		a a a a a a a a |
		a a a a a a a a |
		<g b, d,>4 g32 a b8. e,32 f g8. cis,32 d e8. |
		cis,8 g'' f e f f f f |
		fis fis fis fis g g g g |
		gis gis gis gis a4 a, |
		R1 \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." } |
	\bar "|."
	}

}
