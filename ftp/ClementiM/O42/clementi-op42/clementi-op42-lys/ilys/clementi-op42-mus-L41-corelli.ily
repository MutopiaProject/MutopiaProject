\version "2.16.1"
\include "definitions.ily"

% LESSON XLI. Giga, by Corelli.

LessonXLIUpperB= \relative c''{
	\key b \minor
	\time 4/4
	\clef treble
	\tempo "Allegro" 4=110 \hideTempo
	
	%LINE 1
	%\repeat volta 2 {      %----------------------voltas will weirdly unfold, messing up layout
		fis8-5 d-4 b-2 \stemDown fis-1 d'-4 b-2  cis-3 fis-5 cis-3  a-1 cis-2 fis-4 \noBreak
		b-5 b,-1 cis d cis b \stemNeutral ais4.-2 r8 b'-5 fis-3 \noBreak
		g-4 e-2 fis-3 g-5 e-4 g-5 ais,-2 fis-1 ais-2 b-3 cis d  
		g,-1 b-4 cis-5 fis,-2 b-4 ais-3 b4.-4 r8 d-2 b-1 \noBreak
	%LINE 2
		e-3 cis-2 e fis-4 cis-2 fis d-2 b-1 d-2  fis-4 d-1 fis-3 \noBreak
		g-4 e-2 g-4  a-5 e-2 a-5  fis-3 d-1 fis-2 a-4 fis-2 a-4
		b-5 fis-2 b b-5 fis-3 b <g g,_1>4.^\switchFourFive
		<<{ \stemDown \ignoreClashNote fis4.-4~ \stemUp fis8-4 e-3 d-2 e4-3 fis8-4 fis2.-5}
		\\{  <ais,_2>4.  <b_1>2.  <ais_2>2.}>> \noBreak
		\bar ":|:"
	%}
	%\repeat volta 2 {
		a'8-4 fis-2 g  a fis g  a e a  a e a \noBreak
	%LINE 3
		fis a fis  d-1 a'-4 fis-2 b-5 g-3 a  b g a
		b fis b b fis b  g-3 b-5 g-3  e-1 g-4 e-2 \noBreak
		c-1 e-4 c-2 a-1 fis'-5 e-4 dis-3 cis b e-5 b-2 e-5 \noBreak
		cis-3 dis e fis,-1 e'-5 dis-4  e,-1 e'-3 fis-4 g-5 e-2 fis-3
		g-4 b-5 g-4  e-2 a-5 e-3
	%LINE 4
		fis-4 d-2 e-3 fis-4 d e \noBreak
		fis-4 g fis  cis-2 fis-5 e d-3 fis-5 d b-1 d-3 b
		c-2 e-4 c ais-1 e'-4 fis-5 d-3 b-1 d-2 fis-3 b-5 fis-2
		gis-3 ais b cis,-1 b'-5 ais b,-1 d-5 b-4 \stemNeutral fis-2 b-5 fis-2
		g-3 b-5 g-3 fis-2 b fis e-1 b' e, fis-2 b fis
		g-3 b g fis-2 b-5 ais-4 \stemUp b2.-5
		\bar ":|"
	%LINE 5
		
	%}
}


LessonXLILowerB=\relative c'{
	\key b \minor
	\time 4/4
	\clef bass
	
	%LINE 1
	%\repeat volta 2 {
		<<{	s2. \setFingeringLeft <fis-1>4~|
				<fis-1> \setFingeringUp <e-2> \stemDown \ignoreClashNote fis d\rest|
				d\rest \stemUp <e-1>2<d-1>4|
				<cis-2>2 \stemDown b4
		}\\{
			b2-3 a-4|
			g-5 fis4 d-5|
			e2_\markup{\finger "4-5"} fis4-4 g-3|
			e-5 fis-4 b, 
		}>> b'_1~|
	%LINE 2
		b ais-3 b-2 d-1~ |d cis-2 d2-1|dis^\switchTwoOne e,4-5 fis-4|
		g2-3 fis^\switchFourFive|
	%}
	%\repeat volta 2 {
		d'2-1 cis4-2 a-4|
	%LINE 3
		d-1 r \clef treble <g e>2-3-1|<fis dis>4-4-2 <dis b>-5-3 e-2 r|
		\clef bass a,2-2 b4-1 g-3|a b e,2^\switchThreeOne|cis!-3 
	%LINE 4
		d-2| ais-5 b4-4 b'-1|e,-3 fis-2 g-1 d-4| e-3 fis-2 b,-5 d-4|
		e-3 fis g d|e fis b,2|
	%}
}
