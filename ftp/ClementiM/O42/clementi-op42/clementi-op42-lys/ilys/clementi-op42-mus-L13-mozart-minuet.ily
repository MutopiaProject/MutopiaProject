\version "2.16.1"
\include "definitions.ily"

% LESSON XIII. Minuet and Trio, by Mozart.  MINUET

LessonXIIIUpperA=\relative c''{
	\time 3/4
	\tempo 4=96
	\hideTempo
	\key f \major 
	\clef treble
	%LINE 1
	\repeat volta 2 {
		\set Score.measurePosition = #(ly:make-moment 2 4) c8-1 c|
		c-1( f-2 a-4) a-.-4 a-4( g-3)| g-3( f-2) f-.-2 c-.-1 c-. c-.|
		c-1( g'-3 bes-5) bes-.-5 bes-5( a-4)| a-4( g-3) g-.-3 c,-.-1 c-. c-.|
		c-1( a'-4 c-5) <a c>-.-3-5 <a c>-3-5( <g bes>-2-4)|
	%LINE 2
		<g bes>8-2-4( <f a>-1-3) <f a>-.-2-4 <f a>-.-2-4 <d bes'>-.-2-5 <bes g'>-.-1-5|
		<bes g'>-2-5( <a f'>-1-4) <a f'>-.-1-4 <a f'>-.-1-4 <bes g'>-.-2-5 <g e'>-.-1-4|
		\set Score.measurePosition = #(ly:make-moment 1 4)
		<bes g'>-2-5( <a f'>-1-4) <a f'>4-1-4
	}
	\repeat volta 2{
		\set Score.measurePosition = #(ly:make-moment 2 4)
		<a' c>8-3-5 <g bes>-1-4|
		<g bes>-1-4( <fis a>-2-3) <fis a>-. <fis a>-. <fis a>-2-4( <g bes>-3-5)|
		<f a>-2-4( <e g>-1-3) <e g>-. <e g>-. <e g>-2-4( <f a>-3-5)|
		<e g>-2-4( <f d>-1-3) <f d>-.-1-3 <g e>-.-2-4 <f a>-.-3-5 <g bes>-.-4-5|
		<f a>-3-5( <e g>-2-4) <e g>4-2-4 c8-1 c|
	%LINE 3
		c-1( f-2 a-4) a-. a( bes-3)|f-2( a-4 c-5) c-. c( bes-4)|
		a-3( f-2) <d bes'>-.-1-5 <bes g'>-.-2-5 <a f'>-.-1-5 <g e'>-.-1-4|
		\set Score.measurePosition = #(ly:make-moment 1 4)
		<bes g'>-2-5( <a f'>-1-4) <a f'>4-1-4|
	}
	
}
LessonXIIILowerA= \relative c'{
	\time 3/4
	\key f \major
	\clef bass
	%LINE 1
	\repeat volta 2{
		\set Score.measurePosition = #(ly:make-moment 2 4) r4|
		<<{a4-5-3 c8-1 c-1 c-1 bes-2|bes-5-2 a-3 a4-3 s4|}\\{f2.|f2 d4\rest|}>>
		\clef treble
		<<{e'4-5-3 g8-1 g-1 g-1 f-2|f-2 e-3 e4-3 s4|}\\{c2.|c2 b'4\rest|}>>
		<<{a4-2-1 s2|}\\{f4 b4\rest \clef bass c,4-3|}>> 
	%LINE 2
		cis4-2 d-1 bes-3|c-1 r4 c,-5
		\set Score.measurePosition = #(ly:make-moment 1 4)
		f4-1 f,-5
	}
	\repeat volta 2{
		\set Score.measurePosition = #(ly:make-moment 2 4)
		r4|
		d'8-.-5 r d'-.-1 r g,-.-2 r|c,-.-5 r c'-.-1 r f,-.-5 r|
		bes2-2 a8-3 g-4| c4-1 c,-5 r|
	%LINE 3
	<<{a'4-5-3 c-1 bes-2|a-3-1 g-4-2 e-5-3|f-4-1 s2}\\{f2.|f4 e c|d bes-5 c-4}>>
	\set Score.measurePosition = #(ly:make-moment 1 4)
	f4-1 f,4-5
	}
}
