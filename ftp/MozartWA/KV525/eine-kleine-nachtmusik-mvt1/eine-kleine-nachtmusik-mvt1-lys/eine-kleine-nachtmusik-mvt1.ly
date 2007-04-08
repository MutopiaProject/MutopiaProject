\version "2.10.0"

\include "violin1.ly"
\include "violin2.ly"
\include "viola.ly"
\include "cello.ly"

mvtOne = \new StaffGroup <<
	\new GrandStaff <<
 		\namedStaff "Violin 1" \violinOne
		\namedStaff "Violin 2" \violinTwo
	>>
	\namedStaff "Viola" \viola
	\new Staff {
		\set Staff.instrumentName = \markup { \column { \right-align "Cello &" \right-align "Double Bass" } }
		\cello
	}
>>

\book {
	\header {
		\include "headers.ly"
	}
	\score {
		\iftop \nomidi \mvtOne
		\layout {}
	}
	\paper {
		#(layout-set-staff-size (* 4.4 mm))
		%%system-count = 20 %% can't do this for letter
		ragged-bottom = ##f
		ragged-last-bottom = ##f
	}
}

\book {
	\score {
		\iftop \unfoldRepeats \withmidi \mvtOne
		\midi {
			\context { \Score tempoWholesPerMinute = #(ly:make-moment 144 4) }
		}
	}
}
