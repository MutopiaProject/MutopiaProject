\version "2.10.14"

\paper {
	between-system-padding = #1
	ragged-bottom=##f
	ragged-last-bottom=##f
}

\include "violinoI1.ly"
\include "violinoI2.ly"
\include "marks.ly"

#(set-global-staff-size 20)

\book {
	\header { instrument = \markup { \box "Violino I" } }
	\score {
		\new Staff { << \mI \violinoIPmo >> }
		\layout { indent = 0\cm }
	}
	\score {
		\new Staff { << \mII \violinoISndo >> }
		\header { piece = "FUGA" }
		\layout { indent = 0\cm }
	}
}
