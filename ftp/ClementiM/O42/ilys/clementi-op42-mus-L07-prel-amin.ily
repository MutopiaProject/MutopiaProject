\version "2.16.1"
\include "definitions.ily"

% LESSON VII: Prelude in A minor

LessonVIIUpperPrel = \relative c'' {
	\key c \major
	\time 6/8
	\clef treble
	c8-5 a-3 e-1 d'-5 b-4 e,-1|
	c'-5 a-3 e-1 b'-5 f-2 d-1|
	a'-5 e-2 c-1 gis'-4 d-2 b-1|
	a'-5 e-3 c-2 a4.-1\fermata|
	\bar "|."
}

LessonVIILowerPrel = \relative c'{
	\key c \major
	\time 6/8
	\clef bass
	a4.-1 gis-2|
	a-1 d,-3|
	e-1 e,-5|
	a2.-3|
	\bar "|."
}
