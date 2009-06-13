\new Staff  {
	\time 3/2
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 360 
	\set Staff.instrumentName=""
	\set Staff.midiInstrument="oboe"
	\key d \minor
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\once \override Staff.TimeSignature #'style = #'single-digit
			\set Score.measureLength = #(ly:make-moment 3 1)
			b2. b4 c2 d4\melisma c b c\melismaEnd d2 |
			\set Score.measureLength = #(ly:make-moment 9 2)
			f\melisma es\melismaEnd c d4\melisma c b c d2\melismaEnd es d c |
			\set Score.measureLength = #(ly:make-moment 6 1)
			b1 a2 b4\melisma a b c b2\melismaEnd d es c d1 d2 |
			\set Score.measureLength = #(ly:make-moment 3 1)
			es4\melisma d c b a2\melismaEnd d4\melisma c b a g2\melismaEnd |
			c4\melisma b a g f2\melismaEnd f'4\melisma es d c b a |
			\set Score.measureLength = #(ly:make-moment 7 2)
			g1 fis2\melismaEnd
			\time 4/4
			\tempo 4=120
			\set Score.measureLength = #(ly:make-moment 7 2)
			g1 r4 g8 g c c a a |
			\set Score.measureLength = #(ly:make-moment 4 4)
			d d b b es es c c |
			\set Score.measureLength = #(ly:make-moment 4 2)
			d4 c8 b a8. b16 g8.[\melisma a16] f8.[ g16 a8. b16] g8.[ a16 b8. c16] |
			a8.[ b16] c2 h4\melismaEnd c1 |
			\set Score.measureLength = #(ly:make-moment 4 1)
			\tempo 4=240
			g\longa |
			\tempo 4=120
			\set Score.measureLength = #(ly:make-moment 3 1)
			a8 a b2\melisma a4\melismaEnd b1 r8 d c b c2 |
			\set Score.measureLength = #(ly:make-moment 2 1)
			c4 d16[ e f d] es4. es8 d4 b4. b8 c16[ b c b] |
			\set Score.measureLength = #(ly:make-moment 3 1)
			a2 a r a b8 a g a b g b c |
			\set Score.measureLength = #(ly:make-moment 4 4)
			d2 f4 f16[ e g f] |
			\set Score.measureLength = #(ly:make-moment 4 1)
			es1.\melisma d2 c2.\melismaEnd c4 b1 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			R\breve*2 |
			r4 d d b16[ a b g] a4. a8 a4 f' |
			f8 c c c d4. d8 d4 a8 b c c b c |
			\set Score.measureLength = #(ly:make-moment 4 4)
			d d d d f f f f |
			es4 d16[ c d es] c4. c8 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			b1 r8 c a b c4 b16[ a b g] |
			a2 a4 a f'2 f4 es |
			\set Score.measureLength = #(ly:make-moment 3 1)
			d2. d4 c2 c r8 c c c c4 b |
			\set Score.measureLength = #(ly:make-moment 4 2)
			a4. a8 a4 f' a, b16[ c d b] c2 |
			\set Score.measureLength = #(ly:make-moment 3 1)
			d1 r\breve |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r4 h8 h c2 a1 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			r4 a8 a d d h h |
			\set Score.measureLength = #(ly:make-moment 4 2)
			c4. c8 c2 r4 g8 a b b a b |
			\set Score.measureLength = #(ly:make-moment 4 4)
			c c a b c c b c |
			d d d, e f f e f |
			g g f g a a g a |
			b b b c d8. es16 c8. d16 |
			b8.[\melisma c16 a8. b16] g8.[ a16 f8. g16] |
			e[ d e f] g[ f g a] b[ a b a] b[ a b c] |
			d8.[ es16 c8. d16] c8.[ d16] b8[ c16 b] |
			\set Score.measureLength = #(ly:make-moment 5 1)
			a1\melismaEnd g\longa |
		}

	\bar "|."
	}

}