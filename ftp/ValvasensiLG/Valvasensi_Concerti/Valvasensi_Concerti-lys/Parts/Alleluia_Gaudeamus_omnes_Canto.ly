\new Staff  {
	\time 3/2
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 360 
	\set Staff.instrumentName=""
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\once \override Staff.TimeSignature #'style = #'single-digit
			\set Score.measureLength = #(ly:make-moment 3 1)
			f2. g4 a2 g2.\melisma a4 b2\melismaEnd |
			a2. b4 c2 b2.\melisma c4 d2\melismaEnd |
			g,2 a h c g4 f g2 |
			\time 4/4
			\tempo 4=100
			\set Score.measureLength = #(ly:make-moment 4 2)
			f1 r |
			r c'2. c4 |
			\set Score.measureLength = #(ly:make-moment 3 1)
			c2 c c1 a |
			\set Score.measureLength = #(ly:make-moment 4 1)
			r c2. c4 c1.\melisma h2\melismaEnd |
			\set Score.measureLength = #(ly:make-moment 4 4)
			c2 r4 c4 |
			a8.[\melisma g16 a8. b16] c8.[ b16 g8. a16] |
			b8.[ c16 d8. g,16] a8.[ b16 c8. b16] |
			\set Score.measureLength = #(ly:make-moment 4 2)
			a8.[ b16 a8. b16] g4.\melismaEnd g8 g1 |
			g4 a b8.[\melisma c16 a8. b16] c8.[ d16 g,8. a16] b8.[ c16 a8. b16] |
			c8.[ d16 es8. c16] d2\melismaEnd c4 a c8.[\melisma b16 a8. b16] |
			g2.\melismaEnd g4 f1 |
			r4 a8 b c2 g4 g8 g b b a g |
			a4 b2 a4 b d8 a b[ b a] g |
			a2 a4 d8 a h4 c8 d d2 |
			c1 r4 g a b |
			\set Score.measureLength = #(ly:make-moment 4 4)
			c2~\melisma c4 b16[ a g f] |
			\set Score.measureLength = #(ly:make-moment 4 2)
			e4 f2\melismaEnd e4 f c'8 b a4 a |
			r4 b8 a g4 g r c8 b a a b g |
			a4\melisma b2 a4\melismaEnd b2 r |
			\set Score.measureLength = #(ly:make-moment 4 4)
			r4 d8 c b b c b |
			\set Score.measureLength = #(ly:make-moment 4 2)
			a4 a r2 r1 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			r4 a8 g f f b a |
			g g c b a a d c |
			h h c4. c8 h4 |
			c4 g8 f e e c' g |
			\set Score.measureLength = #(ly:make-moment 4 2)
			a a b c g2 f1 |
			r r4 c' c2 |
			a4 c b a g f r2 |
			r4 c' b a g f c' a |
			\set Score.measureLength = #(ly:make-moment 4 4)
			d8[\melisma c b a] g4\melismaEnd g |
			c8[\melisma b a g] f4\melismaEnd f |
			b8[\melisma a b c] d2~ |
			d4\melismaEnd b c4. c8 |
			b4 a8 b c4 g |
			a2 g4 f |
			e\melisma f2 e4\melismaEnd |
			f a8 g f f b a |
			g g c b a a d c |
			h h c4. c8 h4 |
			c4 g8 f e e c' g |
			a a b c g2 |
			f4 c'8 g a a g g |
			g1 |
			\set Score.measureLength = #(ly:make-moment 4 1)
			f\longa |
		}

	\bar "|."
	}

}