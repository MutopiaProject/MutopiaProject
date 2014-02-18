\version "2.16.1"
\include "definitions.ily"
\include "clementi-op42-mus-L07-prel-amin.ily"

% LESSON VII: Prelude in A minor

\score {
	\new PianoStaff <<
	    \new Staff = "upper" \LessonVIIUpperPrel
	    \new Staff = "lower" \LessonVIILowerPrel
	>>
	\layout { }
}
