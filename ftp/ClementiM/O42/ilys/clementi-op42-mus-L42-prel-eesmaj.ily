\version "2.16.1"
\include "definitions.ily"

% LESSON XLII. Prelude in E flat Major.

global = { \key ees \major \time 4/4 }
tempoLegend = \markup { \right-align "Allegro" }
nb = \noBreak

LessonXLIIUpperPrel= \relative c''{
	\clef treble
	\tempo 4=98 \hideTempo
	\stemUp
	r16^\tempoLegend bes-1 ees-2 g-4  bes-5 g ees bes r aes d f aes f d aes| % 1
	r16 g-1 c-2 ees-3 g-5 ees c g  r e g bes e bes g e                     | % 2
	r16 f aes c  f c aes f r d! f aes d aes f d                            | % 3
	r16 ees g bes ees bes g ees r2\fermata 	
	\bar "|."
}

LessonXLIILowerPrelOne=\relative c''{
	\clef bass

	\staffUp \stemDown
	<g ees>2 <f b,>                                                        | % 1
	<ees c> \staffDown <des g,> \stemUp                                    | % 2
	c2 f,                                                                  | % 3
	g2 ees,\fermata                                                        | % 4
	
}
LessonXLIILowerPrelTwo=\relative c'{
	\clef bass
	s1 s1                                                                  | % 1-2
	aes2 bes,                                                              | % 3
	ees2 s2                                                                | % 4
}

LessonXLIILowerPrel = { << { \LessonXLIILowerPrelOne } \\ { \LessonXLIILowerPrelTwo } >> }

