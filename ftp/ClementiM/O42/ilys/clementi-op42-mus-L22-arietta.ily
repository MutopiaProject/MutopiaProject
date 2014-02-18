\version "2.16.1"
\include "definitions.ily"

% LESSON XXII. Arietta.

LessonXXIIUpper = \relative c''{
	\key g \major
	\time 2/4
	\clef treble
	\tempo "Allegro" 4=100
	\hideTempo
	\repeat volta 2{
	%LINE 1
		g8-1-\tweak #'stencil ##f \mf b-3 d-5 b-3|
		c-4 a-2 a4\turn-2|
		b8-3 b16-3 a-2 g8-1 b-3|
		b4-3( a8-2) r8|
		g-1 b-3 d-5 b-3|
	%LINE 2
		c-4 a-2 a4\turn-2|
		b8-3 b16-3 c-4 a8-2 a16-2 b-3|
		g2-1|
	}
	\repeat volta 2{
		d'8-2\< g-5\! fis-4\> g-5\!|
		fis16-4 e-3 dis-2 e-3 d4-2|
		c8-1 e-3 d-2 c-1|
		c4-3 \grace c16-3 b16-2 a-1 b-2 c-1|
	%LINE 3
		d8-2\< g-5\! fis\> g\!|
		fis16-4 e-3 dis-2 e-3 e-4 d-3 cis-2 d-3|
		d-4 c-3 b-2 a-1 c-4 b-3 a-2 g-1|
		<<{
			\override NoteHead #'font-size = #-3
			\cadenzaOn
			s8 e'32-4[ d-3 cis-2]_\markup{\italic "ad libitum"} d16-1[ fis-3 a-5 fis-3] d8-1[ cis-2 c-1 a-2] \bar"|" 
			\revert NoteHead #'font-size
			\cadenzaOff
		}\\{
			\grace s16\fz d2^\markup{\finger 3}^\fermata
		}>>
		\pageBreak
		g,8-1_\markup{\italic "a tempo"} b-3 d-5 b-3|
		c-4 a-2 a4\turn|
	%LINE 3
		b8 b16 a g8 b|
		b4( a8) r8|
		g b d b|
		c a a4\turn|
		b8 b16 c a8 a16 b|
		g2|
	}		
}
LessonXXIILower = \relative c'{
	\key g \major
	\time 2/4
	\clef bass
	\repeat volta 2{
	%LINE 1
		g16-4 b-2 d-1 b-2  g-4 b d b|
		d,-5 fis-3 d'-1 fis,-3  d-5 fis d' fis,|
		d-5 g-3 d' g, d g d' g,|
		d-5 g-3 b-2 d-1   d,-5 fis-3 a-2 d-1|
		g,-4 b-2 d-1 b-2 g b d b|
	%LINE 2
		d,-5 fis-3 d' fis,  d fis d' fis,|
		d-5 g-3 b-2 d-1 d,-5 fis-3 a-2 c-1|
		<b g>4-4-2 <g g,>|
	}
	\repeat volta 2{
		g16-5 b-3 d-1 b-3  g b d b|
		g-5 c-2 e-1 c-2  g-5 b-2 d-1 b-2|
		fis-4 a-2 d-1 a-2 fis a d a|
		g-4 b-2 d-1 b-2  g b d b|
	%LINE 3
		g b d b  g b d b|
		g-5 c-2 e-1 c-2   g-5 b-2 d-1 b-2|
		fis-4 a-2 d-1 fis,-2  g-3 b-2 d-1 b-2|
		<d a fis d>2\arpeggio^\markup{\finger 2}^\markup{\finger 1}_\markup{\finger 3}_\markup{\finger 5}_\fermata
		\cadenzaOn s4. s16 s32 \cadenzaOff %offsetting the ad libitum in the upper staff
		g,16 b d b  g b d b|d, fis d' fis,  d fis d' fis,|
	%LINE 4
		d g d' g,  d g d' g,|d g b d  d, fis a d|g, b d b  g b d b|
		d, fis d' fis,  d fis d' fis,|d g b d  d, fis a c|
		<b g>4 <g g,>|
	}
}
