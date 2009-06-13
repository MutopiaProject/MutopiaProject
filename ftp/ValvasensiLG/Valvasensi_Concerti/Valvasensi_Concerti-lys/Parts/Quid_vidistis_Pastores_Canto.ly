\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.instrumentName=""
	\set Staff.midiInstrument="oboe"
	\key d \minor
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
                        \set Score.measureLength = #(ly:make-moment 4 2)
			d2. a2 c f,8 f |
			g1 g |
			c2. a2 d b8 b |
			c1 c |
			r4 c g2 g4 es' c2 |
			c4 c2 c4 c1 |
			b2 a4 g8 f g4. g8 g2 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			es'4 d8 c d4. d8 |
			\set Score.measureLength = #(ly:make-moment 3 1)
			d1 r8 f, f f f2. e4 e2 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			d1 |
			\set Score.measureLength = #(ly:make-moment 4 1)
			\tempo 4=240
			b'\longa |
			\tempo 4=120
			\set Score.measureLength = #(ly:make-moment 4 2)
			g2. a16[ g a g] fis4\melisma g2\melismaEnd fis4 |
			\set Score.measureLength = #(ly:make-moment 5 1)
			g1 \tempo 4=240 a\longa \tempo 4=120 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			f2 f8.[\melisma g16] a[ b c f,]\melismaEnd g2. g4 |
			\set Score.measureLength = #(ly:make-moment 5 2)
			f1
			\once \override Staff.TimeSignature #'style = #'single-digit
			\time 3/2
			\tempo 4=360
			\set Score.measureLength = #(ly:make-moment 5 2)
			g1 g2 |
			\set Score.measureLength = #(ly:make-moment 3 1)
			a2. a4 a2 d c c |
			c1 h2 c1 c2 |
			es es es d1 d2 |
			c1 c2 b2. c4 d2 |
			b a a g1. |
			g2 a b a2.\melisma b4 c2\melismaEnd |
			b b a b2.\melisma c4 d2\melismaEnd |
			c c h c2.\melisma d4 es2\melismaEnd |
			d c c b2.\melisma c4 d2\melismaEnd |
			\set Score.measureLength = #(ly:make-moment 5 2)
			b a a
			\time 4/4
			\tempo 4=120
			\set Score.measureLength = #(ly:make-moment 5 2)
			g4 a b c |
			\set Score.measureLength = #(ly:make-moment 4 2)
			d1~ d16 d,[\melisma e f] g[ a b c] d2~ |
			d4\melismaEnd f,16[ e f d] e2 d1 |
			r d'2. a8 a |
			b2. b4 a1 |
			f'2. b,8 b c2. c4 |
			b d a2 a4 f' c2 |
			c8 f, f f f4. g8 g1 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			f8 a a b c4 d16[ c d c] |
			h4\melisma c2 h4\melismaEnd |
			c c2 b8 a |
			\set Score.measureLength = #(ly:make-moment 4 2)
			b4 b16[ a b g] a2 g1 |
			\once \override Staff.TimeSignature #'style = #'single-digit
			\time 3/2
			\tempo 4=360
			\set Score.measureLength = #(ly:make-moment 3 1)
			g1 g2 a2. a4 a2 |
			d c c h1 h2 |
			c1 c2 es es es |
			d1 d2 c1 c2 |
			b2. c4 d2 b a a |
			\time 4/4
			\tempo 4=120
			g4 b8 b a a g fis |
			g g f' f e e d cis |
			d d d d c c b b |
			a a b b a a g fis |
			g g d' d h h c c |
			a a b b g g a a |
			\set Score.measureLength = #(ly:make-moment 4 2)
			fis fis g2 a4 a2 g |
			es'~ es4 d16[ c b a] a1 |
			\set Score.measureLength = #(ly:make-moment 4 1)
			g\longa |
		}

	\bar "|."
	}

}