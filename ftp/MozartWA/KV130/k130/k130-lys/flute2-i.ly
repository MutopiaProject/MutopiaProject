\version "2.18.2"
fluteIIFirstMov =  \relative f''' {
    \key f \major
    \clef violin

    \override Staff.TupletBracket.bracket-visibility = ##f

    \repeat volta 2 {
	R1*5
	| f16[(\f c8.) c8-. c-.] c-. c-. c-. c-.
	| \grace { d32 } c16[( bes8.) bes8-. bes-.] bes-. bes-. bes-. bes-.
	| \grace { c32 } bes16[( a8.) a8-. a-.] a-. a-. a-. a-.
	| \grace { bes32 } a16[( g8.) g8-. g-.] \grace { a32 } g16[( f8.) \grace { g32 } f16( e8.)]

% 10
	| f4 r r2
	| a,2 c bes4 r r2
	| e1 ~ e2( f4) r4
	| a,2\p c bes4 r r2
	| e1 	
	| f4 r r2
	| f4\f r r2
	
% 20
	| a1 
	| g2 r2
	| e4 r4 r2
	| e1 	
	| f2 f 	
	| e2 g 
	| a4 g f g 
	| a g f g 
	| a1 	
	| d,4 r r2
	
% 30
	| R1*5
	| g,1\p ~ g ~ g 	
	| R1*4
	| c'2\f es fis,4 a4-. a-. a-. g b,2. c4 d2.
	| c2. f4
	| e2 d 
	| c4 e(\p d c) 	
	| R1*6
	
% 55
	| cis1\f 
	| d2. e4 	
	| c'2 b 	
	| c8( g) g-. g-. g4 r
	| R1

% 60
	| c8( g) g-. g-. g4 r
	| R1
	| c,4 e e r
    }

    R1*8

% 71
    | c16[(\f g'8.) g8-. g-.] g-. g-. g-. g-.
    | \grace {
   a32 
   }
 g16[( fis8.) fis8-. fis-.] fis-. fis-. fis-. fis-.
    | g16[( bes8.) bes8 bes] bes bes bes bes
    | bes16[( a8.) a8 a] a a a a
    | \grace {
   bes32 
   }
 a16[( gis8.) gis8 gis] 
      \grace {
   bes32 
   }
 a16[( g8.) g8 g]
    | \grace {
   a32 
   }
 g16[( f8.) f8 f] bes4 d
    | d,2 cis2
    | d1 
    | f\f 

% 80
    | es1 
    | d4 f2 fis4 
    | g4 g2 f!4     
    | e! e e r
    | R1*4
    | f'16[(\f c8.) c8-. c-.] c-. c-. c-. c-.
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
    | f1 ~ f ~ f ~ f ~ f     
    | e4 r r2
    | R1*5

% 103
    | c1\p ~ c ~ c     
    | R1*4

% 110
    | f2\f as f1 e f ~ f2 e f4 a4( g f)     
    | R1*6
    | fis1\f 
    | g2. bes4     
    | f!2 e     
    | f8( c) c-. c-. c4 r
    | R1
    | f8( c) c-. c-. c4
      r
    | R1
    | f8( c) c-. c-. a'( f) f-. f-.

% 130
    | c' a c a c a f c
    | f4 a4 f a f2 r2
    \bar "|."
}
