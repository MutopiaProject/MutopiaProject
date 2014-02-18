\version "2.16.1"
\include "definitions.ily"

% LESSON XXIII. German Hymn, with Variations by Pleyel.

LessonXXIIIUpperA = \relative c''{
	\key g \major
	\time 2/4
	\clef treble
	\tempo "Andante" 4=80
	\hideTempo
	\repeat volta 2{
		<<{
			b4-1-4 d-5|
			a4.(-2-3 b8-2-4)|
			c4-1-5 a8..-2-4 b32-5|
			b4.-3-5 b8\rest|
		   	b4 d|
			a4. b8|
			c4^\switchOneTwo^\markup{\finger 5} a8..-1-4 b32-5|
		}\\{
			d,2|
			fis4. g8|
			e4 fis|
			g4. s8|
			d2|
			fis4. g8|
			e4 c|
		}>>
		  <g' b,>4.-1-3 r8|
	}
	\repeat volta 2{
		<a fis>4-3-4^(-\tweak #'stencil ##f \mf _\< <b fis dis>-2-3-5^)|
		<g e>4.-1-4^(_\! <a e cis>8-2-3-5^)_\fz|
		<<{<fis d>4-1-4_\p e8..-2-3 d32-1|}\\{s4  cis|}>>
		d4.-1 r8_\pp|
		<<{b'4-1-4 d-5|a4. b8|<c e,>4^\switchOneTwo^\markup{\finger 5} a8..-1-4 b32-5|}\\
		  {d,2|fis4. g8|s4 c,|}>>
		  <g' b,>4. r8|
		
	}
}
LessonXXIIILowerA = \relative c{
	\key g \major
	\time 2/4
	\clef bass
	\repeat volta 2{
	%LINE 1
		g4-5( b-3)|d4.-1_( b8-3_)|a4-4_( d-1_)|g,4.-5 r8|g4 b|d4. b8|a4 d|g,4. r8 
	}
	\repeat volta 2{
	%LINE 2
	d'4-3 b-5|e4.-2 a,8-5|d4-3 <g a,>-5-1|<fis d>4.-3-2 r8|
	g,4-5 b-4|d4.-2 b8-4|<<{a4-5
	\set fingeringOrientations = #'(up left)
	<fis'-2>|}\\{s4
	\set fingeringOrientations = #'(down left) <d-3>|}>>
	<g g,>4. r8
	}
}
