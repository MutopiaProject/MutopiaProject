\version "2.16.1"
\include "definitions.ily"

% LESSON XXIII. German Hymn - Variation 2, by Pleyel.

LessonXXIIIUpperC = \relative c''{
	\key g \major
	\time 2/4
	\clef treble
	\repeat volta 2{
		<<{
			s8 s4.\turn|
			s8 a4-1 b8-2|
			s8 s4.\turn
		}\\{
			b8.^\markup{\finger 2}\( c16^\markup{\finger 1}-\tweak #'stencil ##f \turn d^\markup{\finger 2} e^\markup{\finger 3} fis^\markup{\finger 4} g^\markup{\finger 5}\)|
			g8^\markup{\finger 5}_( s4.|
			c,8.^\markup{\finger 3}-\tweak #'stencil ##f \turn e16^\markup{\finger 5} d^\markup{\finger 4} c b c_)|
		}>>
		\grace d8-4 \preTrill c4\trill^\markup{\finger 3} b-2|
		<<{
			s8 s4.\turn|
		}\\{
			b8.^\markup{\finger 2}\( c16^\markup{\finger 1}-\tweak #'stencil ##f \turn d^\markup{\finger 2} e^\markup{\finger 3} fis^\markup{\finger 4} g^\markup{\finger 5}\)|
		}\\{
			\hideNotes b,8. \unHideNotes s16 s4| %added this 3rd voice b/c the MIDI was skipping this note in error
		}>>
		g'8-5( a,4-1 b8-3)|
		\grace d16-5 c8.-4( a16-2 g-1 fis-3 e-2 fis-3)|
		<a c,>4-1-5( <g b,>8-1-4) r|
	}
	\repeat volta 2{
		a8.-5(-\tweak #'stencil ##f \mf fis16-3\< <b dis,>8.-2-5 a16-4)|
		g-3( e-1 fis\! g_\p \grace b16-5 a8.-4\f g16-3)|
		fis-2( a-3 d-5 a-3)  a-4( g-3 fis-2 e-1)|
		e8.-2( fis32-3 e-2) d16-1 fis-2 g-3 a-1_\p|
		<<{
			s8 s4.\turn|
		}\\{
			b8.^\markup{\finger 2}\( c16^\markup{\finger 1}-\tweak #'stencil ##f \turn d^\markup{\finger 2} e fis g\)|
		}>>
		g8( a,4 b8)|\grace d16 c8.( a16 g fis e fis)|
		<a c,>4( <g b,>8) r8|
	}
}
LessonXXIIILowerC = \relative c {
	\key g \major
	\time 2/4
	\clef bass
	\repeat volta 2{
		g4_\(^\markup{\italic "dolce"} b|
		d4. b8|a4 d|g,4._\) r8|
		g4_\( b|
		d4. b8|
		a4 d|
		g,4._\) r8|
	}
	\repeat volta 2{
		<<{
			fis'2-3-2|
			s4 cis-4-2|
			d-1 a-2|
			\hideNotes \ignoreClashNote d,4.-5 \unHideNotes d'8\rest|
		}\\{
			d4_\( b^\markup{\finger 5}|
			e^\markup{\finger 1} a,|
			s2|
			\stemUp	d,4._\) \stemNeutral  %cannot hide this note as it will take the dot away from the note in 1st voice	
			s8|
		}>>
		g4_\( b|
		d4. b8|
		a4 d|
		g,4._\) r8|
	}
}
