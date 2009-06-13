\new Staff  {
	\time 3/2
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 360 
	\set Staff.instrumentName=""
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c''' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\set Score.measureLength = #(ly:make-moment 3 1)
			g2 e f g4\melisma f e d c2\melismaEnd |
			e f g a4\melisma g f e d2\melismaEnd |
			g2 e f g4\melisma f e d c h\melismaEnd |
			\set Score.measureLength = #(ly:make-moment 5 2)
			a2. c4 h2
			\time 4/4
			\tempo 4=120
			\set Score.measureLength = #(ly:make-moment 5 2)
			c1 |
			\set Score.measureLength = #(ly:make-moment 3 1)
			r1 r4 g' g2 e4 g f e |
			d4. d8 c2 r1 r4 g' g2 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			e4 g e8.[\melisma f16] g8.[ f16] e8.[ d16] c8.[ h16] a8.[ h16] c8.[ a16] |
			h4\melismaEnd c c h c e8 f g g f e |
			\set Score.measureLength = #(ly:make-moment 4 4)
			f f d e f f e d |
			\set Score.measureLength = #(ly:make-moment 4 2)
			e e g4 g\melisma fis\melismaEnd g e8 d c4 h |
			a8 h c2\melisma h4\melismaEnd c1 |
			r r8 g' e f g4 f16[ e f d] |
			e2 e4 g e e8 e f4 d |
			e4. e8 e4 f g c,8 c d2 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			d4 g8 g e e f4 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			d e2 d8 c c4 h c2 |
                        \once \override Staff.TimeSignature #'style = #'single-digit
			\time 3/2
			\tempo 4=360
			\set Score.measureLength = #(ly:make-moment 3 1)
			g'2 e f g4\melisma f e d c2\melismaEnd |
			e f g a4\melisma g f e d2\melismaEnd |
			g e f g4\melisma f e d c h\melismaEnd |
			\set Score.measureLength = #(ly:make-moment 5 2)
			a2. c4 h2
			\time 4/4
			\tempo 4=120
			\set Score.measureLength = #(ly:make-moment 5 2)
			c1 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r1 g'4 g8 g g4 f16[ e f d] |
			e4 e r2 g4 g8 g g4 f16[ e f d] |
			\set Score.measureLength = #(ly:make-moment 4 4)
			e2 e4 e8 f |
			\set Score.measureLength = #(ly:make-moment 4 2)
			g4 f8 f f4\melisma e\melismaEnd f a8 g f4 e8 d |
			cis\melisma d d2 cis4\melismaEnd d1 |
			r4 g8 f e4 d8 c h\melisma g c2 h4\melismaEnd |
			c4 g'8 f e e f e d d g f e e a g |
			fis fis g4. g8 fis4 g g8 g e e d c |
			\set Score.measureLength = #(ly:make-moment 4 4)
			h4\melisma c2 h4\melismaEnd |
			\set Score.measureLength = #(ly:make-moment 4 1)
			c\longa |
		}

	\bar "|."
	}

}