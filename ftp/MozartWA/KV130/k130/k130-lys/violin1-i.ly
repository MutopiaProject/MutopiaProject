\version "2.18.2"
violinIFirstMov =  \relative f'' {
    \key f \major
    \clef violin

    \noTupletBracket
    \tupletSpan 4

    \repeat volta 2 {
	f16[(\p c8.) c8-. c-.] c-. c-. c-. c-.
	| \grace { d32 }
 c16[( bes8.) bes8-. bes-.] bes-. bes-. bes-. bes-.
	| \grace { c32 }
 bes16[( a8.) a8-. a-.] a-. a-. a-. a-.
	| \grace { bes32 }
 a16[( g8.) g8-. g-.] 
	  \grace { a32 }
 \raiseBeam g16[( f8.) \grace {
   g32 
   }
 f16( e8.)]
	| e16( f8.) f8-. f-. f[ g16 a] bes[ c d e]
	| f16[(\f c8.) c8-. c-.] c-. c-. c-. c-.
	| \grace { d32 }
 c16[( bes8.) bes8-. bes-.] bes-. bes-. bes-. bes-.
	| \grace { c32 }
 bes16[( a8.) a8-. a-.] a-. a-. a-. a-.
	| \grace { bes32 }
 a16[( g8.) g8-. g-.] 
	  \grace { a32 }
 \raiseBeam g16[( f8.) \grace { g32 }
 f16( e8.)]

% 10
	| f4 r r2
	| f2 es
	| d4 r r f'8( d)
	| \grace { c8 }
 bes4 a8 bes g4 c
	| bes2( a4) r
	| f2\p es
	| d4 r r f'8( d)
	| \grace { c8 } bes4 a8 bes g4 c
	| \LowerText a4:16\deprecatedcresc bes8: c: d: e: f: g:
	| a2: a:

% 20
	| a4 c2 \grace { bes16 } a8 g16 f
	| g8: g,: a: b: c: d: e: f:
	| g2: g:
	| g4 c2 \grace { a16 } g8 f16 e
	| f4 d' r8. g,,16 f'8. d16
	| e4 c' r8. c,16 g'8. e16
	| <d, d'>8 <d d'>4 <d d'> <d d'> <d d'>8 ~
	| <d d'>8 <d d'>4 <d d'> <d d'> <d d'>8
	| <d d'>16 c'' c c c4: c2:
	| b4 r r2

% 30
	| \grace { f16 } \raiseScript e8.\p\trill( d32 e) r4 
	  \grace { g16 } \raiseScript f8.(\trill e32 f) r4
	| g4. a16( b \tuplet 3/2 { c8)-. b-. a-. g-. f-. e-. }
	| \raiseScript d8.(\trill c32 d) r4 
	  \raiseScript e8.(\trill d32 e) r4
	| f4. b16( c \tuplet 3/2 { d8)-. c-. b-. a-. g-. f-. }
	| \raiseScript e8.(\trill d32 e) r4 
	  \raiseScript f8.(\trill e32 f) r4
	| g4. a16( b \tuplet 3/2 { c8)-. b-. a-. g-. f-. e-. }
	| \raiseScript d8.(\trill c32 d) r4 
	  \raiseScript e8.(\trill d32 e) r4
	| f4. b16( c \tuplet 3/2 { d8)-. c-. b-. a-. g-. f-. }
	| e4 r r2
	| f4 f2 \grace { g16 } f8 e16 d 
% 40
	| c4 r r2
	| f4 f2 \grace { g16 } f8 e16 d
	| c2:\f es:
	| fis,4 c''-. c-. c-.
	| b4 <b, a'>2 a'4
	| g <g,, g' f'>2 f''4
	| e!: g: a: c:
	| e,2: d:
	| c4 r r2
	| g'16[(\p f8.) f8-. f-.] f16[( e8.) e8-. e-.]

% 50
	| \grace { e8 } d4 c8 b c( e) g( c)
	| g16[( f8.) f8-. f-.] f16[( e8.) e8-. e-.]
	| \grace { e8 } d4 c8 b c( e) g( c)
	| \grace { a16 } g16[( f8.) f8-. f-.] f( e) e( d)
	| \grace { e16 } d8( c) c-. c-. c c c c
	| cis2:\f bes':
	| a2: b4: c:
	| g,: e' d: b'
	| c8( g) g-. g-. g4 c,8\p r
	| b r c r d r b r

% 60
	| c'(\f g) g-. g-. g4 c,8\p r
	| b r c r d r b r
	| c4\f <e c'> c, r
    }

    \break

    | R1*2
    | c'16[(\p g8.) g8-. g-.] g-. g-. g-. g-.
    | \grace { a32 } g16[( f8.) f8-. f-.] f-. f-. f-. f-.
    | e4 c'2 e,4
    | g8( f) c'2 fis,4
    | a8( g) c2 g4

% 70
    | bes8( a) f'2 b,4
    | c16[(\f g'8.) g8-. g-.] g-. g-. g-. g-.
    | \grace { a32 } g16[( fis8.) fis8-. fis-.]-. fis-. fis-. fis-. fis-.
    | g16[( bes8.) bes8-. bes-.] bes bes bes bes
    | bes16[( a8.) a8-. a-.] a a a a
    | \grace { bes32 } a16[( gis8.) gis8-. gis-.] 
      \grace { bes32 } a16[( g8.) g8-. g-.]
    | \grace { a32 }
 g16[( f8.) f8-. f-.] bes4 d
    | a,2 \afterGrace e'2\startTrillSpan { d16 [e] \stopTrillSpan }  |
    | d'16[( a8.) a8-. a-.] bes16[( g8.) g8-. g-.]
    | f4:\f a: d: f,:

% 70
    | es4 <es c'>2 es4
    | d: c: bes: a:
    | g4 g'2 f4
    | e! <e c'> <e c'> r
    | f16[(\p c8.) c8-. c-.] c-. c-. c-. c-.
    | \grace { d32 } c16[( bes8.) bes8-. bes-.] bes-. bes-. bes-. bes-.
    | \grace { c32 } bes16[( a8.) a8-. a-.] a-. a-. a-. a-.
    | \grace { bes32 } a16[( g8.) g8-. g-.] 
      \grace { a32 } \raiseBeam g16[( f8.) \grace { g32 } f16( e8.)]
    | f'16[(\f c8.) c8-. c-.] c-. c-. c-. c-.
    | \grace { d32 } c16[( bes8.) bes8-. bes-.] bes-. bes-. bes-. bes-.

% 80
    | \grace { c32 } bes16[( a8.) a8-. a-.] a-. a-. a-. a-.
    | \grace { bes32 } a16[( g8.) g8-. g-.] \grace { a32 } \raiseBeam g16[( f8.) \grace { g32 } f16( e8.)]
    | f4 <a f'> r8. c16[ a'8. f16]
    | c'4 <a, c'> r8. f'16[ c'8. a16]
    | g8 g4 g g g8 ~
    | g g4 g g g8
    | g2: g:
    | g4 r r2
    | \grace { bes,32 } a8.(\p\trill g32 a) r4 \grace { c32 } bes8.(\trill a32 bes) r4
    | c4. d16( e \tuplet 3/2 { f8)-. e-. d-. c-. bes-. a-. }

% 90
    | g8.(\trill f32 g) r4 a8.(\trill g32 a) r4
    | bes4. e16( f \tuplet 3/2 { g8)-. f-. e-. d-. c-. bes-. }
    | a8.(\trill g32 a) r4 bes8.(\trill a32 bes) r4
    | c4. d16( e \tuplet 3/2 { f8)-. e-. d-. c-. bes-. a-. }
    | g8.(\trill f32 g) r4 a8.(\trill g32 a) r4
    | bes4. e16( f \tuplet 3/2 { g8)-. f-. e-. d-. c-. bes-. }
    | a4 r r2
    | bes4 bes2 \grace { c16 } bes8( a16 g)
    | f4 r r2
    | bes4 bes2 \grace { c16 } bes8 a16 g

% 110
    | f2:\f as':
    | b,,4 d''8.( b32 c) d4 f,
    | <g, c e> g'8.( e32 f) g4 bes,!
    | <c, f a> c'': d: bes!:
    | a!2: g:
    | <f, a f'>4 r r2
    | c''16[(\p bes8.) bes8-. bes-.] bes16[( a8.) a8-. a-.]
    | \grace { a8 } g4 f8( e) f( a) c,4
    | c16[( bes8.) bes8-. bes-.] \grace { c32 } bes16[( a8.) a8-. a-.]
    | \grace { a8 } g4 f8( e) f( a) c,-. c''-.

% 120
    | c16[( bes8.) bes8-. bes-.] 
      \grace { c32 } bes16[( a8.) \grace { bes32 } a16( g8.)]
    | \grace { a32 } g16[( f8.) f8-. f-.] f f f f
    | fis2:\f fis:
    | g: bes4: d:
    | c: a bes: g
    | f!8( c) c-. c-. c4 a8\p r
    | g r a r bes r g r
    | f'(\f c) c-. c-. c4 a8\p r
    | g r a r bes r g r
    | \lowerDynamics f(\f c) c-. c-. a'( f) f-.f-.

% 130
    | c' a c a c a f c
    | f4 <f c' a'> <f a f'> <f c' a'>
    | <f a f'>2 r

    \bar "|."
}
