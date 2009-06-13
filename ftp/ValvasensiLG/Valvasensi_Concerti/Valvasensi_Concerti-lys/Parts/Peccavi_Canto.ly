\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName="Alto"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef "G_8"
	\relative c' { 	
		\context Voice = "melodyAlt" {
			\dynamicUp
			\autoBeamOff
			\set Score.measureLength = #(ly:make-moment 4 2)
			r4 h h2 h1 |
			r4 h8 h h4. h8 h4 h h gis16[ a h gis] |
			a8[\melisma g a h] c16[ h c h] c[ d e a,]\melismaEnd h1 |
			r1 r4 dis dis2 dis4 dis8 dis e4. e8 |
			\set Score.measureLength = #(ly:make-moment 3 1)
			e2. e4 e8.[\melisma f16 d8. e16] c2.\melismaEnd h4 h2 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			a1 r4 d4. d8 c h |
			c4 a h d g,2. g4 |
			\set Score.measureLength = #(ly:make-moment 3 1)
			a1 g r1 |
			r2 e' e1 e4 h c d16[ c d h] |
			\set Score.measureLength = #(ly:make-moment 4 2)
			c4.\melisma h8 c8.[ h16] c[ h c d]\melismaEnd |
			h4 h8 c d e fis g4. fis8 fis fis2 | %first h corrected from 8 to 4
			e1 r2 h8[ a h g] |
			c1 h8 h h a d2 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			d8 d d c e2 |
			e4 e e8 e e fis |
			\set Score.measureLength = #(ly:make-moment 4 2)
			gis4 a8 a a4\melisma gis\melismaEnd a1 |
			r4 e e e f2. f4 |
			e e e d cis2 d |
			\set Score.measureLength = #(ly:make-moment 3 1)
			h1 h2 r4 e h2 c |
			gis a h1 a |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r4 e' e2 e4 e2 d8 c |
			\set Score.measureLength = #(ly:make-moment 4 4)
			h a h c d4 d |
			\set Score.measureLength = #(ly:make-moment 4 2)
			c2 h r d4 c8 h |
			\set Score.measureLength = #(ly:make-moment 4 4)
			a g a h c4. a8 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			h\melisma g c2 h4\melismaEnd c2 e4 d8 c |
			\set Score.measureLength = #(ly:make-moment 3 1)
			h a h c d2. c4 h2 a4 e' cis2 |
			d1 r8 d a h c2 h4 e2 d8 d |
			\set Score.measureLength = #(ly:make-moment 16 2)
			d4\melisma cis\melismaEnd d a d2 h4 h e gis, ais ais8 h c2.\melisma d4\melismaEnd e\longa |
		}

	\bar "|."
	}

}