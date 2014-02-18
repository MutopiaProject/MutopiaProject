\version "2.16.1"
\include "clementi-op42-mus-L25-handel.ily"

% LESSON XXV.  Allegro, by Handel.

\score {
	  \new PianoStaff
	  <<
		    \new Staff = "upper" \LessonXXVUpper  
		    \new Staff = "lower" \LessonXXVLower 
	  >>
	  \layout { }
}
