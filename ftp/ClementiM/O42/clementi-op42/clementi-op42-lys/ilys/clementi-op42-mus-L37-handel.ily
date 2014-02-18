\version "2.16.1"
\include "definitions.ily"

% LESSON XXXVII. Minuet in Ariadne, by Handel.

LessonXXXVIIUpperABegToSegno=\relative c''{
	\key d \major
	\time 3/4
	\clef treble
	\tempo 4=96 \hideTempo
	%LINE 1
		<<{a2-2-3 b16.-1-3 cis32-4 d8-5|}\\{fis,2 g4|}>>
		\grace g8-1 fis4-3( e16-2 d8.-1 g16-4 e8.-2)|
		\grace g8-4 fis4-3( e16 d8. g16-3 a b8)|
		\grace b8-5 <a fis>2.-2-4|a4-1 d-2 fis16-4 e8.-3|
	%LINE 2
		\grace g8-5 fis4-4 e16-2 d8.-1 g16-3 a b8|
		a4-4 a8-4 g-3 g-4 fis-3|\grace fis8-4 <e cis>2.-2-3|
		a2^\switchFiveTwo b16-3( cis d8)|
		\grace d8 cis4 b16 a8. g4-1|fis-3 e8 d cis-3 b|a2.|
		%\once \override Slur #'control-points = #'( ( 0.5977 . 2.291) ( 3.8854 . 3.387) ( 9.1656 . 3.287) ( 11.457 . 2.391) )
		d4-5\p( d,-1 e)|\grace g8-4 fis4-3( e8 d) g4|
	%LINE 3
		fis8-3( e-2) \preTrill e4.\trill^\trillThree d8-1|d2 r4|d2.-2_\pp|
		e2-3 fis4|
		g4-5 \preTrill e4.\trill^\trillFourTwo d8-1|
		d2.\arpeggio-2-3-5|
		\once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
		\mark \markup { \musicglyph #"scripts.segno" }
}
LessonXXXVIIUpperASegnoToFine=\relative c'{
		<<{a'2 b16. cis32 d8|}\\{fis,2\f g4|}>>
		\grace g8 fis4( e16 d8. g16 e8.)|\grace g8 fis4( e16 d8.) g16( a b8)|\grace b4-4 a2.\trill|
	%LINE 4
		a4-1 d fis16 e8.|\grace g8 fis4 e16 d8. g16 a b8|
		<<{a4-2-4 a8-3-5 g-2-4 g-3-5 fis-1-4|\grace fis8-4 e2.-2-3|}
		\\{fis4 fis8 e e d|cis2.|}>>
		a'2^\switchFiveTwo b16-3 cis d8|d16 cis8. b16 a8. g4-1|
		fis-3 e8-2 d-1 \grace d-4 cis-3 b-2|a2.|
		%\once \override Slur #'control-points = #'( ( 0.7472 . 2.117) ( 2.6152 . 3.362) ( 7.0984 . 3.486) ( 9.4645 . 2.366) )
		d4(\pp d,e^)|
	%LINE 5
		\grace g8 fis4( e8 d) g4|fis8( e) e4.\trill d8|d2 r4|
		d2.-2\f|e2-3 fis4-4|
		\grace {b,16-1[ e-3]} g4-5 \preTrill e4.\trill^\trillFourTwo d8-1|
		d2.\arpeggio_\markup{\italic\left-align "Fine"} |\bar "|."
		\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
		\override Score.RehearsalMark #'direction = #UP
		\mark \markup { \musicglyph #"scripts.ufermata" }
}
LessonXXXVIIUpperA={\LessonXXXVIIUpperABegToSegno \LessonXXXVIIUpperASegnoToFine}

LessonXXXVIIUpperB=\relative c'{
		fis4-2\p \preTrill fis4.\trill^\trillThree e16-1 fis-2|g4-1( \stemUp b-4) \stemNeutral d-5|
		gis,-3_\markup{\italic \larger "cresc."} \preTrill gis4.\trill^\trillFour fis16-2 gis-3|
	%LINE 6
		\stemDown a4-1( \stemNeutral cis-4) e-5|ais,-3\f \preTrill ais4.\trill^\trillFour gis16-2 ais-3|
		b4-1 d-3 fis-5|\grace e8-4 d4-3 cis8-2 b-1 ais-3 b-4|fis2.-2|
		\stemUp b4-4_\markup{\italic \larger "dolce"} b2-2 \stemNeutral|
		\preTrill b4.\trill^\trillThree a16-1 b-2 cis4-3|
		d8-4 e-5 cis4-3 \grace cis16-4 b8.-3 a16-2|
		a4-3 \preTrill a4.\trill^\trillFour gis16-2 a-1|
	%LINE 7
		b4-3 b2|<b gis>-2-3 <cis a>4-1-4|\grace {fis,16-2[ b-4]} d4-5 \preTrill b4.\trill^\trillFourTwo a8-1|
		<a e cis>2.-2-3-5|s2._\markup {"Da Capo al Segno   "\smaller \musicglyph #"scripts.segno" "  "} |
}

LessonXXXVIILowerABegToSegno=\relative c{
	\key d \major
	\time 3/4
	\clef bass
	%LINE 1
		d2^\markup{\italic "dolce"} d,4|d'2.|d4-1 b-3 g-5|d'-1 fis-2 a-1|fis-3 d-5 a'-2|
	%LINE 2
		d4-1 b-2 g-1|fis-2 e-1 d-2|a-5 a'-1 g-2|fis-3 e-4 d-5|
		a'-2 b-1 cis-2|d-1 d,-5 e-4|fis-3 e-4 d-5|b'-1 a-2 g-1|d-3 b-5 e-2|
	%LINE 3
		d4-3 a'-1 a,^\markup{\finger "5-2"}|d,4-5 d'-1 cis-2|b-3 g'-1 b,-3|
		cis-2 a-4 d-1|g,-3 a2-2|
		<<{	% stems may overlap the other staff
			\once \override Stem #'cross-staff = ##t
			% extend the stems to reach the other staff
			\once \override Stem #'length = #12
			\ignoreClashNote
			<a' fis>2.\arpeggio|}
		\\{\stemUp d,,-5| \stemNeutral}>>
}
LessonXXXVIILowerASegnoToFine=\relative c{
		d2 d,4|d'2.|d4 b g|d'fis a|
	%LINE 4
		fis d a'|d-1 b-2 g-4|d'-1 d,8-5 e fis g|a4 a, g'-1|
		fis-3 e-4 d|a'-2 b-1 cis|d d,e|fis e d|b'a g|
	%LINE 5
		d4 b e|d a'a,|d,d'cis|b g'b,|cis a d|g, a2|
		<<{\ignoreClashNote <fis' a>2.\arpeggio|
		%\override Staff.RehearsalMark #'direction = #DOWN 
		%\mark \markup { \musicglyph #"scripts.dfermata" }   ----------> Causing warnings and compile errors
		}\\{\stemUp d,|}>>
}
LessonXXXVIILowerA= {\LessonXXXVIILowerABegToSegno \LessonXXXVIILowerASegnoToFine}
LessonXXXVIILowerB=\relative c,{
		d4 d' c|b2 r4|e,e'd|
	%LINE 6
		cis!2 r4|fis,4-5 fis'-1 e-2|d2-3 ais4-5|b-4 e-1 cis-3|ais-5 fis'-2 e-1|
		d-3 cis-4 b-5|e2-2 a4-1|d,-3 e-1 e,|a-3 cis-2 a-4|
	%LINE 7
		d-1 cis-3 b-4|e2-2 a4-1|d,-3 e-1 e,-5|a^\markup{\finger "3-5"} a'8-1 g! fis e|s2.|	
}
