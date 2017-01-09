\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key es \major
	\clef treble
	\relative c'' {
		b4 b8. b16 b4 c8.\prall \times 2/3 {b32 c d} |
		es4 es,8. es16 es8.\prall \times 2/3 {d32 es f} g8 as |
		b b, b' b, b'4~ b16 c32 d es f g as |
		b16 b b b b b b b c, b' b b b b b b |
		d, b' b b b b b b es, b' b b b b b b |
		f b b b b b b b es, es g g es es b b |
		c c es es c c g g as8 as, b' b, |
		c'16 c es es c c g g as4 b |
		es, r b'4 b8. b16 |
		b4 c8.\prall \times 2/3 {b32 c d} es4 b8. b16 |
		b4 c8.\prall \times 2/3 {b32 c d} es4 es, |
		es16 es' es, es' es, es' es, es' es, es' es, es' es, es' es, es' |
		es, es' es, es' es, es'es, es'es, es' es, es' es, es' es, es' |
		es, es' es, es' es, d' es, d' es, g b es <g b, es,>4 |
		r16 b, es g b4 r16 g, b es g4 |
		r16 f, b d f8 r8 f16 f, f f f' f, f f |
		g' g, g g g' g, g g g' g, g g g' g, g g |
		a f' f f f f f f f, f' f f f f f f |
		g, f' f f f f f f a, f' f f f f f f |
		b, f' f f f f f f c f f f f f f f |
		f,8 f' f f g g g g |
		f f f f es es es es |
		d1~ |
		d16 b c d es f g a b8 f d b |
		es,2 c'\prall |
		d8 g f16 es d c b4 c\prall |
		d8 g f b b4 a\prall |
		r16 b a b c b a b g b a b c b a b |
		f b a b c b a b es, b' a b c b a b |
		d,8 es32 f g as b8 b, d4 c\prall |
		<<{b8 b b b}\\{<d, b>2}>> <b d b'>4 b'8. b16 |
		b4 c8. \times 2/3 {b32 c d} es4 es,8. es16 |
		es8. \times 2/3 {d32 es f} g8 a b4 b, |
		es16 es' es, es' es, es' es, es' es, es' es, es' es, es' es, es' |
		es, es' es, es' es, es' es, es' <g b,> <g b,> <g b,> <g b,> <g b,> <g b,> <g b,> <g b,> |
		<as c,> <as c,> <as c,> <as c,> <g b,> <g b,> <g b,> <g b,> <as c,> <as c,> <as c,> <as c,> <g b,> <g b,> <g b,> <g b,> |
		f f f f <f d> <f d> <f d> <f d> g g, g g g' g, g g |
		f' f, f f f' f, f f es' g, g g g' g, g g |
		f' f, f f f' f, f f b b' b b b b b b |
		c, b' b b b b b b d, b' b b b b b b |
		es, b' b b b b b b f b b b b b b b |
		g as b4. es,16 as c4. |
		es,16 g b4. d,16 f as4 as,8 |
		g16 b as g as b c d es f g as b8 es, |
		es4 d\prall r16 es d es f es d es |
		c es d es f es d es b es d es f es d es |
		as, es' d es f es d es g, b b b g' g, g g |
		f' f, f f f' f, f f es' g, g g g' g, g g |
		f' f, f f f' f, f f es' es g g es es b b |
		c c es es c c g g as8 as, b' b, |
		c'16 c es es c c g g as8 as, b' b, |
		es'16 f g as b8 es, es4 d |
		es16 b' b b b b b b c, b' b b b b b b |
		d, b' b b b b b b es, b' b b b b b b |
		f b b b b b b b es, es g g es es b b |
		c c es es c c g g as4 b |
		es, \bar "||" r g16 g g g g' g g g |
		g g g g g g g g g g g g g g g g |
		fis fis fis fis fis fis fis fis fis fis fis fis fis fis fis fis |
		g d d d d d d d es es es es es es es es |
		d g, h d g d g h d d, d d d d d d |
		g, g g g g' g g g a a, a a a' a, a a |
		a' a, a a a' a, a a h' h, h h g' g g g |
		as, as as as f' f f f g, g g g es' es es es |
		f,4 r\fermata r8 f' es d16 c |
		g'4 g, as16 as c c as as es es |
		f4 g c, r\fermata \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." }

	\bar "|."
	}

}
