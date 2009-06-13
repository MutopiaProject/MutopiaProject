\new Staff  {
	\time 2/2
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 160 
	\set Staff.instrumentName=""
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\set Score.measureLength = #(ly:make-moment 4 1)
			a1. a2 c1 h2 e |
			\set Score.measureLength = #(ly:make-moment 3 1)
			d c h2. h4 a1 |
			\set Score.measureLength = #(ly:make-moment 4 1)
			r\breve a1. a2 |
			c1 h2 a g f e2. e4 |
			d4 d2 d4 f2 e f4 g a1 gis2 |
			a1 r a1. e2 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			f1 f2 e |
			\set Score.measureLength = #(ly:make-moment 4 1)
			f1 e r r2 a |
			gis gis a2. a4 h2 d1\melisma c2 |
			\set Score.measureLength = #(ly:make-moment 3 1)
			h1\melismaEnd a r4 a a e |
			f1 e4 d'2 c4 h2 h4 cis |
			\set Score.measureLength = #(ly:make-moment 4 2)
			d h a2 a4 c2 h4 |
			a g f4. f8 e4 f e2 |
			d1 r |
			r r4 d' h c |
			\set Score.measureLength = #(ly:make-moment 3 1)
			h2 h4 d2 cis4 d2 d4 c h h |
			a2 a4 d2 c4 h a h4. h8 a2 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r4 a2 g4 f e d8[\melisma e f g] |
			\set Score.measureLength = #(ly:make-moment 4 4)
			a8[ h c a] h[ c d h] |
			cis4.\melismaEnd cis8 d4 c h2 a |
			R\breve |
			\set Score.measureLength = #(ly:make-moment 3 1)
			e'2. d4 c h c4. c8 h4 c h2 |
			h4 c2 a4 gis2 gis4 c2 c4 h2 |
			h4 c2 h4 a h gis\melisma a2\melismaEnd gis4 a 2 |
			r1 a4 g f f e4. e8 d2 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			f2. g4 a2 b |
			a4\melisma g f2 e2.\melismaEnd e4 |
			\set Score.measureLength = #(ly:make-moment 4 1)
			d\longa |
		}

	\bar "|."
	}

}