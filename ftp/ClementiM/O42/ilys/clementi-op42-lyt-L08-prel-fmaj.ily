\version "2.16.1"
\include "definitions.ily"
\include "clementi-op42-mus-L08-prel-fmaj.ily"

% LESSON VIII: Prelude in F Major

\score {
	\new PianoStaff <<
	    \new Staff = "upper" \LessonVIIIUpperPrel
	    \new Staff = "lower" \LessonVIIILowerPrel
	 >>
	\layout { indent = 0\mm }
}
