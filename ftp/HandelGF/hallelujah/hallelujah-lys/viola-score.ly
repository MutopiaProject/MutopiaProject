\version "2.19.15"
\include "viola.ly"

\score {
  <<
    \context Staff=ViolaStaff \violaNotes
  >>
	\header {
		instrument = "Viola"
	}
}
