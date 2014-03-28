\version "2.18.2"
violinISecondMov =  \relative bes' {
    \key bes \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	bes8\p^\markup { \italic { con sordino } } f bes
	| d4 \grace {
\override Flag.stroke-style = #"grace"
   f16 
  \revert Flag.stroke-style }
 es8
	| \grace {
\override Flag.stroke-style = #"grace"
   d16 
  \revert Flag.stroke-style }
 c8 bes r
	| c( es g)
	| bes,( a) f'-.
	| es( d) r
	| c-. g'( f)
	| f,-. es'( d)
	| b16( c) d( es) f( g)
	
% 10
	| bes,8( a) r
	| bes\f f bes
	| d4 \grace {
\override Flag.stroke-style = #"grace"
   f16 
  \revert Flag.stroke-style }
 es8
	| \grace {
\override Flag.stroke-style = #"grace"
   d16 
  \revert Flag.stroke-style }
 c8 bes r
	| bes c d
	| f,( e) c'-.
	| bes( a) r
	| f[ ~ f16 g32( a] bes[ c d e)]
	| f8 c a
	| \tuplet 3/2 { g16( bes d) } f,8 e

% 20
	| f r16 a( c f)
	| a( f) a( f c a)
	| c16( bes) % The autograph has c8( bes)
	  r16 bes( e g)
	| bes( g) bes( g e bes)
	| d( c) r8 r
	| r r es,!16.\trill d32
	| d4 es16.\trill d32
	| d8 d' r16 d
	| c( a) c( bes) g( e)
	| f8 r es!16.\trill d32

% 30
	| d4 es16.\trill d32
	| d4 es16.\trill d32
	| d8 f' r
	| a,\p \grace {
\override Flag.stroke-style = #"grace"
   c16 
  \revert Flag.stroke-style }
 bes8[ a16 g]
	| f8 d'(\f c)
	| r f,( e)
	| r d'( c)
	| r f,( e)
	| f16( g f g f g)
	| f4 r8
    }

    \repeat volta 2 {
	f'8\p c f
	| a,4 bes8 es4 d8
	| d\trill c r
	| f c f
	| a,4 bes8
	| es4 des8
	| des\trill c r
	| d,4\f fis'16\trill e32 fis
	| g16( d!) c( a) bes( g)
	| c,4 e'16\trill( d32 e)
	| f16( c) bes( g) a( f)
	| f4 a'16\trill g32 a
	| bes16( f) es( c) d( bes)
	| g'8-. f16( es) d( c)
	| bes8( a) r
	| bes\p f bes
	| d4 \grace {
\override Flag.stroke-style = #"grace"
   f16 
  \revert Flag.stroke-style }
 es8
	| \grace {
\override Flag.stroke-style = #"grace"
   d16 
  \revert Flag.stroke-style }
 c8 bes r
	| c( es g)

% 60
	| bes,( a)f'-.
	| es( d) r
	| c-. g'( f)
	| f,-. es'( d)
	| b16( c) d( es) f( g)
	| bes,!8( a) r
	| bes\f f bes
	| d4 \grace {
\override Flag.stroke-style = #"grace"
   f16 
  \revert Flag.stroke-style }
 es8
	| \grace {
\override Flag.stroke-style = #"grace"
   d16 
  \revert Flag.stroke-style }
 c8 bes r
	| as8 f d

% 70
	| bes4( as8)
	| \grace {
\override Flag.stroke-style = #"grace"
   bes16 
  \revert Flag.stroke-style }
 as8( g) r
	| bes[ ~ bes16 c32( d] es[ f g as])
	| bes8 g es
	| \tuplet 3/2 { f16 g es } d8 c
	| bes r16 d( f bes)
	| d( bes) d( bes f d)
	| f( es) r es( a! c)
	| es( c) es( c a es)
	| g( f) r8 r

% 80
	| r r as16.\trill g32
	| g4 as16.\trill g32
	| g8 es' r
	| d16( f) bes,( d) c( a)
	| bes8 r as16.\trill g32
	| g4 as16.\trill g32
	| g8 es' r
	| d16( f) bes,( d) c( a!)
	| bes8 r f
	| bes,( c d)

% 90
	| es16( f es d) c8-.
	| c( d es)
	| f16( g f es) d8-.
	| f16 d r f r d
	| es c r es r c
	| d f es8 d
	| d\trill c r
	| es16( c) es( c) d( f)
	| es( c) es( c) d( f)
	| g( es) d8 c

% 100
	| d16( c d es) f8
	| es16( c) es( c) d( f)
	| es( c) es( c) d( f)
	| g( c) bes8[ a]
	| bes f\p bes
	| d4 \grace {
\override Flag.stroke-style = #"grace"
   f16 
  \revert Flag.stroke-style }
 es8
	| \grace {
\override Flag.stroke-style = #"grace"
   d16 
  \revert Flag.stroke-style }
 c8 bes r
	| c( es g)
	| bes,4( a8)
	| c( bes) r

% 110
	| R4.*3
    }

% 113
    | bes8\f^\markup { \italic { senza sord. } } f bes
    | d4 \grace {
\override Flag.stroke-style = #"grace"
   f16 
  \revert Flag.stroke-style }
 es8
    | \grace {
\override Flag.stroke-style = #"grace"
   d16 
  \revert Flag.stroke-style }
 c8 bes r
    | bes f f
    | f4( d8)
    | d-. bes-. r
    | a'' bes r
    | es, d r

    \bar "|."
}
