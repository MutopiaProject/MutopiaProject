\version "2.10.14"

\paper {
	between-system-padding = #1
	ragged-bottom=##f
	ragged-last-bottom=##f
}

\include "violinoII1.ly"
\include "violinoII2.ly"
\include "marks.ly"

#(set-global-staff-size 20)

\book {
	\header { instrument = \markup { \box "Violino II" } }
	\score {
		\new Staff { << \mI \violinoIIPmo >> }
		\layout { indent = 0\cm }
	}
	\score {
		\new Staff { << \mII \violinoIISndo >> }
		\header { piece = "FUGA" }
		\layout { indent = 0\cm }
	}
}
