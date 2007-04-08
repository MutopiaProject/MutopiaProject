celloFirstMov = \notes \relative c {
    \key c \major
    \clef bass

    \noTupletBracket
    \property Voice.tupletSpannerDuration = #(make-moment 1 4)

    [c8-\p c c c c c]
    | c2.:8
    | [b8-\cresc b b b b b]
    | [b-\f b b fis( g )a]
    | bes2.:8-\p
    | bes2.:8
    | [a8-\cresc a a a a a]
    | [a-\f a a e( f )g]
    | as2.:8-\p

% 10
    | g2.:8
    | f2.:8
    | es2 r4
    | r8 \lowerDynamics [g(-\f as a bes )b]
    | c4. [c'8( b )bes]
    | a4 as2
    | [g8( fis'-\sf] )g4 r
    | r8 fis,(-\sf )g4 r
    | r8 \lowerDynamics fis,(-\sf )g4 r
    | r8 [g( b cis-\scp d )b]

% 20
    | r [g( b cis-\scp d )b]
    | r [g( b cis-\scp d )b]
    | g2.-\fp-\fermata

    \time 4/4

    \repeat volta 2 {
	| R1*8

% 31
	| r8 [c,-\f e g] c4 r
	| r8 [g' g g] [fis( )g d b]
	| [g g b d] g4 r
	| r8 [c c c] [b( )c g e]
	| c4 r bes'2-\sf
	| [a8(-\p f g )a] bes2-\sf
	| [a8(-\p f g )a] bes2-\sf
	| a4-\p r d, r
	| g r a r

% 40
	| f r g r
	| e r c r
	| f r g r
	| c,1-\f
	| \lowerDynamics c,2-\sf ~ [c8 \LowerDynamics c(-\p d )e]
	| g2( )f
	| [e8 e' e e] [e e d d]
	| [c-\cresc c c b] [a a a' g]
	| [fis-\f fis fis e] [d d d c]
        | [b( d g b] [)d c-. b-. a-.]

% 50
	| [g( b, d g] [)b c-. b-. a-.]
	| g4 r r2
	| r a-\f
	| d,4-\p r d r
	| d r d r
	| [d8-. a-. d-. a-.] d4 r
	| [g,8-\f g g g] g4 r
	| a'2-\p ~ a4 r
	| [d,8-\f d d d] d4.( )c8
	| b4 r r2

% 60
	| R1
	| [e16(-\p gis fis a] [gis b a c] )b4 r
	| [a,16( c b d] [c e d f!] )e4 r
	| [d16( fis e g] [fis a g b] )a4 r
	| \stemUp [g,16( b a c] [b d c e] )d4 r \stemBoth
	| [e16( g fis a] )g8 r [fis16( a g b] )a8 r
	| [dis,16( fis e g] )fis8 r [e16( g fis a] )g8 r
	| c,4-\p r c r
	| c2-\f ~ [c8 c'( b )a]
	| g4( )b, c( )e

% 70
	| d1:8
	| g,4 g' r2
	| g,4-\p g' d b
	| g r r2
	| r4 r8 gis'(-\f [a fis g )cis,]
	| d2 b'4-\p b
	| ais4 ~ \times 2/3 { [ais8( )b g-.] [ais( )b g-.] [ais( )b g-.] }
	| [b8.( )g16] b4 r b,
	| c c d d
	| g, g'(-\f a )d,

% 80
	| r g(-\p a )d,
	| r g( a )d,
	| r g( a )d,
	| r g(-\f a )d,
	| [b8 b] b4 r2
	| [c8 c] c4 r2
	| [d8 d] d4 r2
	| g,4 r r2
	| [f!8 f'! f f] [f f f f]
	| [e, e' e e] [cis, cis' cis cis]

% 90
	| [d, d' d d] [d, d' d d]
	| g,1:8-\p
	| g1:8
	| g1:8
	| g1:8
	| g8 r b r d r d, r
	| g r b' r d r d, r
	| g, r b r d r d, r
	| g r b' r d r d, r
	| g,2 ~ [g8 g( a )b]

% 100
	| d4( )c-\cresc ~ [c8 a( b )c]
	| e4( )d ~ [d8 b( c )d]
	| f!4( )e ~ [e8 c( d )e]
	| g2-\f ~ [g8( f e )d]
	| as'2( )g4 r
	| R1*2
    }

    \repeat volta 2 {
        | bes1:8-\p
	| bes1:8
	| bes1:8

% 110
	| bes1:8
	| a1:8
	| a1:8
	| g1:8
	| g1:8-\cresc
	| f1:8
	| f1:8
	| [f8-\f f,-.] f'4-. r8 f,-. f'4-.
	| r8 [a-. c-. f,-.] [c'-. e,-. c'-. dis,-.]
	| e4 gis a f

% 120
	| e r r2
	| \lowerDynamics e,2-\p ~ [e8( fis gis )a]
	| c2( )b4 r
	| e,2 ~ [e8( fis gis )a]
	| c2( )b4 r
	| \lowerDynamics e,2-\f ~ [e8 gis-. b-. d-.]
	| f4( )e r8 [gis,-. b-. d-.]
	| f4( )e r8 [b'-. e,-. gis-.]
	| a4.( )bes8 a4.( )bes8
	| a4-. r8 g!-. [bes-. e,-. g-. cis,-.]

% 130
	| d4 r r a-\p
	| d r r a
	| [d8-.-\f fis-. a-. c-.] es4( )d
	| r8 [fis,-. a-. c-.] es4( )d
	| r8 [fis,-. a-. c-.] es4( )d
	| g,4.( )as8 g4.( )as8
	| g4 r8 f!-. [as-. d,-. f-. b,-.]
	| c4 r r g-\p
	| c r r g
	| c r r8 [f,8( as )c]

% 140
	| es4( )d r8 [es,( g )bes]
	| d4( )c r8 [d,( f )as]
	| c4( )b!] r8 [c( as )g]
	| fis4-\f r8 fis-. fis'4-. r8 fis,-.
	| fis'4-. r8 c-. [es-. a,-. c-. fis,-.]
	| g4 b c as
	| g r r2
	| \lowerDynamics g2-\p ~ [g8( a! b )c]
	| es2( )d4 r
	| g,2 ~ [g8( a b )c]

% 150
	| es2( )d4 r
	| \lowerDynamics g,2-\f ~ [g8( b d f]
	| [g f d )b] g4 r
	| r2 g'4-\p r
	| g, r r2
	| c'1:8-\p
	| c1:8
	| c1:8
	| c1:8
	| c4 r c8 r b r

% 160
	| a4 r a8 r g r
	| f4 r8 a d,4 r8 d'
	| g,4 r r2
	| r8 [c,,8-\f-. e-. g-.] c4 c,
	| r8 [d-. f-. a-.] d4 d,
	| r8 [g-. b-. d-.] g4 g,
	| r8 [e-. g-. b-.] e4 e,
	| r8 [a( c )e] a4( )g
	| f(-\p [g8 )a] bes2-\sf

% 170
	| [a8(-\p f g )a] bes2-\sf
	| a4-\p r d, r
	| g r a r
	| r2 d-\f
	| g,4-\p r g r
	| g r g r
	| [g8-. d-. g-. d-.] g4 r
	| [c,8-\f c c c] c4 r
	| d2-\p ~ d4 r
	| [g8(-\f )g, g'-. g-.] g2
	| c,4 r r2

% 180
	| R1
	| [a16(-\p cis b d] [cis e d f] )e4 r
	| [d16( f e g] [f a g bes] )a4 r
	| [e,16( gis fis a] [gis b! a c] )b4 r
	| [a16( c b d] [c e d f] )e4 r
	| [f,16( a g bes] )a8 r [f'16( a g bes] )a8 r
	| [g,16( bes a c] )bes8 r [g'16( bes a c] )bes8 r
	| a4 r a, r
	| f' r r8 [d-.-\f e-. f-.]
	| g4 e r a

% 190
	| f d g g,
	| c c' r2
	| c,4-\p c' g e
	| c r r2
	| r4 r8 cis'(-\f [d b c )fis,]
	| g2 e'4-\p e
	| dis4 ~ \times 2/3 { [dis8( )e c-.] [dis( )e c-.] [dis( )e c-.] }
	| [e8.( )c16] e4 r e,
	| f f g g
	| c, c(-\f d )g,

% 200
	| r c( d )g,
	| r c(-\p d )g,
	| r c( d )g,
	| r c(-\f d )g,
	| [e8 e'] e4 r2
	| [f,8 f'] f4 r2
	| [g,8 g'] g4 r2
	| c,4 r r2
	| [e,8 e' e e] [e e e e]
	| [f, f' f f] [fis, fis' fis fis]

% 210
	| [g, g' g g] [g, g' g g]
	| [c,, c'-\p c c] [c c c c]
	| c1:8
	| c1:8
	| c1:8
	| c8 r e r g r g, r
	| c r e r g r g, r
	| c r \clef tenor e' r g r g, r
	| c r e r g r g, r \clef bass
	| c,2 ~ [c8 \lowerText c(-\cresc d )e]

% 220
	| g4( )f ~ [f8 d( e )f]
	| a4( )g ~ [g8 e( f )g]
	| bes4( )a ~ [a8 f( g )a]
	| c2-\f ~ [c8( bes a )g]
	| des'2(-\p )c4 r
	| R1*2
    }

    | bes1:8-\p
    | a2:8 bes2:8
    | a2:8 bes2:8

% 230
    | [a8 a bes-\cresc bes] [a a bes bes]
    | [a8 a bes bes] [a a bes bes]
    | a2:8 e2:8
    | f2:8 fis2:8
    | g1:8
    | [c,8 e-. g-. c-.] e4( )d
    | r8 [g,-. d'-. b-.] r [c,-. g'-. e-.]
    | [f e f d] [g f g g,]
    | [c e-. g-. c-.] e4( )d
    | r8 [g,-. d'-. b-.] r [c,-. g'-. e-.]

% 240
    | [f e f d] [g f g g,]
    | c1:8-\p
    | c1:8
    | c1:8
    | c1:8
    | c4 g-\pp e g
    | c, r r2 \bar "|."
}
