violinISecondMov = \notes \relative a' {
    \key f \major
    \clef violin
    \time 6/8

    \noTupletBracket

    \repeat volta 2 {
	a8-\p r a [g( bes )g]
	| f4( [g16^\trill f32 )g] a8 r16 [a,16(-\mf c f]
	| )a8 r16 [c,16( f a] [)c8 c-.( )c-.]
	| c8-\p r c [d( e )f]
	| \slurDown c4( [bes16^\trill a32 bes] )a8 \slurBoth r16
          [c,( f a]
	| )c8 r16 \lowerText [a(_\cresc \raiseText c f] [)a8 a-.(
          )a-.]
	| a4.(-\f )b,8 r16 [b(-\p c )f]
	| [e8.( )f16 d8-.] c r r
    }

    \repeat volta 2 {
	c8-\p r c [b( )d g,]

% 10
	| g'4(-\f [f16. )d32] es8-. r r
	| es4(-\p [d16. )a32] bes8 r r  % bes8 without -. !
	| d4(-\pp [c16. )g32] a8 r16 [d,16( fis a] % ditto
	| )d8 r16 [d,16(-\mf fis a] [)d8 d(-. )d-.]
	| d r r c-\p r r
	| a r a [g( bes )g]
	| f!4( [g16^\trill f32 )g] a8 r16 [a,16(-\mf c f]
	| )a8 r16 \slurDown [c,16( f a] [)c8 \slurBoth c(-. )c-.]
	| c-\p r c [d( e )f]
	| \slurDown c4( [bes16^\trill a32 bes] )a8 r16
          [c,16( f a]

% 20
	| )c8 \slurBoth r16 \lowerText [f,16(-\cresc \restoreText a c]
          [)es8 c'(-. )c-.]
	| c4.(-\f )es,8 r16 [es-.-\p es( )d]
	| d8 r16 [e!-. e( )f] f8 r16 [d-.-\mf d( )c]
	| [c8.( )a16 f8] \grace { \cue c'16 \noCue } [bes8.( )g16 e8]
	| f8 r16 [e'(-\p f )bes] [a8.( )bes16 g8-.]
	| f8 r16 [e,(-\f f )d'] [a8.( )bes16 g8-.]
    }

    \alternative {
	{
	    f8 r16 [c'16(-\p a )c] f8 r r
	}
	{
	    f8 r16 [c'16(-\p a )c] f8 r16 [f,( c )f]
	}
    }

    | [as8-. as-. as-.] as-. r16 [as( f )as]
    | [c8-. c-. c-.] c-. r16 [c( g )as]

% 30
    | [f8-. f-. f-.] f-. r16 [e( f )g]
    | [c,8-. c-. c-.] c-. r r
    | [es'8-. es,-.] r [g'-. g,-.] r
    | [as'-. f,-.] r [d''-. f,-.] r
    | r16 [es(-\p )c' c-.] r c r [c c c] r b
    | [c8 c, c] c r r
    | c4.( ~ [c16 bes es des c )bes]
    | \lowerText [as(-\cresc \restoreText c )es es,(-. es-. )es-.] es4
      es'8 ~
    | [es16( as g ges f e] [es d des c des )bes]
    | [as( c )es es,(-. es-. )es-.] es4 es'8 ~

% 40
    | [es16( d! )des des(-. des-. )des-.] [des( c b c des )es]
    | [e!( f \lowerText g-\cresc \restoreText f as )f] [f( es as g f
      )es]
    | [es(-\mf des c des f )des] [des( c b c des )bes]
    | [as-. as-. c-. c-. es-. es-.] as,8 r16 [c,(-\p f )g]
    | [as8-. as-. as-.] as-. r16 [f( as )bes]
    | [c8-. c-. c-.] c-. r16 [c( as )g]
    | [f8-. f-. f-.] f-. r16 [e( f )g]
    | [c,8-. c-. c-.] c-. r r
    | [<g8-.-\f e' c'> c-.] r [<c-. g' e'> c-.] r
    | [<e-. c' g'> c-.] r [<g'-. e' c'> c,-.] r

% 50
    | r4 r8 r8 r16 [c(-\p e )g]
    | [c8(-. c-. )c-.] c4.(
    | )b4.(-\cresc [)bes8. c,16( g' )bes]
    | a8-\p r a [g( bes )g]
    | f4( [g16^\trill f32 )g] a8 r16 [a,16(-\mf c f]
    | )a8 r16 \slurDown [c,16( f a] \lowerText [)c8-\cresc \slurBoth
      \restoreText c-.( )c-.]
    | c8-\p r c [d( e )f]
    | \slurDown c4( [bes16^\trill a32 bes] )a8 \slurBoth r16 [c,(
      f a]
    | )c8 r16 \lowerText [a(_\cresc \raiseText c f] [)a8 a-.( )a-.]
    | a4.(-\f )b,8 r16 [b(-\p c )f]

% 60
    | [e8.( f16 )d8] c r r
    | c8-\p r c [b( )d g,]
    | g'4(-\f [f16. )d32] es8-. r r
    | es4(-\p [d16. )a32] bes8 r r
    | d4(-\pp [c16. )g32] a8 r16 [d,16( fis a]
    | )d8 r16 [d,16(-\mf fis a] [)d8 d(-. )d-.]
    | d r r c-\p r r
    | a r a [g( bes )g]
    | f!4( [g16^\trill f32 )g] a8 r16 [a,16(-\mf c f]
    | )a8 r16 \slurDown [c,16( f a] [)c8 \slurBoth c(-. )c-.]

% 70
    | c-\p r c [d( e )f]
    | \slurDown c4( [bes16^\trill a32 bes] )a8 r16 [c,16( f a]
    | )c8 \slurBoth r16 \lowerText [f,16(-\cresc \restoreText a c]
      [)es8 c'(-. )c-.]
    | c4.(-\f )es,8 r16 [es-.-\p es( )d]
    | d8 r16 [e!-. e( )f] f8 r16 [d-.-\mf d( )c]
    | [c8.( )a16 f8] \grace { \cue c'16 \noCue } [bes8.( )g16 e8]
    | f8 r16 [e'(-\p f )bes] [a8.( )bes16 g8-.]
    | f8 r16 [e,(-\f f )d'] [a8.( )bes16 g8-.]
    | f8 r16 [c'( a )c] f8 r16 [c( a c]
    | )es8 r16 [c( f, )c'] d8-. r16 \lowerText [d(-\cresc \restoreText
      bes d]

% 80
    | )f8 r16 [f(-\f d f] )as8 r r
    | r8 r16 \lowerDynamics [f,(-\p \restoreDynamics d )f]
      [a!8(-. a-. )a-.]
    | \lowerText a4.-\cresc \restoreText ~ [a8( )bes] r16 g(-\f
    | )f8 r r c'4(-\p [bes16. )g32]
    | a8 r r a4( [g16. )e32]
    | f8 r16 \lowerText [a,(-\cresc \restoreText c f] )a8 r16
      \slurDown [c,( f a]
    | )c8 \slurBoth r16 [f,( a )c] [f8-. f-.-\p f-.]
    | f r r r4 r8
}
