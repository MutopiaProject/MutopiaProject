\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName=""
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
                        \set Score.measureLength = #(ly:make-moment 4 2)
			h2. h4 h2 r4 h |
			e8 h c gis a a d2 c8 h h2 |
			r1 gis2. gis4 |
			gis2 r4 h gis8 h e gis, a a c4~ |
			c h8 h h h c d e4 e e2~ |
			e4 c8 c c4 h8 h a1 |
			R\breve |
			h2. h4 h h8\melisma c16[ d h c]\melismaEnd h8\melisma c16[ h c d]\melismaEnd |
			h4 e2 d4 c\melisma h8[ a] h2\melismaEnd |
			a4 cis2 cis4 d1 |
			b1 h2 c\melisma |
			cis4 d dis e2\melismaEnd dis4 e2 |
			r1 e4 h8 h gis4. gis8 |
			a1 r |
			e'4 h8 h c4. c8 h4 e8 h c4 gis |
			\set Score.measureLength = #(ly:make-moment 3 1)
			a1 r1 e'4 c8 c h4. h8 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			h4 e8 h c4 gis a d4. d8 d4 |
			a h c d e c4. h8 a4 |
			d4 c16[ h c a] h2 a1 |
			r4 a d h8 h e4 a,8 a d4 c8 c |
			c2.\melisma h4\melismaEnd c1 |
			R\breve |
			r4 cis d h8 h e4 cis8 cis d4 h8 h |
			\set Score.measureLength = #(ly:make-moment 3 1)
			gis2 a r4 f f2. e8 e e2 |
			d1 r\breve |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r4 h' e h8 h c4 gis8 gis a4. a8 |
			h2 cis4\melisma d2 cis4\melismaEnd d2 |
			r1 e4 h c4. c8 |
			gis1 e'4 d c h |
			a g d' c c h h2 |
			\set Score.measureLength = #(ly:make-moment 3 1)
			a c4 c c\breve~\melisma |
			\set Score.measureLength = #(ly:make-moment 5 1)
			c4 h2 h16[ c d e]\melismaEnd gis,\longa |
		}

	\bar "|."
	}

}