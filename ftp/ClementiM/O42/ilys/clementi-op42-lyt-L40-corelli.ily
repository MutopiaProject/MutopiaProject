\version "2.16.1"
\include "clementi-op42-mus-L40-corelli.ily"

% LESSON XL. Allegro by Corelli.

\score {
	  \new PianoStaff  <<
		    \new Staff = "upper" \LessonXLUpper
		    \new Staff = "lower" \LessonXLLower
	  >>
	  \layout{
		   indent = 0.0\cm % remove indent on first staff
		   system-count = #15
	  }
}
