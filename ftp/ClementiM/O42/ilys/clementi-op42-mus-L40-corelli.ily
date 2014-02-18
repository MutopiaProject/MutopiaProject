\version "2.16.1"
\include "definitions.ily"

% LESSON XL. Allegro by Corelli.

LessonXLUpper= \relative c''{
	\key d \major
	\time 4/4
	\clef treble
	\tempo 4=105 \hideTempo
	
	%LINE 1
	d16-5 d,-1 fis-2 a-1  d-2 fis-4 a-5 fis-4  e-3 a-5 cis,-2 e-4  a,-1 cis-2 e-4 a,-1|
	d-3 fis-5 b,-1 d-5 gis,-2 b-1 e-5 b-1  cis-2 a-1 cis-2 e-3  a-5 e-3 cis-2 a-1|
	d-5 d,-1 fis-2 a-1  d-3 fis-5 d-3 a-1 b-2 g-1 b-2 d-1  g-3 b-5 b,-1 d-4|
	%LINE 2
	cis-3 a-1 d-5 fis,-2  e-1 d'-5 cis-4 e,-1  r d'-1 fis-2 a-3  d-5 a-3 fis-2 d-1|
	e-3 a,-1 cis-2 e-3  a-5 e-3 cis-2 a-1  d-5 d,-1 fis-2 a-3  d-5 b-3 gis-2 b-1|
	cis-2 e-4 d-3 e-4  cis e d e  b-1 e-4 d e b e d e|
	%LINE 3
	a,-1 a'-5 gis-4 a-5  e-2 a-5 gis a  fis-3 a-5 gis a  b,-1 a'-5 gis a|
	r a,,-1 cis-2 fis-1  a-2 cis-4 b-3 a-2  b-3 e,-1 gis-2 b-1  e-2 gis-4 fis-3 e-2|
	a-5 a,-1 cis-2 e-1  a-2 cis-4 b-3 a-2 e'-5 e,-1 gis-3 fis-2 e-1 gis-3 fis-2 e-1|
	fis-2 b-5 a-4 b-5  fis-2 b-5 a-4 b-5
	%LINE 4
	e,-1 a-5 gis-4 a e a gis a|
	dis,-2 b cis-3 dis-4   e-5 b-2 e b  cis-3 dis-4 e-5 gis,-2 \stemDown fis-1 e'-5 dis-4 fis,-1 \stemNeutral|
	r e'-5 dis-4 e-5  b-2 e-5 dis e  gis,-2 e'-5 dis e  \stemDown e,-1 e'-5 dis-3 e-4 \stemNeutral|
	cis-2 a'-5 gis a   e-2 a-5 gis a  cis,-2 a'-5 gis a  a,-1 a'-5 gis-4 a-5|
	%LINE 5
	fis-3 d-1 cis-3 d-4  a-1 d-5 cis-4 d-5  \stemDown fis,-2 d'-5 cis d  d,-1 d'-5 cis-3 d-4 \stemNeutral|
	b-2 e-5 d e b e d e  gis,-2 e'-5 d e  \stemDown e,-1 e'-5 d-3 e-4 \stemNeutral|
	cis-2 fis-5 e fis cis fis e fis  ais,-2 fis'-5 e fis fis,-1 fis'-5 e-4 fis-5|
	d-2 g-5 fis g  d g fis g
	%LINE 6
	cis,-2 fis-4 e-3 fis-4  cis fis e fis|
	b,-1 b'-5 ais b e,-2 g-4 fis g  ais,-1 fis'-3 e fis  b,-1 b'-5 ais b|
	gis-3 b-5 ais b  cis,-1 b'-5 ais b  b,-1 fis-4 e-3 fis-4  cis-2 fis-4 e fis|
	dis-2 b'-5 a-4 b-5  fis-2 b-5 a-3 b-4  gis-2 e'-5 d-4 e-5  b-1 e-4 d-3 e-4|
	%LINE 7
	cis-2 a'-5 g-4 a-5  e-1 a-4 g-3 a-4  fis-2 d'-5 cis-4 d-5  a-2 d-5 cis-4 d-5|
	b-3 cis d fis,-2  e-1 d'-5 cis-4 e,-1  fis-2 a-3 d-5 a-3  fis a d a|
	e-1 a-3 cis-5 a-3  e-1 a-4 cis-5 a-4  d,-1 g-4 fis-3 g-4  d-1 g-5 fis-4 g-5|
	cis,-2 fis-4 e-3 fis-4  cis-2 fis-5 e-4 fis-5
	%LINE 8
	b,-1 e-4 d-3 e-4  b-1 e-5 d-4 e-5|
	a,-1 d-4 cis-3 d-4  a-1 d-5 cis-4 d-5 b-3 cis d fis,-2  e-1 d'-5 cis-4 e,-1|
	fis-2 a-3 d-5 a  fis a d a  e-1 a-3 cis-5 a-3  e-1 a-4 cis-5 a-4|
	d,-1 g-4 fis-3 g-4  d-1 g-5 fis-4 g-5  cis,-2 fis-4 e-3 fis-4  cis fis e fis|
	%LINE 9
	b,-1 e-3 d-2 e-3  b e d e  a,-1 d'-5 cis-4 d-5  a-2 d-5 cis-4 d-5|
	b16-3 d-5 cis-4 d-5  e,-1 d'-5 cis d  d,-1 d'-5\p cis d  a-2 d-5 cis d|
	b-3 d-5 cis d  e,-1 d'-5 cis d d,2-1|\bar "|." 
}


LessonXLLower=\relative c{
	\key d \major
	\time 4/4
	\clef bass
	
	%LINE 1
	d4 d'-1 cis^\switchTwoOne cis,-4|b-5 e-2 a-1 a,-5|fis'-2 d-3 g-1 g,-5|
	%LINE 2
	a^\switchFourFive a'^\switchOneTwo <d d,> d-1|cis^\switchTwoOne cis,-4 b-5 e-2|a-1 a,-4 gis-5 gis'-1|
	%LINE 3
	fis-2 cis-4 d-3 e-2| a,-5 a'-1 gis^\switchTwoOne gis,-4|fis-5 fis'^\switchOneThree e-5 e'-1|
	dis^\switchTwoOne dis,-4
	%LINE 4
	cis-5 cis'-1|b-2 gis-4 a-3 b-2|<e e,> r e,-4 gis-2|a-1 r a,-5 cis-3|
	%LINE 5
	d-2 r d-4 fis-2|g!-1 r e-4 gis-2|a-1 r fis-4 ais-2|b-1 b,-4
	%LINE 6
	a-5 a'-1|g^\switchTwoOne g,-4 fis-5 d'-2|e-1 fis-2 b,-5 r|b'-1 dis,-4 e-3 r|
	%LINE 7
	a-1 cis,-4 d-3 r|g,-5 a-4 d^\switchOneFive d'-1|cis^\switchTwoOne cis,-4 b-5 b'-1|a^\switchTwoOne a,-4
	%LINE 8
	g-5 g'-1|fis^\switchTwoOne fis,-4 g-3 a-2|d^\switchOneFive d'-1 cis^\switchTwoOne cis,-4|
	b-5 b'-1 a^\switchTwoOne a,-4|
	%LINE 9
	g-5 g'-1 fis^\switchTwoOne fis,-4|g-3 a-2 d-1 fis,-4|g-3 a-2 d2-1|\bar "|."
}
