violinIIFirstMov = \notes \relative cis' {
    \key a \major
    \clef violin

    \noTupletBracket
    \property Voice.tupletSpannerDuration = #(make-moment 1 4)
    
    \repeat volta 2 {
	cis4-\p
	| cis2 r4
	| R2.
	| e4-. < { e-. e-. } \context Voice=x { \stemDown d4 cis } >
	| <b e> r b
	| b2 r4
	| R2.
	| e4-. fis-. gis-.
	| a r a,-\f
	| a4.( [cis8 d )cis]

% 10
	| b4 r b
	| b4.( [dis8 e )d]
	| cis4 r a'-\p
	| a2. ~
	| a4( [gis8 fis e )d]
	| [cis( e cis e d )e]
	| cis4 r e'-\f
	| e4.( dis8 [f e]
	| [d! c e d c )b]
	| a4-. \raiseSlur a(-. a-.

% 20
	| a-. a-. )a-.
	| \slurStemToHead a( g a
	| )b8 r b4( )c
	| [d8( e f d f )d]
	| b4 r r
	| r8 \lowerDynamics [e,(-\p g e c )e]
	| [f( d f d f )d]
	| [e( g, c e g )e]
	| [f( d f d f )d]
	| e4( )g2

% 30
	| e4( \lowerText )gis!2_\cresc
	| e4( )a2
	| e4( )ais2
	| [b8-.-\f fis!( )a! a-. a( )g]
	| [g( fis )a a-. a( )g]
	| [g( fis )a a-. a( )g]
	| fis4 r r
	| \lowerDynamics gis!2.(-\p
	| )a4 r r
	| r r fis

% 40
	| e( )gis r
	| b,2( bis4
	| )cis r r
	| r r dis(
	| )e r r
	| b'2( bis4
	| )cis r r
	| \times 2/3 { [cis8( dis e] [dis cis b] [a b )a] }
	| gis4( )b r
	| \times 2/3 { [b8( cis b] [a gis fis] [e fis )d!] }

% 50
	| cis4 r cis'-\f ~
	| \times 2/3 { [cis8( dis cis] [b a gis] [fis gis )fis] }
	| e4 r e' ~
	| \times 2/3 { [e8( fis e] [dis cis b] [a b )a] }
	| gis4 gis'(-\p )fis ~
	| fis( )e2
	| dis2( )cis4 ~
	| cis( )b2
	| r4 a2 ~
	| a4 cis( b

% 60
	| a gis )fis
	| e r r
	| r a(-\f )g
	| fis2( )g4
	| fis2( )g4
	| fis2.
	| g
	| gis4( [a8 fis] )e4
	| cis'-. b-. a-.
	| gis2.-\p ~

% 70
	| gis2( )e4
	| e r8 [a8( b )cis]
	| [gis( a gis e fis )dis]
	| \grace { \cue e16 } e'4.( dis8 [fis e]
	| [d! cis e d cis )bis]
	| cis4 r r
	| cis,2. ~
	| cis
	| cis'-\f
	| b4( dis )e

% 80
	| cis( )b2
	| r8 b-\p r dis r e
	| r cis r b r a
	| gis4 r r
	| e2. ~
	| e ~
	| e4( dis )b
	| b r
    }

    \repeat volta 2 {
        g'4-\f
	| g2 r4
	| r r g

% 90
	| g4.( fis8 [a g]
	| [fis e g fis e )d]
	| cis!4 cis cis
	| cis2 r4
	| e'4-\p e e
	| e r r
	| b2. ~
	| b ~
	| b4( ais )fis
	| fis r b-\f

% 100
	| [b8-. g-.] d'4. d,8-.
	| [fis-. a-.] c4. fis,8-.
	| [g-. b-.] d4. d,8-.
	| [fis-. a-.] c4. fis,8-.
	| g4 r r
	| r r f'-\p
	| f4.( e8 [g f]
	| [e d f e d )c]
	| c4( )b b
	| b2( )f'4

% 110
	| f4.( e8_\cresc [g f]
	| [e d e d cis! )b]
	| a4( )gis gis
	| gis2( )b4-\f
	| b4.( ais8 [cis )b] % The slur ends HERE!
	| [a!( gis a gis fis )eis]
	| fis8 fis'4 fis fis8 ~
	| fis fis4 fis fis8(
	| )eis4 r r
	| R2.

% 120
	| cis4.( [bis8 cis )gis]
	| [a( eis fis cis d )bis]
	| cis4 r r
	| gis-\p r r
	| r gis gis
	| gis r r
	| r gis gis
	| g2. ~
	| g4( e' )d
	| d r b

% 130
	| b4.( [d8 e )d]
	| cis2( )e4
	| d r r
	| r r a
	| b4.( [d8^\cresc e )d]
	| cis4 r cis
	| cis4.( [e8 fis )e]
	| d4 r d
	| dis4.( [fis8 gis! )fis]
	| e4 r cis-\f

% 140
	| dis4.( [fis8 gis )fis]
	| e4 r a,
	| b4.( [d8 e )d]
	| cis2 r8 a'(-\p
	| [b a] )gis4. gis8(
	| [a g] )fis4. fis8(
	| [g fis] )e4. e8(
	| [fis g fis e d )cis]
	| [b( gis a b cis )e]
	| [a( b d-\f cis b )a]

% 150
	| gis4 e'-\p e ~
	| e( )d2 ~
	| d4( )cis2 ~
	| cis4( b )a
	| gis r e
	| fis4.( [gis8 a )b]
	| e,4.( [fis8 gis )a]
	| [d,( e d b c )a]
	| d2( )b4
	| d2( )b4

% 160
	| [d8( cis! b a )gis^\cresc a-.]
	| [b-. cis-. d-. e-. fis-. gis-.]
	| a2-\f r4
	| R2.
	| e4-. < { e-. e-. } \context Voice=x { \stemDown d4 cis } >
	| <b e> r a'-\f
	| gis2 r4
	| R2.
	| e4-.-\p fis-. gis-.
	| a r a,-\f
	| a4.( [cis8 d )cis]
	| b4 r b
	| b4.( [dis8 e )d]
	| cis4 r a'-\p
	| a2. ~
	| a4( [gis8 fis e )d]
	| [cis( e cis e d )e]
	| cis4 r a'-\f
	| a4.( gis8 [bes a]
	| [g f a g f )e]

% 180
	| d4 \raiseSlur d(-. d-.
	  % The first d above is not staccato (unlike bar #19)
	| d-. d-. )d-.
	| d(  c )d
	| e8 r e4( )f
	| [g8( a bes g bes )g]
	| e4 r r
	| r8 [a(-\p c a f )a]
	| [bes( g bes g bes )g]
	| [a( c, f a c )a]
	| [bes( g bes g bes )g]

% 190
	| a4( )c2
	| \lowerText a4(_\cresc )cis!2
	| a4( )d2
	| a4( )dis2
	| [e8-.-\f b!( )d! d-. d( )c]
	| [c( b )d d-. d( )c]
	| [c( b )d d-. d( )c]
	| b4 r r
	| \lowerDynamics cis,2.(-\p
	| )d4 r r

% 200
	| r r b
	| a( )cis r
	| e2( eis4
	| )fis r r
	| r r gis(
	| )a r r
	| e'2( )eis4
	| fis r r
	| \times 2/3 { [fis8( gis a] [gis fis e!] [d e )d] }
	| cis4( )e r

% 210
	| \times 2/3 { [e8( fis e] [d cis  b] [a b )g] }
	| fis4 r fis'-\f ~
	| \times 2/3 { [fis8( gis! fis] [e d cis] [b cis )b] }
	| a4 r a' ~
	| \times 2/3 { [a8( b a] [gis fis e] [d e )d] }
	| cis2(-\p )b4 ~
	| b( )a2
	| gis2( )fis4 ~
	| fis( )e2
	| r4 d2 ~

% 220
	| d4 fis( e
	| d cis )b
	| a r r
	| r d'(-\f )c
	| b2( )c4
	| b2( )c4
	| b2.
	| c
	| cis!4 [d8( )b] a4
	| fis'-. e-. d-.

% 230
	| cis2.-\p ~
	| cis2( )a4
	| a r8 [d8( e )fis]
	| [cis( d cis a b )gis]
	| \grace { \cue a8 } a'4.( gis8 [b a]
	| [g fis a g fis )eis]
	| fis4 r r
	| fis,2. ~
	| fis ~
	| fis4 fis'2-\f

% 240
	| R2.
	| b,4 b'2
	| [e,8( dis fis e d )cis]
	| [d( cis e d cis )b]
	| [cis( b d cis b )a]
	| [b( ais cis b a )gis]
	| a4-. e-. r
	| a,-. a'-. r
	| d,-. d'-. r
	| d-. b'-. r

% 250
	| f2.(-\p
	| e
	| dis2 d4
	| )cis2 c4-.-\f
	| cis!-. r r
	| R2.
	| r4 r c,-\f
	| cis!2( )e4
	| e gis( )a
	| fis( e )b'

% 260
	| r8 a r e' r e
	| r fis r e r d
	| cis4 r r
	| r r fis,
	| fis4.( [ais8 b )a]
	| gis2.(
	| )a4 r a-\f
	| a4.( [cis8 d )cis]
	| b4. [cis8-. b-. a-.]
	| [gis-. a-. gis-. b-. a-. gis-.]

% 270
	| a4 r
    }
}
