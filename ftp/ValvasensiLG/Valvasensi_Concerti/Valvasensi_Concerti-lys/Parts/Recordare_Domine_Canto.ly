\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName=""
	\set Staff.midiInstrument="oboe"
	\key d \minor
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\set Score.measureLength = #(ly:make-moment 4 2)
			d2. d4 d2 d8[\melisma c] d[ b]\melismaEnd |
			es4.\melisma d8 es8.[ d16] es[ d es]\melismaEnd f d1 |
			\set Score.measureLength = #(ly:make-moment 4 1)
			r2 d2. a4 a1\melisma g2\melismaEnd a1 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r4 d8 a b b fis fis g2 g4 c8 c |
			h4. a8 a2 g1 |
			r1 a8. f16 c'8. g16 a8 c b a |
			g2 g r4 d'2 c8 b |
			\set Score.measureLength = #(ly:make-moment 4 4)
			a[\melisma g a b] c16[ a b c] d[ c d b] |
			\set Score.measureLength = #(ly:make-moment 3 1)
			c1\melismaEnd b4 a2 g8 f f4. e8 e2 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			d4 d'8 a d4 c8 b |
			a4 g a2 |
			a8 a c g a4 f g2 g4 g8 a |
			b4 b b b b b b4. a8 |
			\set Score.measureLength = #(ly:make-moment 4 1)
			a1 g r\breve |
			\set Score.measureLength = #(ly:make-moment 4 2)
			d'2. d4 d2 d4 d |
			\set Score.measureLength = #(ly:make-moment 3 1)
			d1 d r |
			\set Score.measureLength = #(ly:make-moment 4 2)
			d4 a b2. fis8 fis g2 |
			g4 cis2 cis4 d c b a |
			\set Score.measureLength = #(ly:make-moment 3 1)
			a1 g r |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r4 d'8 a b4 fis g1 |
			es'4 es es1 es4 es |
			d1 c |
			R\breve |
			c2. a4 f' d8 d es4 c |
			\set Score.measureLength = #(ly:make-moment 3 1)
			d d2 d4 d2\melisma c\melismaEnd d1 |
			r\breve d4 a b8 b fis fis |
			\set Score.measureLength = #(ly:make-moment 4 2)
			g2 g4 a8 a h h c2 h4 |
			c1 r4 c8 b a4 a |
			g4. g8 g2 a8\melisma f b2\melismaEnd a4 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			b4 d c8.[\melisma d16] b8.[ c16] |
			a8.[ b16] g8.[ a16] f8.[ g16] e8.[ f16] |
			\set Score.measureLength = #(ly:make-moment 4 2)
			d4\melismaEnd g8 g g4\melisma fis\melismaEnd g2 d' |
			c2. b8 b a1 |
			\set Score.measureLength = #(ly:make-moment 4 1)
			g\longa
		}

	\bar "|."
	}

}