\version "1.7.30"
flutesSecondMov = \notes \relative bes'' {
    \key bes \major
    \clef violin

    \property Staff.TupletBracket \set #'bracket-visibility = ##f

    \repeat volta 2 {
	| R4.*10

% 11
	| < { bes8 f bes } \\ { bes8-\f f bes } >
	| < { d4 \grace f16 es8 \grace d16 c8 bes } 
	    { d,4 \grace f16 es8 \grace d16 c8 bes } > r
	| < { bes8 c d f,-( e-) c'-. bes-( a-) r 
	      f-[ ~ f16-( g32 a-] bes-[ c d e-)-] } \\
	    { bes8 c d f,-( e-) c'-. bes-( a-) s % Change s into r
	      f-[ ~ f16-( g32 a-] bes-[ a bes g-)-] } >
	| < { f8 c a \times 2/3 { g16-[-( bes d-)-] } f,8-[ e-] f4 } \\
	    { a8 c a \times 2/3 { g16-[-( bes d-)-] } f,8-[ e-] f4 } > r8

% 21
	| R4.*4
	| r8 r 
	  < { es!16.-\trill d32 d4 es16.-\trill d32 d8 d' r16 d }
	    { c,16. bes32 bes4 c16. bes32 bes8 bes' r16 bes } >
	| < { c16-( a-) c-( bes-) g-( e-) } { a f a g e bes } >
	| < { f4. ~ f ~ f ~ f8 as } \\ { a,8 f4 ~ f4. ~ f ~ f8 f' } > r
	| R4.
	| r8 r 
	  < { c8-( bes-) r bes-( a-) r c-( bes-) r bes-( 
	      a16-) bes-( a bes a bes-) a4 }
	    { a8-( g-) r g-( f-) r a-( g-) r g-( 
	      f16-) e-( f e f e-) f4 } > r8
    }

    \repeat volta 2 {
% 40
	| < { f'8 c f a,4 bes8 } \\
	    { f'8-\p c f a,4 bes8 } > 
	| < { es4 d8 d-\trill c } { c4 bes8 bes_\trill a } > r
	| < { f8 c f a,4 bes8 } \\
	    { f'8-\p c f a,4 bes8 } > 
	| < { es4 des8 des-\trill c } { c4 bes8 bes_\trill a } > r
	| < { c4.-( bes4-) } { a4.-\f-( g4-) } > r8

% 50
	| < { bes4.-( a8-) r r c4. bes8 es, d bes' 
	      a16-( g-) f-( es-) d8-( c-) }
	    { g'4.-( f8-) r r es4. d8 c bes g' 
	      f16-( es-) d-( c-) bes8-( a-) } > r
	| R4.*10
	| < { bes'8 f bes } \\ { bes8-\f f bes } >
	| < { d4 \grace f16 es8 \grace d16 c8 bes } 
	    { d,4 \grace f16 es8 \grace d16 c8 bes } > r
	| as8^\aDue f d

% 70
	| bes4-( as8-)
	| \grace bes16 as8-( g-) r
	| bes8-[ ~ bes16 c32-( d-] es-[ f g as-)-]
	| bes8 g es
	| \times 2/3 { f16-[-( g es-)-] } d8-[ c-]
	| bes4 r8
	| R4.*4

% 80
	| r8 r < { as'16.-\trill g32 g4 as16.-\trill g32 g8 bes }
		 { f16._\trill es32 es4 f16._\trill es32 es8 es } > r
	| < { bes16-( f-) bes-( d-) c-( a-) } \\ { d,8-. d16-( f-) es-( c-) } >
	| < { bes8 r as16.-\trill g32 g4 as16. g32 g8 bes }
	    { d,8 r f16._\trill es32 es4 f16._\trill es32 es8 es } > r
	| < { bes16-( f-) bes-( d-) c-( a-) } \\ { d,8-. d16-( f-) es-( c-) } >
	| < { bes8 } { d,8 } > r r
	| < { f4. ~ f ~ f ~ f } { f,4. ~ f ~ f ~ f } >
	
% 93
	| < { d'16 c bes c d bes c bes a bes c a bes d c8 bes bes-\trill a }
	    { f16 es d es f d es d c d es c d f es8 d d_\trill c } > r
	| R4.*13

% 110
	| < { g8 g g g-( f-) es-. es4-( d8-) }
	    { es8-\p es es es-( d-) a-. a4-( bes8-) } >
    }

    | < { bes'8 f bes } \\ { bes8-\f f bes } >
    | < { d4 \grace f16 es8 \grace d16 c8 bes } 
	{ d,4 \grace f16 es8 \grace d16 c8 bes } > r
    | < { bes8 f f f4 d8 d-[-. bes-.-] } \\ 
	{ bes'8 f f f4 d8 d-[-. bes-.-] } > r
    | < { c'8 d r es d r } { a bes r a bes r } >
    
    \bar "|."
}