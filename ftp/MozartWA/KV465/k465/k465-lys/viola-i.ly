violaFirstMov = \notes \relative as {
    \key c \major
    \clef alto

    \noTupletBracket
    \property Voice.tupletSpannerDuration = #(make-moment 1 4)

    r4 r as-\p ~
    | as( g )fis
    | \LowerText g4.(-\cresc [a!8 b )c]
    | [d(-\f a'] )b r r4
    | r r \lowerDynamics ges,-\p ~
    | ges( f! )e
    | \LowerText f4.(-\cresc  [g!8 a )bes]
    | [c(-\f g'] )a r r4
    | r8 \lowerDynamics [e,(-\p f g as )a]

% 10
    | bes4. [es,8( f )g]
    | as2.
    | [g8 g'(-\cresc f es d )c]
    | d4.-\f g,8 g'4 ~
    | g r r8 bes,(
    | [c d es e f )fis]
    | g4 r r8 fis(-\p
    | )g4 r r8 fis,(
    | )g4 r8 [f!( es )fis]
    | g4. \lowerDynamics e!8(-\sf \LowerDynamics )f4-\p ~

% 20
    | f4. \lowerDynamics e8(-\sf \LowerDynamics )f4-\p ~
    | f4. [ais8(-\sfp b )g]
    | d'2.-\fp-\fermata

    \time 4/4

    \repeat volta 2 {
	| [c8-\p c c c] [c c c c]
	| [c c c c] [c c c c]
	| [b b a a] [g g f f]
	| [e e e e] [e' e b b]
	| [c c c c] [c' c b b]
	| [a( gis a )gis] [a a g g]
	| [f f e e] [d d fis, fis]

% 30
	| g2 r
	| [e8(-\f g c )g] e4 r
	| r2 r8 [g' g g]
	| [fis( )g d b] g4 r
	| r2 r8 [c'8 c c]
	| [b( )c g-. e-.] c2-\sf ~
	| \lowerDynamics c-\p c-\sf ~
	| \lowerDynamics c-\p c-\sf
	| \lowerDynamics [cis8(-\p )e e-. e-.] [e( )d d-. d-.]
	| [d( )d' d-. d-.] [d( )c! c-. c-.]

% 40
	| f,4 r d r
	| c r e r
	| f r d r
	| c-\f e,( g )b
	| b2( )c4 r
	| \lowerDynamics g2-\p ~ [g8 g( a )b]
	| d4( [)c8.-\trill b16] c4( )f
	| e4.(-\cresc )d8 c4.( )b8
	| a2-\f ~ [a8 d,-.] d'4 ~
	| d2 ~ [d8 d-.] d'4 ~

% 50
	| d d,4. d8-. d'4 ~
	| d8 r [b16(-\p a b a] )g8 r [g16( fis g fis]
	| )e8 r [e16(-\f dis e dis] )e2
	| [d!8(-\p )a d-. d-.] r [cis cis cis]
	| [d( )a d-. d-.] r [cis cis cis]
	| [d-. cis-. d-. cis-.] d4 r
	| \lowerDynamics [b8(-\f )g b-. b-.] b4 r
	| <c!2-\p d> ~ <c4 d> r
	| fis8-\f fis4 fis8 fis4 r8 d
	| d4 r [g,16(-\p b a c] [b d c e]

% 60
	| )d4 r r2
	| d2. gis4(
	| )a2. c,4 ~
	| c2. fis4(
	| )g2. fis4(
	| )e8 r [e( )g] r4 [a8( )fis]
	| r4 [dis8( )fis] r4 [g8( )e]
	| r4 [c16(-\p b d c] )e8 r [a,16( gis b )a]
	| c2-\f ~ c8 d4( )c8
	| b4 [d8( )g,] a2

% 70
	| [b8 b b b] [c c c c]
	| b4 r r2
	| g'4-\p g g2 ~
	| g4 r r2
	| r4 r8 f!(-\f [e es d )a]
	| d2 r
	| R1
	| r2 r4 g,-\p ~
	| g [g'8.( )e16] d4.( )c8
	| \times 2/3 { [b8 \lowerDynamics d'-\f c] [b a g]
          \noTupletNum [fis e d] [c(-\trill b )c] }

% 80
	| b4 r r d-\p ~
	| \times 2/3 { [d8 d' c] [b a g] [fis e d] [c(-\trill b )c] }
	| b4 r r d-\f ~
	| \times 2/3 { [d8 d' c] [b a g] [fis e d] [c b a] } \tupletNum
	| [g8 g] g4 r2
	| [g'8 e,] e4 r2
	| [fis'8 fis,] fis4 r2
	| d4 r r2
	| b'2 d
	| g, a

% 90
	| d \stemUp c4.(-\trill [b16 )c] \stemBoth
	| b4 \slurHeadToStem \raiseSlur d(-\p b )g
	| fis( a fis )d
	| \slurStemToStem b'( d b )g
	| fis( a fis )d
	| d'2 ~ [d8 d( e )fis]
	| a4( )g r2
	| d2 ~ [d8 d( e )fis]
	| a4( )g r2
	| r8 [d d d] d4 r

% 100
	| r8 [e e-\cresc e] e4 r
	| r8 [f! f f] f4 r
	| r8 [g g g] g4 r
	| bes2-\f ~ [bes8( a g )f]
	| f2 ~ f4 r
	| r [d8(-\p b] [a g a )f]
	| [e( d e \LowerText f-\cresc] [fis g a )b]
    }

    \repeat volta 2 {
        | c4-\p r r2
	| c2 ~ [c8( d e )f]
	| a2( )g4 r

% 110
	| c,2 ~ [c8( d e )f]
	| a2( )g4 r
	| cis,2 ~ [cis8( e g )a]
	| c2( )bes4 r
	| e,2-\cresc ~ [e8( g bes )g]
	| es'2( )d4 r
	| c,2-\f ~ [c8( f a )f]
	| [a c-.] c,4-. r8 dis-. a4-.
	| r8 [a-. c-. f,-.] [c'-. e,-. c'-. dis,-.]
	| e4 b' a a

% 120
        | [b8-. gis-. b-. e,-.] [c'-. a-. a'-. dis,-.]
	| e4 r r2
	| r2 r8 [fis,(-\p gis )a]
	| [a( )gis gis-. gis-.] gis4 r
	| r2 r8 [fis(-\p gis )a]
	| [a( )gis gis-. gis-.] gis4 r
	| gis8-\f gis4 gis gis gis8 ~
	| gis gis4 gis [gis8( )b e-.]
	| e4 r8 e-. g!4-. r8 e-.
	| g4-. r r2

% 130
	| [f8-.-\p f-. g-. g-.] [f-. f-.] [e(-\trill d16 )e]
	| [f8-. f-. g-. g-.] [f-. f-.] [e(-\trill d16 )e]
	| fis8 fis4-\f fis fis fis8 ~
	| fis fis4 fis fis fis8 ~
	| fis fis4 fis [a8( )fis fis]
	| g4 r8 d'-. b4-. r8 b-.
	| d,4-. r r2
	| [es8-.-\p es-. f-. f-.] [es-. es-.] [d(-\trill c16 )d]
	| [es8-. es-. f-. f-.] [es-. es-.] [d(-\trill c16 )d]
	| [es8 es es es] [e e f f]

% 140
	| [f f f f] [d d es es]
	| [es es es es] [cis cis d d]
	| [d d d d] [b! b c! c]
	| c4-\f r8 c'-. es,4-. r8 a-.
	| c,4-. r8 c-. [es-. a,-. c-. fis,-.]
	| g4 d' c c
	| [d8-. b-. d-. g,-.] [es'-. c-. c'-. fis,-.]
	| g4 r r2
	| r r8 \lowerText [a,!(-\p b )c]
	| [c( )b b-. b-.] b4 r

% 150
	| r2 r8 [a( b )c]
	| [c( )b] r4 g2-\f ~
	| [g8( b d f] [g f d )b]
	| g4 r <b-\p d> r
	| <g f'> r r2
	| R1
	| e'2(-\p )f4 r
	| R1
	| b2( )c4 r
	| [c8( b c b] )c4 r

% 160
	| [a8( gis a gis] )a4 r
	| [f8( e f cis] [d cis d )fis]
	| g4 g,( b )a
	| c r c,2-\f ~
	| [c8 cis( d )e] f2 ~
	| [f8 fis( g )a] b4 d, ~
	| [d8 dis( e )fis] g2 ~
	| [g8 gis( a )b] c4( )bes
	| a-\p r c2-\sf ~
	| \lowerDynamics c-\p c-\sf

% 170
	| [cis8(-\p )e e-. e-.] [e( )d d-. d-.]
	| [d( )d' d-. d-.] [d( )c! c-. c-.]
	| a, r [a'16(-\f gis a gis] )a2
	| [g!8(-\p )d g-. g-.] r [fis fis fis]
	| [g( )d g-. g-.] r [fis fis fis]
	| [g-. fis-. g-. fis-.] g4 r
	| [e8(-\f )c e-. e-.] e4 r
	| <f,2-\p g> ~ <f4 g> r
	| [d'8(-\f )b d-. d-.] [d( )b b-. b-.]
	| c4 r [c16(-\p e d f] [e g f a]

% 180
	| )g4 r r2
	| g2. cis4(
	| )d2. a,4(
	| )gis2. gis'4(
	| )a2. a,4
	| a8 r [c( )f] r4 [c'8( )a]
	| r4 [g,8( )c] r4 [e8( )g]
	| [a16( g bes a] )c8 r [a,16( g bes a] )c8 r
	| [f16( e g f] )a8 r r[f,8-.-\f g-. a-.]
	| [c c c c] [c c c c]

% 190
	| [c c c c] [b b f' f]
	| e4 r r2
	| c'4-\p c c2 ~
	| c4 r r2
	| r4r8 bes8(-\f [a as g )d]
	| g2 r
	| R1
	| r2 r4 c,-\p ~
	| c [c'8.( )a16] g4.( )f8
	| \times 2/3 { [e8 \lowerDynamics g-\f f] [e d c] \noTupletNum
          [b a g] [f(-\trill e )f] }

% 200
	| e4 r r b''(-\p
	| c )g r b,(
	| c )g r g-\f ~
	| \times 2/3 { [g8 g' f] [e d c] [b a g] [f e d] } \tupletNum
	| [c8 c'] c4 r2
	| [c,8 a'] a4 r2
	| [d,8 b'] b4 r2
	| g4 r r2
	| [cis8 cis cis cis] [g' g g g]
	| [f f f f] [es es es es]

% 210
	| [e! e e e] [f f f f]
	| e4 g,(-\p e )c
	| \slurStemToStem b'( d b )g
	| \stemDown e'( g e )c \stemBoth
	| b'( d b )g
	| g,2 ~ [g8 g( a )b]
	| d4( )c r2
	| g'2 ~ [g8 g( a )b]
	| d4( )c r2
	| r8 [g g g] g4 r

% 220
	| r8 [a a-\cresc a] a4 r
	| r8 [bes bes bes] bes4 r
	| r8 [c c c] c4 r
	| es2-\f ~ [es8( d c )bes]
	| bes2-\p ~ bes4 r
	| r [g8( e] [d c d )bes]
	| [a( g fis \LowerText g-\cresc] [as a bes )b]
    }

    c4 r r2
    | c2-\p ~ [c8 cis( d )e]
    | g4( )f c!2 ~

% 230
    | [c8 cis( d-\cresc e] [g )f] c4 ~
    | [c8 cis( d e] [g )f] c4 ~
    | [c8-\f c g'( )f] r c [a'( )g]
    | r c, [bes'( )a] r a [b( )c]
    | r c [c( )g] r b, [g'( )f]
    | e4 r r8 [e-. g-. b-.]
    | [d( )b] g4.( )e8 c4
    | f4:16 a4:16 g4:16 f4:16
    | e4 r r8 [e-. g-. b-.]
    | [d( )b] g4.( )e8 c4

% 240
    | f4:16 a4:16 g4:16 f4:16
    | e2(-\p f
    | e )d
    | c( a'
    | g )f
    | e4 g,-\pp g g
    | g r r2 \bar "|."
}

