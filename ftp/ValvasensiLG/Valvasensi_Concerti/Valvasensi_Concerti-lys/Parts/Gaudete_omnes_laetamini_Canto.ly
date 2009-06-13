\new Staff  {
	\time 3/2
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 540 
	\set Staff.instrumentName=""
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\set Score.measureLength = #(ly:make-moment 6 1)
			c1 a b c a d |
			c1. c2 c1 c b g |
			a a r c c c2 c |
			d1. d2 d1 f f e2 e |
			d1. d2 d1 b2 b b1 a2 a |
			g1. g2 g1 es' es d2 d |
			c1. c2 c1 r\breve. |
			c1 c a2 b c1 a r |
			c c a2 b c1 c d2 d |
			c1 c a b1. a2 g1 |
			\time 4/4
			\set Score.measureLength = #(ly:make-moment 3 1)
			f a1. c2 |
			\set Score.measureLength = #(ly:make-moment 4 1)
			b1. b2 a1 g |
			\set Score.measureLength = #(ly:make-moment 3 1)
			\tempo 4=120
			a4 b c1\melisma h2\melismaEnd c4 g g g8 a |
			b2 b4 b a2. a4 g1 |
			r1 a2. a4 a8 c g a b2 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			a4 d a a8 a f'2 es16 f d[\melisma es] c[ d b c] |
			\set Score.measureLength = #(ly:make-moment 4 4)
			a[ b c a] d[ c d b] c2\melismaEnd |
			\set Score.measureLength = #(ly:make-moment 4 2)
			b1 r4 d a4. a8 |
			a4 c2 f,8 f g1 |
			\set Score.measureLength = #(ly:make-moment 4 1)
			f r f f2 f |
			g1 a c c2 c |
			b1 a2 c c\melisma h\melismaEnd c1 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r2 c d es4 es |
			\set Score.measureLength = #(ly:make-moment 3 1)
			d1 c c4 b8 a b4 g |
			\set Score.measureLength = #(ly:make-moment 4 4)
			a f c' b8 a |
			\set Score.measureLength = #(ly:make-moment 4 2)
			b4 g a f8 f g4 a8 a g2 |
			f1 c'8 c d d b b c c |
			\set Score.measureLength = #(ly:make-moment 4 4)
			a a b b g g a a |
			\set Score.measureLength = #(ly:make-moment 4 2)
			f16[\melisma g a b] c2\melismaEnd f,16[ g a f] g1 |
			\set Score.measureLength = #(ly:make-moment 4 1)
			f1 r a2. a4 a1 |
			\set Score.measureLength = #(ly:make-moment 3 1)
			r c2. c4 c1 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r2 r8 c b a b2 a |
			\set Score.measureLength = #(ly:make-moment 4 4)
			c4 a8 a b b g g |
			\set Score.measureLength = #(ly:make-moment 4 2)
			a4 a a8 a d a h4 c8 d d2 |
			c8 c c b a2 a8 d d c h2 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			c8 c c b a4 g8 f |
			\set Score.measureLength = #(ly:make-moment 4 2)
			e4\melisma f2 e4\melismaEnd f1 |
			\set Score.measureLength = #(ly:make-moment 3 1)
			g2. g4 g2 a8[ b c b] b1 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			a2 g4 a16[ g a g] fis4\melisma g2\melismaEnd fis4 |
			g4 d'16[ c b a] b8 b a16[ g f e] e4 f8 f g4. g8 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			g4 a16[ b c a] b2 |
			\set Score.measureLength = #(ly:make-moment 4 1)
			a1
			\time 3/2
			\tempo 4=540
			\set Score.measureLength = #(ly:make-moment 4 1)
			c1. c2 b1 |
			\set Score.measureLength = #(ly:make-moment 3 1)
			a1. a2 a1 |
			\set Score.measureLength = #(ly:make-moment 6 1)
			c1. c2 h1 c1. c2 c1 |
			c1. b2 a1 b1. a2 g1 |
			a1. g2 f1 f g\breve |
			\time 4/4
			\tempo 4=120
			\set Score.measureLength = #(ly:make-moment 4 2)
			f2 c'4 c d8[ c] d[ b] c[\melisma b16 a] g[ f e d] |
			\set Score.measureLength = #(ly:make-moment 5 1)
			e8 f16[ e f e] f[ e f d] e e e e d e\melismaEnd f\longa |
		}

	\bar "|."
	}

}