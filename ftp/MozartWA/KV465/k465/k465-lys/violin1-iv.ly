violinIFourthMov = \notes \relative g'' {
    \key c \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	[g8-.-\p g-.]
	| g4.( )c8
	| b4.( )f8
	| [e( c a )d]
	| [c( )b] [g-. g-.]
	| [c-. c-. cis-. cis-.]
	| [d-. d-. dis-. dis-.]
	| [e( g f )a]
	| [e( )d!] [g-. g-.]
	| g4.( )c8

% 10
	| b4.( )f8
	| [e( c a )d]
	| [c( )b] [c-. c-.]
	| [d-. d-. e-. e-.]
	| [f-. f-. fis-. fis-.]
	| [g( )e] \grace { \cue g16 } [f8 e16 d]
	| c8 r [c,-.-\f c-.]
	| b-. r [f''-\p f]
	| [f( g16 a] [g f e )d]
	| c8( b4 )c8

% 20
	| [cis8( )d] [c,-.-\f c-.]
	| b r [f''-\p f]
	| [f( g16 a] [g f e )d]
	| c8( b4 )c8
	| [e( )d] [g-. g-.]
	| g4.( )c8
	| b4.( )f8
	| [e( c a )d]
	| [b( e c )f]
	| [d(-\f )g] r4

% 30
	| r [g8-\p g]
	| g4.( )gis8
	| a4.( [f16 )d]
	| c4.( \grace { \cue e16 } )d8
	| c8 r [c,-\f c]
	| g r [e' e]
	| [c g' e c']
	| [g e' c g']
	| [e c' g e']
	| f2

% 40
	| f,,
	| [e8 c' a e']
	| [c a' e c']
	| es2
	| es,,
	| [d8 bes' g d']
	| [bes g' d d']
	| cis2
	| cis,,
	| d8 r [d' d]

% 50
	| d r [d' d]
	| d r [d, d]
	| [d d d' d]
	| d r [d,-\p d]
	| d r [b! b]
	| b2 ~
	| [b8( c16 d] [)e8 e]
	| [e( )a, d-. d-.]
	| [d( )g, c-. c-.]
	| [c8.( )d16 b8.( )c16]

% 60
	| [a8.( )b16 g8.( )a16]
	| [fis8( )a a-. a-.]
	| [a( ais-\f )b b]
	| b2 ~
	| [b8( cis16 d] [)e8 e]
	| [e( )a, d-. d-.]
	| [d( )g, c!-. c-.]
	| [c8.( )d16 b8.( )c16]
	| < { a2-\trill } \context Voice=x { s4 s8. \tiny [g32( )a] } >
	| g8 r [cis16(-\p )d cis d]

% 70
	| [e( )d cis d] [c( )b a g]
	| [g( )fis e d] [cis'( )d cis d]
	| [e( )d c! b] [a( )b c d]
	| [c( )b a g] [cis( )d cis d]
	| [e( )d cis d] [c( )b a g]
	| [g( )fis e d] [cis'( )d cis d]
	| [e( )d c! b] [a( )b c d]
	| [c( )b a g] [fis'( )g a g]
	| [fis( )e dis e] [d( )c b c]
	| [b( )c d  e] [fis( )g a g]

% 80
	| [fis( )e dis e] [d( )c b c]
	| [b( )c d e] [fis( )g a g]
	| [fis( )e dis e] [d( )c b c]
	| [c( )b e d] [cis(-\sf )d e d]
	| [c!(-\p )b e d] [cis(-\sf )d e d]
	| [c!(-\p )b e d] [cis(-\sf )d e d]
	| [c!(-\p )b e d] [cis(-\sf )d e d]
	| [c8(-\p b e )d]
	| d2(
	| es-\p

% 90
	| )bes
	| g4 r8 g(
	| [bes d f! )d]
	| es2(
	| )bes
	| g4 r8 g(
	| [bes d f )d]
	| es2(
	| )d
	| [d8( )c] c4 ~

% 100
	| c( )cis
	| d2(
	| )fis,
	| [g16-\f fis e d] [e fis g a]
	| [b! a g fis] [g a b c]
	| [e! d c b] [c d e fis]
	| [g fis e d] [e fis g a]
	| [b a g fis] [g a b c]
	| d2 ~
	| d4( cis

% 100
	| )c! [b8-. b-.]
	| [b( )c ais-. ais-.]
	| [ais( )b gis-. gis-.]
	| [gis( )a! fis-. fis-.]
	| [fis( )g! cis,-. cis-.]
	| d4.( )g8
	| b,4.( [c!16 )a]
	| g4 r
	| \parentShift [gis16(-\parentP a b c] [cis d e )d]
	% The (p) above is not present in the B&H edition
	| d4( )g8 r

% 120
	| a,4( )d8 r
	| c4( )b8 r
	| [gis16( a b c] [cis d e )d]
	| d4( )g8 r
	| g,4( \grace { \cue b16 } )a4
	| g8 r b  r
	| c  r a r
	| b r g' r
	| a r fis r
	| g r [e'-. e-.]

% 130
	| [e( )a, d-. d-.]
	| [d( )g, g-. g-.]
	| [g-. g-. g-. g-.]
	| [a( )g g-. g-.]
	| [g-. g-. g-. g-.]
	| [a( )g] r4
	| r4
    }

    \repeat volta 2 {
        [g8-.-\p g-.]
	| g4.( )c8
	| b4.( )f8
	| [es8( c as )d]

% 140
	| [c( )b] [g-. g-.]
	| [c( b c )es]
	| [d( cis d )f]
	| [es( g f )as]
	| [es( )d] [g-. g-.]
	| g4.( )c8
	| b4.( )f8
	| [es( c a! )d]
	| [b!( es c f]
	| [d g es )as]

% 150
	| [f(-\f )bes] r4
	| r [bes,8-\p bes]
	| bes4.( )es8
	| d4.( )as8
	| [g( )bes] r4
	| R2*2
	| r4 [c8-. c-.]
	| c4.( )f8
	| e!4.( )bes8

% 160
	| [a!( )c] r4
	| R2
	| r4 [es'8-.-\f es-.]
	| [es( )a,!] [c-. c-.]
	| [c( )fis,] [a-. a-.]
	| [a( )dis,] [b'!-. b-.]
	| [b( )e,!] g4
	| fis ais
	| b d
	| cis [cis8-. cis-.]

% 170
	| [cis( )fis,] a!4
	| gis bis
	| cis e
	| dis [dis8-. dis-.]
	| [dis( )gis,] [b!-. b-.]
	| [b( )e,] [gis-. gis-.]
	| [gis( )cis,] [e-. e-.]
	| [e( )a,] [cis'-. cis-.]
	| [cis( )fis,] [a-. a-.]
	| [a gis fis e]

% 180
	| <dis4 b'> r
	| r [b8-\p b]
	| b4.( )e8
	| dis4.( )a8
	| [gis( )b] r4
	| r [b8 b]
	| b4.( )e8
	| dis4.( )a8
	| [g!( )b] r4
	| r [b8 b]

% 190
	| b4.( )e8
	| e4.( )g8
	| [g( )f!] r4
	| R2
	| r4 [b,8-. c-.]
	| [d-. e-. f-. g-.]
	| [a( )g g g]
	| [a( )g a( )g]
	| [a( )g] r4
	| r [g8-.-\p g-.]

% 200
	| g4.( )c8
	| b4.( )f8
	| [e( c a )d]
	| [c( )b] [g-. g-.]
	| [c-. c-. cis-. cis-.]
	| [d-. d-. dis-. dis-.]
	| [e( g f )a]
	| [e( )d!] [g-. g-.]
	| g4.( )c8
	| b4.( )f8

% 210
	| [e( c a )d]
	| [c( )b] [c-. c-.]
	| [d-. d-. e-. e-.]
	| [f-. f-. fis-. fis-.]
	| [g e] \grace { \cue g16 } [f8( e16 )d]
	| c8 r [c,-. c-.]
	| b-. r [f''-\p f]
	| [f( g16 a] [g f e )d]
	| c8( b4 )c8
	| [cis( )d] [c,-.-\f c-.]

% 220
	| b r [f''-\p f]
	| [f( g16 a] [g f e )d]
	| c8( b4 )c8
	| [e( )d] [g-. g-.]
	| g4.( )c8
	| b4.( )f8
	| [e( \lowerText c-\cresc a )d]
	| [b( e c f]
	| [d-\f )g] r4
	| r [g8-\p g]

% 230
	| g4.( )gis8
	| a4.( [f16 )d]
	| c4.( \grace { \cue e16 } )d8
	| c r [c,-\f c]
	| g r [e' e]
	| [c g' e c']
	| [g e' c g']
	| [e c' g e']
	| f2
	| f,,

% 240
	| [e8 c' g e']
	| [c g' e e']
	| d2
	| d,,
	| [c8 a' e c']
	| [a e' c c']
	| bes2
	| bes,,
	| [a8 f' c a']
	| [f c' a a']

% 250
	| c2
	| c,,
	| b!8 r [g' g]
	| g r [g' g]
	| g r [g, g]
	| [g g g' g]
	| g r [g,-\p g]
	| g r [e'! e]
	| e2 ~
	| [e8( f16 g] [)a8 a]

% 260
	| [a( )d, g-. g-.]
	| [g( )c, f-. f-.]
	| [f8.( )g16 e8.( )f16]
	| [d8.( )e16 c8.( )d16]
	| [b8( )d d-. d-.]
	| [d( dis-\f )e e-.]
	| e2 ~
	| [e8( fis16 g] [)a8 a-.]
	| [a( )d,! g-. g-.]
	| [g( )c, f-. f-.]

% 270
	| [f8.( )g16 e8.( )f16]
	| < { d2-\trill } \context Voice=x { s4 s8. \tiny [c32( )d] } >
	| c8 r [fis16(-\p )g fis g]
	| [a( )g fis g] [f( )e d c]
	| [c( )b a g] [fis'( )g fis g]
	| [a( )g f e] [d( )e f g]
	| [f( )e d c] [fis( )g fis g]
	| [a( )g fis g] [f( )e d c]
	| [c( )b a g] [fis'( )g fis g]
	| [a( )g f e] [d( )e f g]

% 280
	| [f( )e d c] [b'( )c d c]
	| [b( )a gis a] [g( )f e f]
	| [e( )f g a] [b( )c d c]
	| [b( )a gis a] [g( )f e f]
	| [e( )f g a] [b( )c d c]
	| [b( )a gis a] [g( )f e f]
	| [f(-\p )e a g] [fis(-\sf )g a g]
	| [f!(-\p )e a g] [fis(-\sf )g a g]
	| [f!(-\p )e a g] [fis(-\sf )g a g]
	| [f!(-\p )e a g] [fis(-\sf )g a g]

% 290
	| [f!8(-\p e a )g]
	| g2(
	| as-\p
	| )es
	| c4 r8 c(
	| [es g bes )g]
	| as2(
	| )es
	| c4 r8 c(
	| [es g bes )g]

% 300
	| as2(
	| )g
	| [g8( )f] f4 ~
	| f( )fis
	| g2( )b,!
	| c
	| c,(
	| )des4 r
	| R2

% 310
	| des''2(-\p
	| )as
	| f4 r8 f(
	| [as c es )c]
	| des2(
	| )as
	| f4 r8 f(
	| [as c es )c]
	| des2(
	| )c

% 320
	| g(
	| )b,!
	| c(
	| )fis,
	| g(
	| )b,
	| [c16-\f b a g] [a b c d]
	| [e! d c b] [c d e f]
	| [a! g f e] [f g a b]
	| [c b a g] [a b c d]

% 330
	| [e d c b] [c d e f]
	| g2 ~
	| g4( fis
	| )f! [e8-. e-.]
	| [e( )f dis-. dis-.]
	| [dis( )e] [cis'-. cis-.]
	| [cis( )d b-. b-.]
	| [b( )c! fis,-. fis-.]
	| g4.( )c8
	| e,4.( [f!16 )d]

% 340
	| c4 r
	| [cis16(-\p d e f] [fis g a )g]
	| g4( )c8 r
	| d,4( )g8 r
	| f!4( )e8 r
	| [cis,16( d e f] [fis g a )g]
	| g4( )c8 r
	| c,4( \grace { \cue e16 } )d4
	| c8 r e r
	| f r d r

% 350
	| e r c' r
	| d r b r
	| c r [a'-. a-.]
	| [a( )d, g-. g-.]
	| [g( )c, c-. c-.]
	| [c c c c]
	| [d( )c] [c'-. c-.]
	| [c c c c]
	| [d( )c] [c c]
	| [c( )b b( )bes]

% 360
	| [bes( )a a a]
	| [a a a( )as]
	| [as( )g g g]
	| [g( )f f f]
	| [f( )e e e]
	| [e( )d d d]
	| [e( )d d-. d-.]
	| [e( )d d-. d-.]
	| [e( )d d-. d-.]
	| [es( )d d-. d-.]

% 370
	| [es( )d d-. d-.]
	| r4
    }

    [g8-.-\p g-.]
    | g4.( )c8
    | b4.( )f8
    | [e!(-\cresc c a d]
    | [b e c )f]
    | [d(-\f )g] r4
    | r [g8-\p g]
    | g4.( )gis8
    | a4.( [f16 )d]

% 380
    | c4.( [e16 )d]
    | c8 r g'4 ~
    | [g8 a16( )g] g4 ~
    | [g8 fis16( )g] g4 ~
    | [g8 a16( )g] g4 ~
    | [g8 fis16( )g] g4 ~
    | [g8 a16( )g] g4 ~
    | [g8-\f g-.] r g
    | [g8.(-\p )a16 g8.( )a16]
    | [g16( a g a] [g-\cresc a g )a]

% 390
    | [g( a g a] [g a g )a]
    | [g8(-\f )e'] r d
    | r c r a
    | r g r b,
    | c4 r
    | f'2(-\p
    | )e4 r
    | f,2(-\mf
    | )e4 r
    | f,2(-\f

% 400
    | [)e8 g'] r g
    | [g8.(-\p )a16 g8.( )a16]
    | [g16( a g a] [g-\cresc a g )a]
    | [g( a g a] [g a g )a]
    | [g8(-\f )e'] r d
    | r c r a
    | r g r b,
    | c4( cis-\p
    | d e
    | )f [a8-. a-.]

% 410
    | [a( )d,] r4
    | c!4( cis
    | d e
    | )f [a8-. a-.]
    | [a( )d,] r4
    | r [a8-.-\f a-.]
    | [a( )d, g-. g-.]
    | [g( )c,] <g d' b'> r
    | <g e' c'> r <g' d' b'> r
    | <g e' c'> r r4 \bar "|."
}
