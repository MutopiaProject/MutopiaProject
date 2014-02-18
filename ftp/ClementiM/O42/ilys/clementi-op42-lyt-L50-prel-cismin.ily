\version "2.16.1"
\include "clementi-op42-mus-L50-prel-cismin.ily"

% LESSON L. Prelude in C sharp minor.

%---------------------------DEFINITIONS

\score {
	  \new PianoStaff <<
	  	  \new Staff = "upper" { \global \LessonLPrelUpper }
	  	  \new Staff = "lower" { \global \LessonLPrelLower }
	  >>
	  \layout { }
}
