\version "2.16.1"
\include "definitions.ily"

% LESSON XLVI.  March by Couperin.

global = { \key aes \major \time 4/4  }

tempoLegend = \markup { \right-align "Un poco Andante."}

LessonXLVIUpper = \relative c''{
	\tempo 4=68 \hideTempo
	\partial 2
	\repeat volta 2 {
	aes4-4( \scriptRightOne g8)\prall^\switchThreeFourThree^\tempoLegend f-1 | %partial
	ees2-2 f4-4( \scriptRightOne ees8)\prall^\switchThreeFourThree des-2 |  %1
	c4\prallprall^\switchFourThree \grace {bes8-2} aes4-1 c8-2 des-3 ees-4 f-5 |	%2
	bes,4-2 ees2-4 d4\prallprall\turn^\switchFourThree    	| %3
	ees-4\arpeggio \staffDown \stemUp bes-2 
	\once \override Beam #'damping = #5
	\once \override Voice.Fingering #'extra-offset = #'(0.0 . 1.5 )
	c8-1 \staffUp d-3 ees-4 f-5  				| %4
	\lessScriptPriority
	d4\trill\turn^\switchFourThree ees-4 ees4.\prallprall^\switchFiveFour d!8-3	| %5
	g2-4\arpeggio
	}
	bes,4-2( \scriptRightOne c8)\prallmordent^\switchOneTwoOne des-2	| %6
	%\mark \markup { \musicglyph #"scripts.segno" }
	
	\repeat volta 2 {
	ees2-3 c4-1( \scriptRightOne des8)\prallmordent^\switchTwoOneTwo ees8-3	| %7
	f2-4 des4(-2 \scriptRightOne ees8)\prallmordent^\switchThreeTwoThree f-4	| %8
	ges8-5 f-4 ees des c4-1 f-5	| %9
	\scriptRightOne d4(\prallprall^\switchFourThreeTwo \grace {c8}
	      bes4) bes'4-5( \scriptRightOne aes8)\prall^\switchThreeFourThree g-2	| %10
	f4(-1 g8-3 aes)-4 \grace {aes8-5} g4(-4 \scriptRightOne
	      f8)\prall^\switchThreeFourThree ees-2 					| %11
	\scriptRightOne d4(\prallprall^\switchFourThree \grace {c8-2} bes4)-1 
	      \scriptRightOne ees(-2 f8)\prallmordent^\switchOneTwoOne g-3	   	| %12
	aes8-4 bes-5 aes g  f4.\prallprall^\switchFourThree ees8-2			| %13
	ees2-4\arpeggio bes4(-2 c)\turn-3		| %14
	des!4-4( c8)\prall-3 bes-2 aes4-1 bes\turn-2	| %15
	c4-3 aes-1 ees'-3(
		\lessTextScriptPriority
		\once \override Fingering #'extra-offset = #'(0.7 . -0.7 )
		f)^\markup{ \tiny {\musicglyph #"accidentals.flat" } 
		            \hspace #0.2 \musicglyph #"scripts.turn" }-4 	| %16
	ges4(-5 f8)\prall-4 ees-3 des4(-2 ees)\turn-3	| %17
	f4(-4 ees8)\prall-3 des-2 c4(-1 des)\turn-2 	| %18
	ees4-3 f-4 \grace { f8-2 }
	   \scriptRightOne
	   \once \override TextScript #'extra-offset = #'(-1.0 . 0.0 )
	   g!4.\prallmordent^\locoFingering aes8-4	| %19
	g2\prallprall\turn-3 aes4( \scriptRightOne g8)\prall f	| %20
	\once \override Script #'extra-offset = #'(2.5 . -3.3 )
	ees2\turn f4( ees8)\prall des			| %21
	\grace { des8 } c4\prallprall \grace { bes8 } aes4 c8( 
	    des \scriptRightOne ees\prallmordent f)	| %22
	bes,4 ees\prallmordent aes, des\prallmordent	| %23
	\staffDown g,4 c\prallmordent f, bes		| %24
	\staffUp ees4( des8)\prall c bes c des bes	| %25
	\grace { des8( } c4\prallprall \grace { bes8 }
	    aes4) c8 des ees f				| %26
	bes,8 ees des ees  aes, des c des		| %27
	\staffDown \forceStemLeft g,8 c bes c  f,4 bes	| %28
	\staffUp ees4( \scriptRightOne des8)\prall c des(
	     c)\staccatissimo bes( aes)\staccatissimo	| %29
	aes8(-2 bes-3 c-1 des-2 ees-3 f-1 g-4 ees)-2	| %30
	aes4(-4 \scriptRightOne g8)\prall-3 f-1 
	     ees-3 f-4 ees des				| %31
	c4.\prallprall\turn des8 \staffDown 
	     bes4.\prallprall aes8			| %32
	}
	\alternative {
		{
		<c, ees aes>2\arpeggio bes'4( \staffUp
		c8\prallmordent des)				| %33
		%\mark \markup { \musicglyph #"scripts.segno" }
		}	
		{
		\staffDown <c, ees aes>2\arpeggio		  %34
		}	
	}
}

LessonXLVILowerOne= \relative c {
	\partial 2
	\repeat volta 2 {
	d2\rest 		| %partial
	<aes c ees aes>2\arpeggio des4-2_(  \scriptRightOne 
	      c8)\prall^\switchThreeTwoThree bes-4 | %1
	a'2\rest ees-1 ~ 	| %2
	ees4-1 ees-1 e\rest f 	| %3
	b,4\rest \stemDown ees \stemUp \ignoreClashNoteOnce aes, f	| %4
	bes4 g aes bes		| %5
	\crossStaff { <g' bes>2\arpeggio }
	}
	\restRightOne d2\rest	| %6
	
	\repeat volta 2 {
	\stemDown
	c4-4 des!8 ees \stemUp <f f,>2	| %7
	\stemDown des4-4 ees8 f \stemUp <ges ges,>4 \stemDown f	| %8
	ees4 \stemUp c f f,	| %9
	bes4 bes, \stemDown g''! aes	| %10
	\stemUp bes4 d, ees ees,	| %11
	bes'4. aes8 g2			| %12
	f4 ees bes' bes,		| %13
	\crossStaff {
		\once \override NoteColumn #'force-hshift = #-0.5
		<g'' bes>2\arpeggio
	} \stemDown
	ees4(-1 des!8)-2 c-3 \stemUp	| %14
	bes4_(-4 c)-3 des!_(-2 c8)-3 bes-4	| %15
	aes2-5 \stemDown aes'4(-1 ges8)-2 f-3	| %16
	ees4-4 f-3 ges-2 f8-1 ees-2	| %17
	des4-3 ees-2 f-1 ees8-2 des-3	| %18
	\stemUp
	c4-1 des8-2 c-1 bes4-2 aes-3	| %19
	ees'4-1 ees, aes d\rest		| %20
	<aes c ees aes>2\arpeggio des4( \scriptRightOne c8)\prall bes	| %21
	a'2\rest ees ~ 		| %22
	ees4 ees e\rest f	| %23
	\stemDown
	s4 ees des_\prallprall_\turn ees8 des	| %24
	c4 des ees \stemUp ees,	| %25
	a'2\rest ees ~ 		| %26
	ees4 ees e\rest f	| %27
	\stemDown
	s4 ees des_\prallprall_\turn ees8 des	| %28
	c4 des \stemUp ees ees,	| %29
	aes2 g_\prallprall	| %30
	<f' f,>4( \stemDown ees8)\prall-2 des-3
	      \stemUp c-1 des-2 c-1 bes-3	| %31
	aes4-4 \stemDown des-2 ees \stemUp ees,	| %32
	}
	\alternative {
		{
		\stemDown <aes>2\arpeggio <ees ees'> | %33
		}		
		{
		<aes>2\arpeggio 		       %34
		\bar "|."
		}		
	}
}

LessonXLVILowerTwo= \relative c {
	\partial 2
	\repeat volta 2 {
	s2 s1 			| %partial & 1
	\stemUp
	e4\rest <c^2>2.  	| %2
	\stemDown
	\staffUp bes'2 aes	| %3
	\staffDown \stemUp \crossStaff { <g bes>4\arpeggio } s2. | %4
	s1			| %5
	b,4\rest \stemDown ees
	}
	s2			| %6
	
	\repeat volta 2 {
	\repeat unfold 15 {s1}	| %7-21
	\stemUp
	e4\rest c2.  	| %22
	\stemDown
	\staffUp bes'2 aes	| %23
	\staffDown g2 
	\forceStemRightRight
	\shiftOn f		| %24
	\stemUp s2 ees		| %25
	e4\rest c2.  		| %26
	\stemDown
	\staffUp bes'2 aes	| %27
	\staffDown \forceStemRight g2 \forceStemRightRight f	| %28
	s2 ees			| %29 
	s1	|
	s1	|
	s1	| %30-32
	}
	\alternative {{s1|}{s2}}	%33-34
}

LessonXLVILowerThree= \relative c {
	\partial 2
	\repeat volta 2 {
	s2 s1 			| %partial & 1
	\stemDown
	<aes_5>2. <aes_3>4	| %2
	<g_4>2 <f_5>		| %3
	ees2 s2			| %4
	s1			| %5
	ees2
	}
	s2			| %6
	
	\repeat volta 2 {
	\repeat unfold 2 {s1}	| %7-8
	s2 f'2			| %9
	bes,2 s2		| %10
	bes'2 ees,		| %11
	s1			| %12
	s2 bes			| %13
	\stemUp \forceStemLeft	ees,2 s2	| %14
	\repeat unfold 7 {s1}	| %15-21
	\stemDown aes2. aes4	| %22
	g2 f			| %23
	ees2 s2			| %24
	s1			| %25
	aes2. aes4		| %26
	g2 f			| %27
	\ignoreClashNoteOnce
	ees2 s2			| %28
	\repeat unfold 3 {s1}	| %29-31
	s2 \stemUp \forceStemLeftLeft
	\once \override Stem #'length-fraction = #(magstep -2)
	ees'			| %32
	}
	\alternative{{s1|}{s2}}  %33-34
}

LessonXLVILower = { << \LessonXLVILowerOne \\ \LessonXLVILowerTwo \\ \LessonXLVILowerThree >> }
