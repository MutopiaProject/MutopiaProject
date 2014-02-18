\version "2.16.1"
\include "definitions.ily"

% LESSON XLIV. Adagio by Corelli (in F # Minor).

global = { \key fis \minor \time 3/2 }

LessonXLVUpperA= \relative c''{
	
	b2\rest b\rest <cis^1^4>	| %1
	<cis^2^4>1 <d^1^5>2		| %2
	cis1^\markup { \finger \concat { "2" \hspace #0.4 "3"}}^\switchFourFive \once \override Stem #'length-fraction = #(magstep -2 ) b2^\markup{ \left-align \override #'( baseline-skip . 1.5 ) \column { { \finger " 5" } \finger \concat { "3" \hspace #0.4 "2 "} \raise #-1 \rotate #-180 \char ##x2040 } } | %3
	cis 1.-1-5			| %4
	b2\rest b\rest <e^2^4>		| %5
	e1-1-3 <fis^2^5>2		| %6
	e1^\markup{ \finger \concat { "1" \hspace #0.4 "2" } }^\switchFourFive <dis^1>2\trill | %7
	e1-2 <e^2^5>2			| %8
	<e^1^5>2( \onceForceFingeringToStem <d!^4>) <d^2^4>	| %9
	<d^1^4>2 <cis-3> <a'^2^5>	| %10
	<a^1^5>2^( <g-4>) <g^3^5>	| %11
	<g^1^5>2_( fis-4) \once \override Voice.Fingering #'extra-offset = #'(-0.2 . 0.3 ) <e^2>^\switchThreeFour | %12
	<fis^3^5>2. e4-2-4 d-1-3 cis-1-2| %13
	b1-2^\switchThreeFour gis2-1-3 	| %14
	a1-2-4 \grace cis8^\markup{ \finger "5" } <b^2^4>2 | %15
	\grace a8^\markup{ \finger "3" } gis1-1-2 <e'^3^5>2 ~ | %16
	<e-1>2 d1^\markup{ \left-align \override #'( baseline-skip . 1.5 ) \column { { \finger " 4" } \finger \concat { "2" \hspace #0.4 "1 "} \raise #-1 \rotate #-180 \char ##x2040 } } | %17
	cis1-1-3 <fis^2^5>2 ^~ 		| %18
	fis2 \centermarkup  \once \override Voice.TextScript #'extra-offset = #'(0.0 . -1.1 ) eis1^\markup{ \override #'( baseline-skip . 1.3 ) \column { \finger " 4" \finger " 1" \concat {  \musicglyph #"scripts.tenuto" \hspace #0.8  \musicglyph #"scripts.turn" } } }-\tweak #'stencil ##f \turn | % 19
	fis1-1-5 <cis^2^4>2 ~		| %20
	cis2 \preTrill \once \override Voice.Script #'extra-offset = #'(0.1 . -1.0 ) \once \override Voice.TextScript #'extra-offset = #'(0.0 . -1.2 ) b1^\trill^\markup{ \finger "  1"}^\switchFourThree| %21
	cis1-1-4 <cis^1^5>2 ~		| %22 
	\once \override Voice.TextScript #'extra-offset = #'(0.0 . -1.5 )
	cis2^\markup{ \left-align \override #'( baseline-skip . 1.5 ) \column { { \finger " 5" } \finger \concat { "2" \hspace #0.4 "1" \hspace #4 } \raise #-1 \rotate #-180 \char ##x2040 } } \once \override Voice.Fingering #'extra-offset = #'(0.0 . 0.3 ) b2-4 <b^2^4> | %23
	\centermarkup \once \override Voice.TextScript #'extra-offset = #'(0.0 . -0.6 ) b1^\markup{ \override #'( baseline-skip . 1.3 ) \column { \finger \concat { "3" \hspace #0.2 "4" \hspace #0.2 "5" \hspace #0.2 "4" } \finger " 1" \concat { \tiny \musicglyph #"accidentals.sharp" \hspace #0.8 \tiny \rotate #90 \musicglyph #"scripts.turn" } } }-\tweak #'stencil ##f \turn  
	<a-2>2^\switchThreeFour ~ | %24
	\stemDown \ignoreClashNoteOnce a2 \preTrill \once \override NoteColumn #'force-hshift = #0.5 \once \override Voice.TextScript #'extra-offset = #'(1.8 . -0.1 ) gis2.^\trill^\switchFourThree eis4-1 | %25
	 \allowFingeringInStaff fis1.-2\fermata
	\bar "|."
}

LessonXLVUpperB= \relative c''{
	s1 a2		| %1
	gis1 a2		| %2
	gis1 \once \override Voice.Script #'extra-offset = #'(0.9 . 2.1 ) <fis>2_\trill| %3
	eis1.		| %4
	s1 cis'2	| %5
	b1 cis2		| %6
	b1 a2		| %7
	gis1 gis2	| %8
	a1 b2		| %9
	e,1 cis'2	| %10
	d1 e2		| %11
	a,1 cis2	| %12
	d2. cis4 b a	| %13
	gis!1 e2	| %14
	fis1 fis2	| %15
	e1 a2 ~		| %16
	a2 \once \override Voice.Script #'extra-offset = #'(0.9 . 2.1 ) a2._\trill <gis^2>4 | %17
	a1 cis2 _~	| %18
	cis2 b1		| %19
	a1 gis2 _~	| %20
	gis2 fis1	| %21
	eis1 eis2	| %22
	fis1 gis2	| %23
	eis1 fis2 _ ~	| %24
	fis2 \allowFingeringInStaff \shiftOn  <fis^2>1 | %25
	s1.		| %26
}
LessonXLVUpper = { << \LessonXLVUpperA \\ \LessonXLVUpperB >>}

LessonXLVLower= \relative c {
	r2 r fis-2	| %1
	eis1-1 fis2-2	| %2
	e!1-3 d2-4	| %3
	cis1.-5		| %4
	r2 r a'-1	| %5
	gis1-2 a2-1	| %6
	gis1-2 fis2-3	| %7
	e1-4 e2-4	| %8
	fis1-3 gis2-2	| %9
	a1-1 a,2-5	| %10
	b1-4 <cis-3>2	| %11
	d1-2 a2-5	| %12
	d1.-2		| %13
	e1-1 e2 ~	| %14
	e1 d2-2 ~	| %15
	d1 <cis-3>2 ~	| %16
	cis2 b1-4	| %17
	a1-5 a'2-1 ~	| %18
	a2 gis1-2	| %19
	fis1-3 e!2-1 ~	| %20
	e2 d1-2		| %21
	cis1-3 <cis-2>2	| %22
	d1-1 <b-3>2	| %23
	cis1-2 <d-1>2	| %24
	<b-3>2 cis1-2	| %25
	fis,1.-5_\fermata	| %26
}

