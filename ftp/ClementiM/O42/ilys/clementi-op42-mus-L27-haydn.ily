\version "2.16.1"
\include "definitions.ily"

% LESSON XXVII. God Save the Emperor. Composed by Dr. Haydn.

LessonXXVIIUpper = \relative c''{
	\time 2/2
	\tempo "Poco Adagio Cantabile" 2=60 \hideTempo
	\clef treble
	\key g \major
	\set Staff.connectArpeggios = ##t
	\repeat volta 2{
		\set Score.measurePosition = #(ly:make-moment 2 4)
		<<{<g d b>4.-1-2-4^(\arpeggio <a d,>8-2-5|b4^\markup{\finger "4-3"}^\markup{\finger 5} a-2-4^)
		\once \override Slur #'control-points = #'( ( 1.9925 . 3.387) ( 6.7746 . 5.047) ( 11.291 . 5.047) ( 15.01 . 2.258) )	
		<a c>-1-3-5^( <b g>-2-4|
		   a8-1-3 fis-2 g4-3^) e'-3-5^( d^\markup{\finger "2-3"}^\markup{\finger "4-5"}|
		   <c fis,>^\markup{\finger 2}^\markup{\finger "4-5"} <b g>-2-4^)
		   \once \override Slur #'control-points = #'( ( 1.2619 . 3.254) ( 2.6567 . 4.117) ( 5.5126 . 4.117) ( 6.7082 . 2.59) )
		   a-1-3^( b8-4 g-2^)|}
		\\
		{s2|g4 fis d2|d c'4 b|s2 e,|}
		\\
		{s2|s1|s|s2 s8.. s16\turn s8..|}
		>>
		\set Score.measurePosition = #(ly:make-moment 2 4)
		<d'a fis d>2-1-2-3-5\arpeggio
	}
	\repeat volta 2{
		\set Score.measurePosition = #(ly:make-moment 2 4)
		a4-4_( b-5_)|
		a8-4_( fis-2 d4-1_) <c' fis,>-2-5 <b g>-1-4|
		a8-3_( fis-2 d4-1_) <d' b>-3-5( <c a>-2-4)|
		<<{<b g>4.-1-3 <b g>8 cis4-1-4 cis8-1-4 d-5|}
		\\
		{s2 g,4 g|}>>
	%LINE 2
		<d' fis,>2-2-5\fermata <g d g,>4.-1-2-5\arpeggio fis8-4|
		<e c g>4^\markup{\finger 1}^\markup{\finger 2}^\markup{\finger "4-3"}\arpeggio <d b g>-1-2-3 <e c g>4.-1-3-5\arpeggio <d g,>8-1-4|
		\connectArpeggios
		<<{
			\grace d8-5 \stemUp c4-2-4 b^\markup{\finger 2}^\markup{\finger "3-4"}
			\ignoreClashNoteOnce
			<fis d>4\arpeggio^\markup{\finger 1}^\markup{\finger 2}^\markup{\finger "3-1"} s4 \stemNeutral|
			s4 \stemUp c'8^\markup{\finger 1}^\markup{\finger "4-5"} a-4 g4-1-3 \grace b8-5 a8-2-4 g-3|
			\set Score.measurePosition = #(ly:make-moment 2 4)
			<g d b>2-1-2-4|
		}\\{
			fis4 g \stemUp a4.\arpeggio \stemDown b16^\markup{\finger 2} c^\markup{\finger 3}|
			d8-4 e-5 e,4 d fis
			\set Score.measurePosition = #(ly:make-moment 2 4)
			s2
		}>>
	}
}

LessonXXVIILower = \relative c'{
	\time 2/2
	\clef bass
	\key g \major
	\set Staff.connectArpeggios = ##t	
	\repeat volta 2{
		\set Score.measurePosition = #(ly:make-moment 2 4)
		\setFingeringLeft <g-1 d-2 b-4 g-5>4. r8|
		<<{d2\rest \setFingeringLeft <a'-1>4 b-3-2|<c-1> s d,2\rest|}
		\\
		{s2 \setFingeringLeft <fis-4>4_( g|<d-5> <g b>^\markup{\finger 3}^\markup{\finger 2}_) s2|}>>
		<a d,>4-5-2_( <b g>^\markup{\finger "3-2"}^\markup{\finger 1} c,-5 cis-2_)
		\set Score.measurePosition = #(ly:make-moment 2 4)
		<d d,>2
	}
	\repeat volta 2{
		\set Score.measurePosition = #(ly:make-moment 2 4)
		<<{fis4-5-3 g-2|fis2-5-3 a4-5-1 g-5-2|}
		\\
		{d2|d d4 d|}>>
	%LINE 2
	<<{
		fis2^\markup{\finger "5-3"}^\markup{\finger "3-2"} d4-5-3 e8-4-1 fis-3-2|g2-2-1 <e a,>4-5-2 <e a,>-3-1|
	}\\{
		d2 b4 c8 d|e2 s|
	}>>
		<d d,>2\fermata <g d b>-4-2-1|
	\connectArpeggios
	<<{
		\setFingeringLeft <g-1 e-2>4 <g g,> s2|
		s2 <a fis d>2^\markup{\finger 2}^\markup{\finger 1}_\markup{\finger 4}\arpeggio|g4-5-2 a-5-1 b-2 c-1
	}\\{
		\setFingeringLeft <c,-3>4 s4 <c'g e c>4.\arpeggio <b g>8^\markup{\finger 2}^\markup{\finger 1}|
		<a d,>4^\markup{\finger 5}^\markup{\finger 1} g^\markup{\finger 2} c,2_\markup{\finger 5}\arpeggio|
		b4 c d2-5
	}>>
	\set Score.measurePosition = #(ly:make-moment 2 4)
	<g g,>2
	}
}
