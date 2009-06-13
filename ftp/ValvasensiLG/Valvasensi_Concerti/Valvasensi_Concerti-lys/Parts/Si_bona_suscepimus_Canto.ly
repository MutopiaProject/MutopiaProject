\new Staff  {
	\time 3/2
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 540 
	\set Staff.instrumentName=""
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\set Score.measureLength = #(ly:make-moment 6 1)
			d1 h a2 a h1. h2 h1 |
			g g fis g\breve g1 |
			d' h c2 d e1. e2 e1 |
			c c h c\breve c1 |
			e\breve d1 c\breve h1 |
			d1. c2 h1 g g fis |
			g\breve g1 gis1. gis2 a1 |
			h\breve h1 a1. a2 gis1 |
			a1. a2 a1 c\breve h1 |
			a1. a2 h1 gis1. gis2 gis1 |
			\set Score.measureLength = #(ly:make-moment 9 1)
			e'\breve d1 c\breve h1 a\breve. |
			\set Score.measureLength = #(ly:make-moment 6 1)
			e'1 d c h1. h2 h1 |
			c h a gis1. gis2 gis1 |
			h c d e1. e2 e1 |
			\set Score.measureLength = #(ly:make-moment 9 1)
			c1. c2 h1 c\breve. e1 d c |
			h1. h2 a1 g1. g2 fis1 g\breve. |
			\set Score.measureLength = #(ly:make-moment 6 1)
			d'1 d c h h r |
			d d c h h r |
			d d c h\breve a1 |
			g\breve a1 h1. h2 h1 |
			\set Score.measureLength = #(ly:make-moment 9 1)
			c1. c2 h1 c\breve. c1 h1 h2 a |
			g1. g2 fis1 g\breve. gis1. gis2 a1 |
			h\breve h1 a1. a2 gis1 a1. a2 a1 |
			c\breve h1 a1. a2 h1 gis1. gis2 gis1 |
			e'\breve d1 c\breve h1 a\breve. |
			\set Score.measureLength = #(ly:make-moment 6 1)
			h1 c d e1. e2 e1 |
			\set Score.measureLength = #(ly:make-moment 9 1)
			c1. c2 h1 c\breve. e1 d c |
			\set Score.measureLength = #(ly:make-moment 6 1)
			h1. h2 a1 g1. g2 fis1 |
			\time 4/4
			\tempo 4=100
			\set Score.measureLength = #(ly:make-moment 4 2)
			g1 g8.[\melisma a16 g8. a16] h8.[ c16 h8.]\melismaEnd c16 |
			d4 g, g4. a8 a1 |
			\set Score.measureLength = #(ly:make-moment 4 1)
			g\longa
		}

	\bar "|."
	}

}