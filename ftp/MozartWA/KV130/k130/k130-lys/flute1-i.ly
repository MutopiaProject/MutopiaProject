\version "2.18.2"
fluteIFirstMov =  \relative f''' {
    \key f \major
    \clef violin

    \override Staff.TupletBracket.bracket-visibility = ##f

    \repeat volta 2 {
	R1*5
	| f16[(\f c8.) c8-. c-.] c-. c-. c-. c-.
	| \grace { d32 }
 c16[( bes8.) bes8-. bes-.] bes-. bes-. bes-. bes-.
	| \grace { c32 }
 bes16[( a8.) a8-. a-.] a-. a-. a-. a-.
	| \grace { bes32 }
 a16[( g8.) g8-. g-.] 
	  \grace { a32 }
 g16[( f8.) \grace { g32 }
 f16( e8.)]

% 10
	| f4 r r2
	| f2 es d4 r r2
	| \grace { c'8 }
 bes4 a8 bes g4 c bes2( a4) r4
	| f2\p es d4 r r2
	| \grace { c'8 }
 bes4 a8 bes g4 c
	| a4 r r2
	| a4\f r r2
	
% 20
	| c1 ~ c2 r2
	| g4 r4 r2
	| c1
	| d2 d
	| c1 ~ c ~ c ~ c
	| b4 r r2
	
% 30
	| R1*5
	| g1\p ~ g ~ g
	| R1*4
	| c2\f es 
	| fis,4 c'4-. c-. c-. 
	| b a2. 
	| g4 f2.
	| e4 g a c
	| c2 b 
	| c4 g(\p f e)
	| R1*6
	
% 55
	| bes'1\f a2 b4 c
	| e2 d
	| c8( g) g-. g-. g4 r
	| R1

% 60
	| c8( g) g-. g-. g4 r
	| R1
	| e4 g c r
    }

    R1*8

% 71
    | c,16[(\f g'8.) g8-. g-.] g-. g-. g-. g-.
    | \grace { a32 }
 g16[( fis8.) fis8-. fis-.] fis-. fis-. fis-. fis-.
    | g16[( bes8.) bes8 bes] bes bes bes bes
    | bes16[( a8.) a8 a] a a a a
    | \grace { bes32 }
 a16[( gis8.) gis8 gis] 
      \grace { bes32 }
 a16[( g8.) g8 g]
    | \grace { a32 }
 g16[( f8.) f8 f] bes4 d
    | f,2 \afterGrace e2\startTrillSpan { d16 [e] \stopTrillSpan }  |
    | a2 bes d1\f

% 80
    | c1 d4 c bes a g2 d'
    | c4 c c r
    | R1*4
    | f16[(\f c8.) c8-. c-.] c-. c-. c-. c-.
    | \grace { d32 }
 c16[( bes8.) bes8-. bes-.] bes-. bes-. bes-. bes-.

% 90
    | \grace { c32 }
 bes16[( a8.) a8-. a-.] a-. a-. a-. a-.
    | \grace { bes32 }
 a16[( g8.) g8-. g-.] 
      \grace { a32 }
 g16[( f8.) \grace { g32 }
 f16( e8.)]
    | f2 a c2. a4 d c bes c d c bes c d1
    | c4 r r2
    | R1*5

% 103
    | c1\p ~ c ~ c
    | R1*4

% 110
    | f,2\f as d1 g,2. bes4 a! c d bes a2 g f4 c'4( bes a)
    | R1*6
    | es'1\f d
    | a2 g
    | f8( c) c-. c-. c4 r
    | R1
    | f'8( c) c-. c-. c4 % The last two C are to be played staccato
      r
    | R1
    | f,8( c) c-. c-. a'( f) f-. f-.

% 130
    | c' a c a c a f c
    | f4 c'4 a c a2 r2

    \bar "|."
}
