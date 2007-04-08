\version "2.10.14"

\include "violinoI1.ly"
\include "violinoII1.ly"
\include "viola1.ly"
\include "cello1.ly"
\include "violinoI2.ly"
\include "violinoII2.ly"
\include "viola2.ly"
\include "cello2.ly"
\include "marks.ly"

#(set-global-staff-size 12.60)

Primo = \new StaffGroup {
	<<
	\new Staff { \violinoIPmo }
	\new Staff { \violinoIIPmo }
	\new Staff { \violaPmo }
	\new Staff { \celloPmo }
	>>
}
Secondo = \new StaffGroup {
	<<
	\new Staff { \violinoISndo }
	\new Staff { \violinoIISndo }
	\new Staff { \violaSndo }
	\new Staff { \celloSndo }
	>>
}

\book {
	\score {
		<<
		\Primo
		\mI
		\staffinstvlI
		\staffinstvlII
		\staffinstvla
		\staffinstvlc
		>>
		\layout { indent = 1.4\cm }
	}
	\score {
		\unfoldRepeats { \Primo }
		\midi {
			\context {
				\Score
				tempoWholesPerMinute = #(ly:make-moment 40 4)
			}
		}
	}
	\score {
		<<
		\Secondo
		\mII
		>>
		\header { piece = "FUGA" }
		\layout { }
	}
	\score {
		\unfoldRepeats { \Secondo }
		\midi {
			\context {
				\Score
				tempoWholesPerMinute = #(ly:make-moment 112 4)
			}
		}
	}
}
