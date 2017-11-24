\version "2.18.2"
\language "deutsch"

\include "header.ly"

#(set-global-staff-size 16)

\score {
	\header { piece = "I" }
	\new StaffGroup <<
		\fluteI
		\oboeI
		\violaI
	>>

	\midi{ \tempo 4 = 120 }
	\layout{}
}

\score {
	\header { piece = "II" }
	\new StaffGroup <<
		\fluteII
		\oboeII
		\violaII
	>>

	\midi{ \tempo 4 = 140 }
	\layout{}
}
