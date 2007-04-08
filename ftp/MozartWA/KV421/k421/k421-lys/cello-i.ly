celloFirstMov = \notes \relative d {
    \key d \minor
    \clef bass

    \noTupletBracket

    \repeat volta 2 {
	\slurDown \stemUp  d2(^#'(italic "sotto voce") c
	| bes a
	| g )a \stemBoth \slurBoth
	| d,4 r r2
	| r8 [d''(-.-\f d-. )d-.] r [c(-. c-. )c-.]
	| r [b(-. b-. )b-.] r [bes(-. bes-. )bes-.]
	| a2 r
	| r r8 [a-.-\f f-. d-.]
	| [a-\f a'-\p a a] [a a a a]

% 10
	| [a( cis d )gis,] a r r4
	| [a,8-\f a'-\p a a] [a a a a]
	| [a( cis d )gis,] a4 r
	| r2 r4 r8 [f16( )d]
	| [cis gis(-\fp a gis] [a gis a )f] e4.-\f e'8(
	| [)es es-.] r d a4 r8 a'
	| [bes( a g f] )e!4 r8 r
	| f4(-. f-._\cresc f-. )f-.
	| bes, r8 bes -\p c4 [c'8.(-\fp )b16]
	| b4^\trill ~ [b8.( a32 b] )c4 r

% 20
	| r2 r8 [c,(-\f )c' bes!-.]
	| bes4( )a r8 [bes,( )bes' as-.]
	| g2 c, ~
	| c4 ~ [c8.( d32 e] )f8 r bes, r
	| [a( bes )c c-.] f,4 r
	| a r bes r
	| c r d r
	| a r bes r
	| c r f r
	| a, r bes r

% 30
	| c r d r
	| a-\f r bes r
	| r8 [a bes c] f(-\p )es4-\sf [d16.(-\p )c32]
	| [bes8-. a-. g-. f-.] r8 bes c4
	| f8( )es'4 [d16.(-\p )c32] [bes8-. a-. g-. f-.]
	| r8 bes, c4 f,8 r r4
	| R1
	| r2 r4 [bes'8-. bes-.]
	| [a-. a-. e-. e-.] [f-. d-. a-. bes-.]
	| [a d c c,] f4 r8 c''
	| f,4 r8 c f,4.( )f'8
    }

    \alternative {
        {
	    | < { f4.( )e8 } \context Voice=x { s8 s8_\cresc } > e4.(
              )a8
	}

	{
	    | < { f4.( )d8 } \context Voice=x { s8 s8_\cresc } > d4.(
              )bes8
	}
    }

    \repeat volta 2 {
        | es2(-\f des
	| ces bes
	| as )ges
	| f1-\p
	| \lowerDynamics [e!8.(-\pp^\trill )dis16] \restoreDynamics
          [e8 e] e2
	| [e8.(^\trill )dis16] [e8 e] e2
	| [e8.(^\trill )dis16] [e8 e] e2 ~

% 50
	| e1
	| [f8 b'(-\f )c gis-.-\p] [a-. d,-. e-. e-.]
	| r2 e(-\fp
	| [)f8 d(-\f )c b-.-\p] [c-. d-. e-. e,-.]
	| R1
	| r8 [d'(-\p cis )d] r [f( e )d]
	| r [e( dis )e] r [g( f )e]
	| d'2-\f d,4. d8
	| [d8.^\trill cis16] [d8 d] d2
	| c!1

% 60
	| bes4 r8 bes'( )g4. bes8(
	| )c4. e,8( )c4. e8(
	| )f4. a8( )f4. a8(
	| )bes4. d8( )bes4. d,8(
	| )e4. \LowerText g8(_\cresc )d4. g8( \restoreText
	| )cis,4. e8( )a,4. a'8(
	| )d4 [cis8( c] b4 )bes
	| a r8 [f'16.( )d32] cis4 r
	| a,1-\fp ~
	| a-\fp ~

% 70
        | a2-\fp ~ a4 ~ \slurDown \times 2/3 { [a16 cis( e] } \times
          2/3 { [)a a-. a-.] }
	| \stemUp d,2(^#'(italic "sotto voce") c
	| bes a
	| g )a \stemBoth \slurBoth
	| d,4 r r2
	| r8 [d''(-.-\f d-. )d-.] r [c(-. c-. )c-.]
	| r [b(-. b-. )b-.] r [bes(-. bes-. )bes-.]
	| a2 r
	| r r8 [a-.-\f f-. d-.]
	| [a-\f a'-\p a a] [a a a a]

% 80
	| [a( cis d )gis,] a r r4
	| [a,8-\f a'-\p a a] [a a a a]
	| [a( cis d )gis,] a4 r
	| r2 r4 r8 [f16( )d]
	| [cis gis(-\fp a gis] [a gis a )f] e4.-\f e'8(
	| [)f f-.] r fis r g r a
	| [c(-\sf )bes] r gis(-\p a4 )b
	| [d8(-\sf )c] r cis,(-\p d4 )e
	| \lowerText [f8( cis d_\cresc )e] [f( g bes )g]
	| \restoreText a4-\p r r2

% 90
	| r4 [a,8.(-\fp )bes16] bes4^\trill ~ [bes8.( a32 bes]
	| [)a8 a(-\f )a' g-.] g4( )fis
	| r8 [g,( )g' f-.] e2
	| a,2 ~ a4 ~ [a8.( b32 cis]
	| )d8-\p r g, r [f( g )a a]
	| d,4 r f r
	| g r a r
	| bes r f' r
	| g r a( )a,
	| d r f r

% 100
        | g r a r
	| bes r f-\f r
	| g r [a8 bes g a]
	| d,(-\p c4-\sf [bes16. )a32] [bes8-.-\p a-. bes-. fis'-.]
	| [g-._\cresc f!-. e-. g-.] [f(-\f )g a a,]
	| d8(-\p c'!4-\sf [bes16.-\p )a32] [bes8-. a-. bes-. fis-.]
	| [d-._\cresc f!-. e-. g-.] [f(-\f )g a a,]
	| d r r4 r2
	| R1
	| r4 [g8-.-\p g-.] [f-. f-. cis-. cis-.]

% 100
        | [d(-\sf )c!] r4 [b8(-\sf )bes] r4
	| [a8-\p g a a] d,4 r8 a''8
	| d,4 r8 a d,4.( )d'8
    }

    \alternative {
        {
	    | < { d4.( )f8 } \context Voice=x { s8 \lowerText
              s8_\cresc } > f4.( )bes,8
	}

	{
	    | \lowerText [es8(_\cresc d c )d] b4.( )d8 \restoreText
	}
    }

    | [e!8( d cis )d] a4.( )f'8
    | g,4.(-\f )es'8 [cis( a bes )f]
    | [g( )bes a a] d4 r8 a'8-\p
    | d,4 r8 a8 d4 r8 a'-\f
    | d,4 r r2
}
