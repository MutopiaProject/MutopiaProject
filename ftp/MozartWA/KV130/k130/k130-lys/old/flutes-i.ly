\version "1.7.30"
flutesFirstMov = \notes \relative f''' {
    \key f \major
    \clef violin

    \property Staff.TupletBracket \set #'bracket-visibility = ##f

    \repeat volta 2 {
	R1*5
	| \raiseText f16-[-(-\f^\aDue c8.-) c8-. c-.-] c-. c-. c-. c-.
	| \grace d32 c16-[-( bes8.-) bes8-. bes-.-] bes-. bes-. bes-. bes-.
	| \grace c32 bes16-[-( a8.-) a8-. a-.-] a-. a-. a-. a-.
	| \grace bes32 a16-[-( g8.-) g8-. g-.-] 
	  \grace a32 g16-[-( f8.-) \grace g32 f16-( e8.-)-]

% 10
	| f4 r r2
	| < { f2 es d4 } { a2 c bes4 } > r r2
	| < { \grace c'8 bes4 a8 bes g4 c bes2-( a4-) } \\
	    { e1 ~ e2-( f4-) } > r4
	| < { f2-\p es d4 } { a2-\p c bes4 } > r r2
	| < { \grace c'8 bes4 a8 bes g4 c } \\
	    { e,1 } >
	| < { a4 } { f4 } > r r2
	| < { a4-\f } { f4-\f } > r r2
	
% 20
	| < { c1 ~ c2 } { a1 g2 } > r2
	| < { g4 } { e4 } > r4 r2
	| < { c1 } { e,1 } >
	| < { d2 d } { f,2 f } >
	| < { c1 ~ c ~ c ~ c } \\ { e,2 g a4 g f g a g f g a1 } >
	| < { b4 } { d,4 } > r r2
	
% 30
	| R1*5
	| < { g1-\p ~ g ~ g } { g,1 ~ g ~ g } >
	| R1*4
	| < { c2-\f es fis,4 } \\ { c'2 es fis,4 } > 
	  < { c'4-. c-. c-. b a2. g4 f2. } 
	    { a4 a a g b,2. c4 d2. } >
	| < { e4 g a c } \\ { c,2. f4 } >
	| < { c2 b c4 g-(-\p f e-) } { e2 d c4 e-( d c-) } >
	| R1*6
	
% 55
	| < { bes'1-\f a2 b4 c } \\ { cis,1 d2. e4 } >
	| < { e2 d } { c2 b } >
	| \raiseText c8-(^\aDue g-) g-. g-. g4 r
	| R1

% 60
	| c8-( g-) g-. g-. g4 r
	| R1
	| < { e4 g c } { c, e e } > r
    }

    R1*8

% 71
    | \RaiseText c,16-[-(-\f^\aDue g'8.-) g8-. g-.-] g-. g-. g-. g-.
    | \grace a32 g16-[-( fis8.-) fis8-. fis-.-] fis-. fis-. fis-. fis-.
    | g16-[-( bes8.-) bes8 bes-] bes bes bes bes
    | bes16-[-( a8.-) a8 a-] a a a a
    | \grace bes32 a16-[-( gis8.-) gis8 gis-] 
      \grace bes32 a16-[-( g8.-) g8 g-]
    | \grace a32 g16-[-( f8.-) f8 f-] bes4 d
    | <<f, d>>2 < { <<e cis>>2 } 
	    \context Voice=x
	    { \blankNotes \setTrillWave e4 \beginTrillWave e8 \endTrillWave 
	      \visibleNotes \tiny \stemUp d16-[ e-] } >
    | < { a2 bes d1-\f } \\ { d,1 f-\f } >

% 80
    | < { c1 d4 c bes a g2 d' } \\ { es,1 d4 f2 fis4 g4 g2 f!4 } >
    | < { c4 c c } { e,! e e } > r
    | R1*4
    | \raiseText f16-[-(-\f^\aDue c8.-) c8-. c-.-] c-. c-. c-. c-.
    | \grace d32 c16-[-( bes8.-) bes8-. bes-.-] bes-. bes-. bes-. bes-.

% 90
    | \grace c32 bes16-[-( a8.-) a8-. a-.-] a-. a-. a-. a-.
    | \grace bes32 a16-[-( g8.-) g8-. g-.-] 
      \grace a32 g16-[-( f8.-) \grace g32 f16-( e8.-)-]
    | < { f2 a c2. a4 d c bes c d c bes c d1 } \\
	{ f,1 ~ f ~ f ~ f ~ f } >
    | < { c4 } { e, } > r r2
    | R1*5

% 103
    | < { c1-\p ~ c ~ c } { c,1 ~ c ~ c } >
    | R1*4

% 110
    | < { f,2-\f as d1 g,2. bes4 a! c d bes a2 g f4 } \\
	{ f2 as f1 e f ~ f2 e f4 } > < { c'4-( bes a-) } { a4-( g f-) } >
    | R1*6
    | < { es'1-\f d } \\ { fis, g2. bes4 } >
    | < { a2 g } { f!2 e } >
    | < { f8-( c-) c-. c-. c4 } \\ { f8-( c-) c-. c-. c4 } > r
    | R1
    | < { f'8-( c-) c-. c-. c4 } 
	{ f,8-( c-) c c c4 } > % The last two C are to be played staccato
      r
    | R1
    | \raiseText f,8-(^\aDue c-) c-. c-. a'-( f-) f-. f-.

% 130
    | c' a c a c a f c
    | f4 < { c'4 a c a2 } { a4 f a f2 } > r2

    \bar "|."
}