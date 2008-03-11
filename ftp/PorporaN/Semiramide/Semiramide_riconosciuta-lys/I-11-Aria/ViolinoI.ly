\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key b \major
	\clef treble
	\relative c'' {
		\partial 8 r8
		r b a b r b' c b |
		r b c b g4 a |
		a g8 r32 b c d \appoggiatura d8 c4. b16 a |
		b g fis g d g, fis g c, es' d c b a g fis |
		g8 g, r b' c b f' b, |
		c b g'8.\prall f32 g h,8 c r g' |
		h, c g'8.\prall f32 g c,8 c' c es, |
		d es f g a, b4 g'8 |
		a, b g'4 f es |
		d g f8 es16 d c8 f |
		b, r32 f' g a b2 a4\prall |
		b,8 r32 f' g a b2 a4 |
		b8 r32 f, g a b8 r32 b, c d es8 c f d |
		g es a f b16 c d es f8 g |
		f es16 d c8 f b, b'16. a32 b16 f d' f, |
		es8.\prall d32 es a16 es c' es, d8.\prall c32 d g16 d b' d, |
		c8.\prall b32 c fis16 c a' c, b d fis, g d g b, d |
		g,8 b'' a b r b c b |
		r b c b r b a b |
		g2 fis8 fis g g |
		fis4 r8\fermata a h16 c d4. |
		h16 c d4. \grace{f,16[ g]} as4 g8 f |
		es g g8.\prall f32 g a16 b c4. |
		a16 b c4. \grace{es,16[ f]} g4 f8 es |
		d16 a' g fis g g, b d \appoggiatura d4 c2 |
		b16 a' g fis g g, b d \appoggiatura d4 c2 |
		b16 g fis g d'8.\prall c32 d es8 c fis d |
		g g, d'8.\prall c32 d es8 c fis d |
		g8.\prall f32 es d8 es d c16 b c8 d |
		es4 g d8 c16 b a8 d |
		g, g'16. fis32 g8 d, es c fis d |
		g d a' d, b'16 a b c d8 g |
		d c16 b a8 d g,16 d' es d g8.\prall fis32 g |
		a16 d, es d a'8. g32 a b16 d, es d h'8. a32 h |
		c16 d c b b8.\prall a32 b a16 c b a g8.\prall fis32 g |
		fis16 g a g a c b a b g c a d8 g, |
		g\prall \times 2/3 {fis16 g a} a8.\prall g16 g4 \bar "||" r |
		d8 f f b b a b8.\prall a32 b |
		c8 c, c a' b16 g f16.\prall e32 f16 c d e |
		d8 f g g a,16 f b f c' f, d' f, |
		a f b f c' f, d' f, c'8. b32 a g8 f |
		f'8.\prall e32 d c8 h c g' a a, |
		g g'\prall a a, g4 r8\fermata c |
		\appoggiatura c4 b2 a16 g' f e f f, a c |
		\appoggiatura c4 b2 a16 g' f16. e32 f8 a, |
		b8 g cis a d d d d |
		d8.\prall cis32 d d8 d d8. c32 b a8 b |
		a g16 f g8 a b4 d |
		a8 g16 f g8 a d,4 r8 r32 d' e fis |
		g16 d es d g8. fis32 g a16 d, es d a'8. g32 a |
		b16 g c a d b a g fis g a g a c b a |
		b g a c d b a g fis g8.\prall a16 c b, a |
		b g d' b g'8 g, g8. \times 2/3 {fis32 g a} a8. g16 |
		g8 d g,4 \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." }
	\bar "|."
	}

}
