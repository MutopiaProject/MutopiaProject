\version "2.18.2"
violinIISecondMov =  \relative f' {
    \key bes \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	f8\p^\markup { \italic { con sordino } } d f
	| bes4.
	| \grace {
\override Flag.stroke-style = #"grace"
   bes16 
  \revert Flag.stroke-style }
 a8 bes r
	| g( es c)
	| c f16( a) c8-.
	| a( bes) r
	| r a( bes)
	| r c,( bes)
	| b16( c) d( es) f( g)

% 10
	| bes,!8( a) r
	| bes16\f d d4:16
	| f: bes16 bes
	| a8: bes: c:
	| f,: es: d:
	| c4.:
	| c4.:
	| c4: d16 bes'
	| a8: a: f:
	| f16 d c8: bes:

% 20
	| \tuplet 3/2 { a16( bes c) } \tuplet 6/4 { c4.: }
	| \tuplet 3/2 { a16( bes c) } \tuplet 6/4 { c4.: }
	| \tuplet 3/2 { g16( c e) } \tuplet 6/4 { e4.: }
	| \tuplet 3/2 { c16( e g) } \tuplet 6/4 { g4.: }
	| bes16( a) r8 r
	| r r c,16.\trill bes32
	| bes4 c16.\trill bes32
	| bes8 bes' r16 bes
	| a( f) a( g) e( bes)
	| a8 r c16.\trill bes32

% 30
	| bes4 c16.\trill bes32
	| bes4 c16.\trill bes32
	| bes8 as' r
	| f\p \grace {
\override Flag.stroke-style = #"grace"
   a!16 
  \revert Flag.stroke-style }
 g8 f16 e
	| f8 bes(\f a)
	| r a,( g)
	| r bes'( a)
	| r a,( g)
	| a16( bes a bes a bes)
	| a4 r8
    }

    \repeat volta 2 {
% 40
	| f'4.:\p
	| \repeat unfold 7 { f: }
	| <fis a>4:\f <d c'>16 <d c'>
	| <g, d' bes'>8 r r

% 50
	| <g e'>4: <g' bes>16 <g bes>
	| <f a>8 r r
	| <c es!>4.:
	| d16( d')c( a) bes( d,)
	| bes-. bes'( a g) f( es)
	| d8( c) r
	| f\p d f
	| bes4.
	| \grace {
\override Flag.stroke-style = #"grace"
   bes16 
  \revert Flag.stroke-style }
 a8 bes r
	| g( es c)

% 60
	| c f16( a) c8-.
	| a( bes) r
	| r a( bes)
	| r c,( bes)
	| b16( c) d( es) f( g)
	| bes,!8( a) r
	| bes16\f d d4:
	| f4: bes16 bes
	| a-. a-. bes-. f( es f)
	| d4: as16 as

% 70
	| as4: bes16 bes
	| bes4.:
	| bes:
	| bes4: c16 c
	| \tuplet 3/2 { d[( es c)] } bes8[ a!]
	| \tuplet 3/2 { bes16( c d) } d4:
	| \tuplet 3/2 { d16( es f) } f4:
	| \tuplet 3/2 { a,16( bes c) } c4:
	| \tuplet 3/2 { c16[( bes a)] } a[ a a c]
	| es( d) r8 r

% 80
	| r r f16.\trill es32
	| es4 f16.\trill es32
	| es8 bes r
	| bes16( d) d( f) es( c)
	| d8 r f16.\trill es32
	| es4 f16.\trill es32
	| es8 bes r
	| bes16( d) d( f) es( c)
	| d8 r f
	| bes,( a bes)
% 90
	| c16( d c bes) a8-.
	| a( bes c)
	| d16( es d c) bes8-.
	| d16 bes r d r bes
	| c a r c r a
	| bes d c8 bes
	| bes\trill a r
	| c16( a) c( a) bes( d)
	| c( a) c( a) bes( d)
	| es( c) bes8 a

% 100
	| bes16( a bes c) d8
	| c16( a) c( a) bes( d)
	| c( a) c( a) bes( d)
	| es8 d c
	| bes4 r8
	| r f'\p bes
	| a bes r
	| g( es c)
	| r es es
	| es( d) r

% 110
	| R4.*3
    }

    | bes'8\f^\markup { \italic { senza sord. } } f bes
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
    | es' d r

% 120
    | c bes r

    \bar "|."
}
