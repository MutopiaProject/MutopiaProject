\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName=""
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\set Score.measureLength = #(ly:make-moment 4 2)
                        c2. c4 c c b8 b b b |
			a2 a c2. c4 |
			c c b8 b a a g2 g |
			r4 g16[ a b c] d2. c8 b[\melisma c b] c16[ b c a]\melismaEnd |
			b1 r4 d8 c b4 a |
			g c2 b8 d a1 |
			g4 c2 f,8 f g1 |
			\set Score.measureLength = #(ly:make-moment 3 1)
			f r r |
			\set Score.measureLength = #(ly:make-moment 4 2)
			c'4 g a2 a f'4 c |
			d2 d4 d es8 d c c b4. b8 |
			b2 r4 d8 d c4 b16[ a b g] a4 g |
			c4 b16[ c d g,] a4. a8 g1 |
			g4 d e2 e c'4 g |
			a2 a4 c f,4. f8 f4 f |
			g4. g8 g4 c8 c b4 a b2 |
			a4 c2 f,16[ g a f] g2. g4 |
			f1 r |
			r r4 f8 g a f a b |
			c4 a d d c8. d16 b8. c16 a4. a8 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			a8 c b a g4 g8 f |
			g4 a16[ b c a] b4\melisma c16[ b a g]\melismaEnd |
			a8 d c b c2 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			b4 d c8.[\melisma d16 b8. c16] a1\melismaEnd |
			g2 r4 c b8.[\melisma c16 a8. b16] g2\melismaEnd |
			f1 r |
			\set Score.measureLength = #(ly:make-moment 4 4)
			r4 a8 b c4 c8 c |
			\set Score.measureLength = #(ly:make-moment 4 2)
			b4 b a a r b8 c d4 b8 b |
			c4 c b b r c8 c b4 a8 a |
			g4 g f f r1 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			c'4 c8 c b4 a16[ g a f] |
			\set Score.measureLength = #(ly:make-moment 4 2)
			g4. g8 g4 g8 a b4 b8 b b4 c |
			c2 b r4 d8 c b4 a |
			g2 g4 c2 b8 b a2 |
			g r4 c f,4. f8 g2 |
			f1 r |
			r r4 c' c c |
			b4. b8 a2 a4 d d d |
			\set Score.measureLength = #(ly:make-moment 4 4)
			c4. c8 h2 |
			h4 c c c8 c |
			c4 b8 c d2 |
			d4 d c8.[\melisma d16 b8. c16] |
			\set Score.measureLength = #(ly:make-moment 4 2)
			a8.[ b16 g8. a16] f4 b2 a4\melismaEnd b2 |
			r4 d c8.[\melisma b16 a8. g16] f8.[ g16 f8. e16] d8.[ e16 d8. e16] |
			\set Score.measureLength = #(ly:make-moment 4 4)
			f8.[ g16 f8. g16] a8.[ b16 a8. b16] |
			\set Score.measureLength = #(ly:make-moment 4 2)
			c2. b8[ a] g4 as16[ g as f] g2\melismaEnd |
			\set Score.measureLength = #(ly:make-moment 4 1)
			f\longa |
		}

	\bar "|."
	}

}