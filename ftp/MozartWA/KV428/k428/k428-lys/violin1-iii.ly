violinIThirdMov = \notes \relative g {
    \key es \major
    \clef violin

    \noTupletBracket

    \partial 16*5

    \repeat volta 2 {
	\tiny \raiseBeam [g32( es'] \normalsize \once \property
	  Voice.DynamicText \override #'extra-offset = #'(-3 . -3)
	  )es'4-\f
	| <g,,2 es'> \grace { \raiseBeam [g32( es'] } )es'4
	| <as,,2 f'> [c'8(-\p )bes]
        | [bes( )as as( g as )g]
        | [g( )f f( es f )es]
	| [es( )d d( f as )f]
	| [f( )g] es4 \grace { \raiseBeam [g,32( es'] } \once
          \property Voice.DynamicText \override #'extra-offset =
	  #'(-3 . -3) )es'4-\f
	| <g,,2 es'> \grace { \raiseBeam [g32( es'] } )es'4
	| <c,2 es> [g''8(-\p )f]
	| [f( )es es( d es )d]

% 10
        | [d( )c c( bes c )bes]
	| a4 f' f
	| [f8.( g32 a] )bes4 [bes,8.( )d16]
	| f4 f f
	| [f8.( g32 a] )bes4 [bes,8.( )d16]
	| [c8.( es32 f] )g4 [a,8.( )c16]
	| bes4.( [c8 d )es]
	| [f( )bes f-. es-. d-. es-.]
	| [f( )bes f-. es-. d-. es-.]
	| [f( )bes f-. es-. d-. es-.]

% 20
	| [f( )bes] [bes(-\f a g )f]
	| [f( )es] d4 c
	| [c8(-\p )bes bes-. bes-. bes-. bes-.]
	| [bes( )c-. c-. c-. c-. d-.]
	| [c( )bes] bes4 r
	| R2.
	| r4 r4
    }

    \repeat volta 2 {
        r4
	| bes8-\p r es r bes r
	| c r es r r4
	| c8 r as! r g r

% 30
	| f r bes r r4
	| g8 r es r as r
	| f r bes r g r
	| c r as r g r
	| [f-. f( g as bes )g]
	| [f-. f( g as bes )g]
	| f2 \grace { \raiseBeam [g,32( es'] } \once
          \property Voice.DynamicText \override #'extra-offset =
	  #'(-3 . -3) )es'4-\f
	| <g,,2 es'> \grace { \raiseBeam [g32( es'] } )es'4
	| <as,,2 f'> [c'8(-\p )bes]
        | [bes( )as as( g as )g]

% 40
        | [g( )f f( es f )es]
	| [es( )d d( f as )f]
	| [f( )g] es4 \grace { \raiseBeam [g,32( es'] } \once
          \property Voice.DynamicText \override #'extra-offset =
	  #'(-3 . -3) )es'4-\f
	| <g,,2 es'> \grace { \raiseBeam [g32( es'] } )es'4
	| <as,,2 es'> \grace { \raiseBeam [f'32( c'] } )f4
	| <a,,2 f'> \grace { \raiseBeam [es'32( bes'] } )g'4
	| <bes,,2 g'> bes'4-\p ~
	| \slurDown bes( as )f \slurBoth
	| es r [es8.( )g16]
	| bes4 bes bes

% 50
	| [bes8.( c32 d] )es4 [es,8.( )g16]
	| [bes8 bes bes bes bes bes]
	| [bes8.( c32 d] )es4 [es,8.( )g16]
	| \slurDown [f8.( as32 bes] )c4 \slurBoth [d,8.( )f16]
	| es4.( [f8 g )as]
	| [bes( )es] [bes-. as-. g-. as-.]
	| [bes( )es] [bes-. as-. g-. as-.]
	| [bes( )es] [bes-. as-. g-. as-.]
	| [bes( )es] [es(-\f d c )bes]
	| [bes( )as] g4 f

% 60
	| [es8-. bes'-.] [es-.-\ff f-. g-. as-.]
	| [bes(-\sf )es bes-. as-. g-. as-.]
	| [bes(-\sf )es bes-. as-. g-. as-.]
	| [bes(-\sf )es bes-. as-. g-. as-.]
	| [bes( )es] [es( d c )bes]
	| [bes( )as] g4 f
	| [f8(-\p )es es-. es-. es-. es-.]
	| [es( )f f-. f-. f-. g-.]
	| [f( )es] es4 r
	| R2.

% 70
	| r4 r
    }

    \break
    \key bes \major

    \repeat volta 2 {
        [es8.(-\p )f16]
	| g4( es )d
	| c4.( es8 [c )es]
	| [d( f d )f b,( )d]
	| [c( es g fis f )es]
	| [d( f as! f d )b]
	| [c( g' fis f es )d]
	| [d( )c c( )bes bes( )a]
	| [g'8.(-\fp )f16] f4 [es8( )d]
	| [d( c es c bes )a]

% 80
        | bes4 r r
	| a'2( [c8 )a]
	| bes2.
	| [a8( bes c a es' )c]
	| bes4 r
    }

    \break

    \repeat volta 2 {
        r4
	| R2.
	| d,,2.(
	| es
	| d
	| )es(
	| )d4 r r
	| d( c )bes
	| c2.(
	| )des
	| f'4.( a8 [f a]
	| [g bes g bes e, )g]
	| [f( a c b bes )a]
	| [bes( c des bes g )e]
	| f2-\f ~ [f8( g]
	| [a bes c d es! )a,]

% 100
	| bes4.(-\p d8 [bes )d]
	| [c( es c es a, )c]
	| [bes( d f e es )d]
	| [c( d es c a )c]
	| bes4 r
    }
}
