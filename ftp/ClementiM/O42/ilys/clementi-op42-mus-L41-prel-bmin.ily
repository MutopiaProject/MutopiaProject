\version "2.16.1"
\include "definitions.ily"

% LESSON XLI. Prelude in B Minor.

LessonXLIUpperA= \relative c'{
	\key b \minor
	\time 4/4
	\clef treble
	\tempo "Moderato" 4=60 \hideTempo
	
	%LINE 1
	\stemDown
	r2 fis8-1 b-3 d-5 cis-4| 
	\once \override PhrasingSlur #'control-points = #'( ( 0.7748 . 1.106) ( 6.9738 . 4.095) ( 24.685 . 6.199) ( 30.22 . 2.103) )
	b2-3\( <ais-2>8 <cis-3> <e-5> <d-4>|
	\once \override PhrasingSlur #'control-points = #'( ( 0.8855 . 1.549) ( 7.9701 . 4.87) ( 21.032 . 6.309) ( 24.021 . 1.881) )
	cis4.-3\)\( b8-1 b'-5 fis-3 <e-2> d-1\)|
	\stemNeutral
	cis-4\( ais-2 cis-4 b-3 a-2_\markup{\italic rallentando} g-1 fis-3 eis-2\)|
	%LINE 2
	eis2-4\( fis8-5 cis-2 d-3 b-1\)|
	<<{ e'4\rest^2 <fis,^5>4_~ \ignoreClashNote fis2\fermata 
	}\\{\stemUp g8\rest 
		\once \override Tie #'control-points = #'( ( 0.9962 . -3.8743) ( 4.4278 . -4.7599) ( 8.8557 . -4.5385) ( 10.626 . -3.4315) )
		<cis,^3>4._~cis2
	}\\{\stemDown ais2_~ais2
	}>>
}
LessonXLILowerA=\relative c''{
	\key b \minor
	\time 4/4
	\clef bass
	
	%LINE 1
	<<{ \shiftOff
	    b4\rest b8\rest b,8_~ \ignoreClashNote b2 
	    b'4\rest b8\rest cis,8_~cis2
	    d'4\rest d8\rest d,8_~d2
	    g4\rest g8\rest  g,8_~g2
	}\\{\stemUp \shiftOff 
		c4\rest fis,4_~ \ignoreClashNote fis2
		c'4\rest
		\once \override Tie #'control-points = #'( ( 1.3283 . 0.664) ( 2.9888 . 0.11) ( 4.7599 . 0.221) ( 6.531 . 0.774) )
		g4_~g2
		e'4\rest b4_~ \ignoreClashNote b2
		a4\rest  d,4_~ \ignoreClashNote d2
	}\\{	\shiftOff
		f8\rest d4._~d2
		f8\rest 
		\once \override Tie #'control-points = #'( ( 1.439 . -0.5534) ( 3.6529 . -1.2176) ( 7.5273 . -1.439) ( 10.737 . -0.332) )
		e4._~e2
		g8\rest fis4._~fis2
		d8\rest b4._~b2
	}\\{	\shiftOff
		b2_~b2
		cis2_~cis2
		d2_~d2
		g,2_~g2
	}>>
	%LINE 2
	<<{
		d'8\rest b d fis
		d8\rest ais b d
	}\\{
		fis,2 fis2
	}>>
	<cis' fis,>1_\fermata
}
