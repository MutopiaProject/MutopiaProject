\version "2.16.1"
\include "definitions.ily"

% LESSON XLIII: Prelude in C minor

global = {\key c \minor  \time 2/2}

pushFingerUp = \once \override Voice.Fingering #'extra-offset = #'(0.0 . 1.7 )
pushFingerLeft = \once \override Voice.Fingering #'extra-offset = #'(-0.2 . -1.4 )

LessonXLIIIUpperPrelvoiceOne= \relative c''{
	\clef treble
	\tempo 4=88
	\hideTempo
	b8\rest^\markup{\halign #RIGHT \bold \larger "Moderato"} <g ees'>-2-5[ <g ees'><g ees'>]  <g ees'>]-2-5_( <f b>-1-4) <f b> <f b> | %1
	<f b>-1-4_( <ees c'>-2-5) <ees c'>   <ees c'>  <ees c'>-2-5_( <d aes'>-1-4) <d aes'>-1-5 <d aes'>-1-5 | %2
	fis-1-4 \pushFingerUp g-5 g-2-5 \pushFingerUp g-5   \pushFingerUp ees-4_( \pushFingerUp d-3) d-1-4 \pushFingerUp d-5 | %3
	b8-2-3^( \pushFingerUp c-4) c-1-4 \pushFingerUp c-4  b'2\rest |%4
	b1\rest |%5
	\bar "|."
}
LessonXLIIIUpperPrelvoiceTwo= \relative c'{
	\clef treble
	s1 | %1
	s  | %2
	d4 c2 b4 | %3
	aes!4_( g) s2 |%4
	s1 |%5
	\bar "|."
}
LessonXLIIILowerPrelvoiceOne=\relative c{
	\clef bass
	\pushFingerLeft ees2-5-3^\markup{legato} \pushFingerLeft f-4-2 | %1
	\pushFingerLeft g-3-1  \pushFingerLeft aes-2-1 | %2
	\pushFingerLeft d,8-5-3_( ees-2) ees ees   \pushFingerLeft ees-5-2_( f-1) f f | %3
	\pushFingerLeft f-3-1 ees-2 ees-2 ees-2   b-4_( c-3) c-1 c-1  | %4
	s1 | %5
	\bar "|."
}
LessonXLIIILowerPrelvoiceTwo=\relative c{
	\clef bass
	c2 d  | %1
	ees f | %2
	g, g  | %3
	c s   | %4
	<c,^5>1 | %5
	\bar "|."
}
