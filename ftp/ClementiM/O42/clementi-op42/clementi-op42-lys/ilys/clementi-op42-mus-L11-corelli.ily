\version "2.16.1"
\include "definitions.ily"

% LESSON XI. Giga by Corelli.

LessonXIUpper = \relative c'' {
	\key f \major
	\time 12/8
	\tempo "Allegro" 4=170
	\hideTempo
	%\autoLineBreakOff
	\clef treble
	\repeat volta 2 {
	%LINE 1
		f8-3( a-5 f-3) c-1( f-4 c-1) d-3( f-5 d-3) \stemDown a-1( c-3 a-1)|
		bes-2( d-4 bes-2) \stemNeutral g-1 c-4 g-1 a-3 c-5 a-3 f-1 a-3 f-1|
		g-3 c-5 g-3 e-1 g-3 e-1 f-3 a-5 f-3 d-1 g-4 d-1|
	%LINE 2
		e-3 d-2 c-1 c'-4 d-5 a-2 bes-3 d-5 bes-3 g-1 c-4 g-1|
		a-3 g-2 f-1 f'-4 g-5 d-2 ees-3 g-5 ees-3 c-1 f-4 c-1|
		d-3 c-1 bes-2 d-3 g-5 f-4 e-3 d-2 c-1 f-3 g-4 a-5|
		d,-1 e-3 f-4 c-1 f-5 e-4 f-5 c-3 a-2 f-1 a-3 f-1|
	%LINE 3
		g-2 e-1 g-2 c-5 g-2 c-5 a-3 f-1 a-2 c-3 f-5 c-2|
		d-3 b-1 d-2 g-5 d-2 g-5 e-3 c-1 e-2 c'-5 f,-1 c'-5|
		a-3 f-1 a-2 d-5 f,-1 d'-5 b-4 g-2 b-4 c-5 e,-1 c'-5|
		<d, f>-1-2 b'-4 c-5 d,-1 c'-5 b-4 c,2.-1|
	}
	\repeat volta 2 {
	%LINE 4
		f8-3 a-5 f-3 c-1 f-4 c-1 d-2 f-4 d-2 c-1 f-4 c-1|
		d-2 f d c-1 f c d-2 f-4 g-5 d-1 g-4 d-1|
		e-2 g-4 e-2 d-1 g d e-2 g e d-1 g d|
		e g e d g d e-2 g-4 a-5 e-2 a-5 e-2|
		\pageBreak
	%LINE 5
		f-3 a-5 f-3 e-2 a-5 e-2 f-3 a f e-2 a e|
		f-3 a f e-2 a e f-3 a f e-2 a e|
		d-1 f-3 bes-5 d,-1 g-4 bes-5 cis,-2 e-3 a-5 d,-1 a'-2 d-5|
		b-3 cis-4 d-5 e,-1 d'-5 cis-4 d,2.-1|
	%LINE 6
		f8-3 a-5 f-3 c-1 f-4 c-1 d-3 f-5 d-3 a-1 c-3 a-1|
		bes-2 d-4 bes-2 g-1 c-4 g-1 a-3 c-5 a-3 f-1 a-3 f-1|
		g-3 c-5 g-3 e-1 g-3 e-1 f-3 a-5 f-3 d-1 g-5 d-3|
		e-4 d-3 c-2 f-5 a,-1 f'-5 d-3 bes-2 g'-5 e-3 c-1 a'-5|
	%LINE 7
		f-2 d-1 bes'-4 g-2 e-1 c'-5 a-2 f-1 c'-3 d-4 bes-2 g'-5|
		e-3 c-1 f-4 f-3 g-4 e-2 f-3 g-4 a-5 f-3 g a|
		f-3 g a f-3 g a f-3 g a f-3 g a|
		d,-1 e-2 f-3 c-1 f-3 e-2 f2.-3|
	}
}
LessonXILower = \relative c {
	\time 12/8
	\clef bass
	\key f \major
	\repeat volta 2 {
	%LINE 1
		f2.-1 bes,4. f'-1|d-3 e-2 f2.-1|e-3 d4.-4 g-1|
	%LINE 2
		c,2.-5 d4.-4 e-3|f2.-2 g4.-1 a-4|bes2.-3 c4.-2 d-1|bes-3 c-1 f,2.-3|
	%LINE 3
		e2.-4 f-1|b,-5 c4.-4 e-2|f2.-1 g4.-2 a-1|f-3 g-2 c,2.-5|
	}
	\repeat volta 2{
	%LINE 4
		a'2.-1 bes4.-2 a-3|bes-2 a-3 bes2.-2|c4.-1 b-2 c-1 b-2|c-1 b-3 c2.-2|
	%LINE 5
		d4.-1 cis-2 d-1 cis-2| d-1 cis-2 d-1 c-2|bes-3 g-5 a-1 f-3|g-2 a-1 d,2.-3|
	%LINE 6
		a2.-5 bes4.-4 f'-1|d-4 e-3 f2.-2|e-3 d4.-4 g-1|c,-3 a-5 bes-4 c-3|
	%LINE 7
		d4.-1 e-2 f-1 bes,-3|c-1 c,-5 f'-1 e-2 |d-1 c-2 bes-3 a-4|bes-3 c-2 f,2.-5|
	}
}
