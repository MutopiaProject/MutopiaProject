\version "2.16.1"
\include "definitions.ily"

% LESSON XVII.  Sarabanda, by Corelli.

LessonXVIIUpper = \relative c'' {
	\time 6/8
	\tempo "Allegro" 4=140
	\hideTempo
	\key f \major
	\clef treble
	\repeat volta 2{
	%LINE 1
		<<{f4.-1-4 e-2-3|d-1-4 cis-2-3|a'-4-5 f-1-3|bes-1-5 a-2-5|}\\
		  {d, cis|f e|f d|d cis|}>>
	}
	\repeat volta 2{
		<cis e>-2-3 <d f>^1^\switchFourThree|
	%LINE 2
		<e g>4.-2-4 <f a>-1-3|
		<a c>8-3-5 <g bes>-2-4 <f a>-1-3 <e g>-1-3 <f a>-2-4 <g bes>-3-5|
		<f a>-2-4 <e g>4-1-3 f4.-2|<f a>4.-2-4 <e g>-1-3|
		<g bes>-3-5 <f a>-2-4|<f a>8-3-5 <e g>-2-4 <d f>-1-3 <cis e>-2-3 <d f>-1-4 <e g>-3-5|
		<d f>-1-4 <cis e>4-2-3 <d>4.-1|<f a>-2-4 <e g>|<g bes> <f a>|<f a>8 <e g> <d f> <cis e> <d f> <e g>|
		<d f> <cis e>4 d4.|
	}
}
LessonXVIILower = \relative c'{
	\time 6/8
	\key f \major
	\clef bass
	\repeat volta 2{
	%LINE 1
		d8-1 f,-3 d-5  a'-1 cis,-3 a-5|
		d-3 f-1 d-5 a'-1 g-2 a-1|f-3 g-2 a-1 bes-2 a-1 bes-2|
		g-3 f-4 g-3 a4.-2|
	}
	\repeat volta 2{
		a8-1 g-2 a-1 f-3 e d|
	%LINE 2
		c'-1 bes c a-2 g f|f-3 g a  c,-3 bes-4 a-5|
		bes-3 c4-2 f,4.-5|f'8-1 a-2 f-3 c'-1 e,-4 c-5|
		g'-1 bes-2 g-3 d'-1 f,-4 d-5|g-3 bes-2 g-3 a-1 f-2 d-3|
		g,-5 a4-4 d4.-1|
	%LINE 3
		f8-3 a f c' e, c|g' bes g d' f, d|
		g bes g a f d|g, a4 d4.|
	}
}
