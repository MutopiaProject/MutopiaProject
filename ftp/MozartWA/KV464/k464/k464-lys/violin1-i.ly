violinIFirstMov = \notes \relative e'' {
    \key a \major
    \clef violin

    \noTupletBracket
    \property Voice.tupletSpannerDuration = #(make-moment 1 4)

    \repeat volta 2 {
	e4-\p
	| e4.( dis8 [fis e]
	| [d! cis e d cis )b]
	| a4-. b-. cis-.
	| d r d
	| d4.( cis8 [e d]
	| [cis b d cis b )a]
	| gis4-. a-. b-.
	| cis r a,-\f
	| a4.( [cis8 d )cis]

% 10
	| b4 r b
	| b4.( [dis8 e )d]
	| cis4 r a''-\p
	| a4. [cis8( b a]
	| [gis fis e d cis )b]
	| a2( [cis8 )b]
	| a4 r r
	| R2.*5

% 22
	| r4 r g'-\f
	| g4.( fis8 [a g]
	| [f a g f e )d]
	| c2(-\p )e4
	| g,4.( )a8 g4
	| g'( e )c
	| g4.( )a8 g4
	| \stemDown \slurUp e'4.( [g,8 e' )g,]

% 30
	| e'4.( [gis,!8 e' )gis,]
	| e'4.( [a,8 e' )a,]
	| [e'( ais, e' ais, e' )ais,] \slurBoth \stemBoth
	| r [b(-\f )b' b-. b-. b-.]
	| r [b,( )b' b-. b-. b-.]
	| r [b,( )b' b-. b-. b-.]
	| b4 r r
	| b,2(-\p bis4
	| )cis! r r
	| \stemDown \times 2/3 { [cis8( dis e] [dis cis b] [a b )a] }
          \stemBoth

% 40
	| gis4( )b r
	| b2( bis4
	| )cis r r
	| \times 2/3 { [e8( dis cis] [b a gis] [fis gis )fis] }
	| [e8( gis b e gis b]
	| )e4 r r
	| e,2( eis4
	| fis2 )fisis4

	% Lily does not accept the following line under a single
	% `\times' command (it says "Programming error", although
	% the PS file is correct.
	| \times 2/3 { [gis8( b a] } \times 2/3 { [gis fis! e] }
          \times 2/3 { [dis e )cis] }
	| b2( )bis4

% 50
	| cis4 fis2-\f ~
	| [fis8( )dis] gis2 ~
	| [gis8( )e] a2 ~
	| [a8( )fis] b2 ~
	| [b8( gis cis gis a )fis]
	| [b( fis gis e a )e]
	| [fis( dis gis dis e )cis]
	| [fis( cis dis b e )b]
	| [a( fis cis a' c, )a']
	| [b,( a' cis a b )gis]

% 60
	| [a( fis gis e fis )dis]
	| [e( \lowerText gis_\cresc )b e-.] [gis( )b]
	| [a(-\f fis cis a' c, )a']
	| [b,( fis' )a b,-. c( )a']
	| [b,( fis' )a b,-. c( )a']
	| [b,( fis' )a a-. a-. a-.]
	| r [e( )ais ais-. ais-. ais-.]
	| r [b-. fis( )a! e( )gis]
	| [a,-. fis'-. gis,-. e'-. fis,-. dis'-.]
	| e4.(-\p dis8 [fis e]

% 70
	| [d! cis e d cis )bis]
	| cis4 r8 [cis( dis )e]
	| [b( cis b gis a )fis]
	| e4 r r
	| R2.
	| cis''4.( bis8 [d! cis]
	| [b! ais cis b a )gis]
	| a2.(
	| )ais
	| [ais8( )b b( )a a( )gis]

% 80
	| [gis( )fis fis( )e e( )dis]
	| r b'-\p r a r gis
	| r fis r e r dis
	| e4 r e,
	| e4.( [gis8 a )gis]
	| fis4 r cis' ~
	| cis( )b dis,(
	| )e r
    }

    \repeat volta 2 {
        b''4-\f
	| b4.( ais8 [c b]
	| [a! g b a g fis]

% 90
	| )e4 \raiseSlur e(-. e-.
	| e-. e-. )e-.
	| e( )e, e
	| e2 r4
	| g'(-\p )fis fis
	| fis r b,
	| b4.( [d8 e )d]
	| cis4 r g' ~
	| g( )fis ais,(
	| )b r g'-\f

% 100
	| g4. [d8-. b'-. g-.]
	| c4. [fis,8-. a-. d,-.]
	| g4. [d8-. b'-. g-.]
	| c4. [fis,8-. a-. d,-.]
	| [g(-\p )b d,( )g b,( )d]
	| [g,( )b d,( )g b,( )d]
	| g,4 r r
	| r r f''
	| f4.( e8 [g f]
	| [e d f e d )c]

% 110
	| c4( )b b
	| b2( )d4
	| d4.( cis8_\cresc [e )d]
	| [cis( b cis b a )gis!]
	| fis4(-\f )eis eis
	| eis2( )cis'4
	| a'2( )ais4
	| b2( )bis4
	| cis4.( [bis8 cis )gis]
	| [a( eis fis cis d )bis]

% 120
	| \stemDown cis4.( [bis8 cis )gis] \stemBoth
	| [a( eis fis cis d )bis]
	| cis4 r cis-\p
	| cis4.( [eis8 gis )eis]
	| cis4 r cis
	| cis4.( [e!8 gis )e]
	| cis4 r cis
	| cis4.( [e8 g )e]
	| cis2( )d4
	| d4.( [fis8 g )fis]

% 130
	| e4 r b' ~
	| b( )a cis,(
	| )d r d
	| d4.( [fis8 g )fis]
	| e4 r e
	| e4.( \LowerText [gis!8_\cresc a )g]
	| fis4 r fis
	| fis4.( [ais8 b )a]
	| gis4 r gis-\f ~
	| gis cis2 ~

% 140
	| cis4 b2 ~
	| b4 a2 ~
	| a4 gis2 ~
	| gis4( )fis4. fis'8(-\p
	| [gis fis] )e4. e8(
	| [fis e] )d4. d8(
	| [e d] )cis4. cis8(
	| [d e d cis b )a]
	| \LowerText [gis(_\cresc e fis gis a )b]
	| [cis( d fis-\f e d )cis]

% 150
	| b4 r e-\p
	| fis4.( [gis8 a )b]
	| e,4.( [fis8 gis )a]
	| [d,( e d b cis )a]
	| b4 e e ~
	| e( )d2 ~
	| d4( )c2 ~
	| c4( b )a
	| [gis8( a gis b d )b]
	| [gis8( a gis b d )b]

% 160
	| gis4 r r
	| r r e'4-\f
	| e4.( dis8 [fis e]
	| [d! cis e d cis )b]
	| a4-. b-. cis-.
	| d r d
	| d4.( cis8 [e d]
	| [cis b d cis b )a]
	| gis4-. a-. b-.
	| cis r a,-\f

% 170
	| a4.( [cis8 d )cis]
	| b4 r b
	| b4.( [dis8 e )d]
	| cis4 r a''-\p
	| a4. [cis8( b a]
	| [gis fis e d cis )b]
	| a2( [cis8 )b]
	| a4 r r
	| R2.*5

% 183
	| r4 r c'-\f
	| c4.( b8 [d c]
	| [bes a c bes a )g]
	| f2(-\p )a4
	| c,4.( )d8 c4
	| c'( a )f
	| c4.( )d8 c4

% 190
	| a'4.( [c,8 a' )c,]
	| a'4.( [cis,!8 a' )cis,]
	| a'4.( [d,8 a' )d,]
	| [a'( dis, a' dis, a' )dis,]
	| r [e(-\f )e' e-. e-. e-.]
	| r [e,( )e' e-. e-. e-.]
	| r [e,( )e' e-. e-. e-.]
	| e4 r r
	| \lowerDynamics e,,2(-\p eis4
	| )fis r r

% 200
	| \times 2/3 { [fis8( gis a] [gis fis e!] [d e )d] }
	| cis4( )e r
	| e'2( eis4
	| )fis4 r r
	| \times 2/3 { [a8( gis fis] [e! d cis] [b cis )b] }
	| [a8( cis e a cis )e]
	| a,4 r r
	| a2( )ais4
	| b2( )bis4
	| \times 2/3 { [cis8( e d] } \times 2/3 { [cis b! a] } \times
          2/3 { [gis a )fis] }

% 210
	| e2( eis4
	| )fis b2 ~
	| [b8( )gis] cis2 ~
	| [cis8( )a] d2 ~
	| [d8( )b] e2 ~
	| [e8(-\p cis fis cis d )b]
	| [e( b cis a d )a]
	| [b( gis cis gis a )fis]
	| [b( fis gis e a )e]
	| [d( b fis d' f, )d']

% 220
	| [e,( d' fis d e )cis]
	| [d( b cis a b )gis]
	| [a( cis_\cresc )e a-. cis( )e]
	| [d(-\f b fis d' f, )d']
	| [e,( b' )d e,-. f( )d']
	| [e,( b' )d e,-. f( )d']
	| [e,( b' )d d-. d-. d-.]
	| r [a( )dis dis-. dis-. dis-.]
	| r [e-. b( )d! a( )cis]
	| [d,-. b'-. cis,-. a'-. b,-. gis'-.]	

% 230
        | a4.(-\p gis8 [b a]
	| [g fis a g fis )eis]
	| fis4 r8 [fis( gis! )a]
	| [e( fis e cis d )b]
	| a4 r r
	| R2.
	| fis'4.( eis8 [g fis]
	| [e! dis fis e d )cis]
	| d2.(
	| )d2-\f b4

% 240
	| b'4.( ais8 [cis b]
	| [a! gis b a gis )fisis]
	| gis2.
	| b
	| [e,8( dis fis e d )cis]
	| [d( cis e d cis )b]
	| cis4-. a'-. r
	| cis,-. cis'-. r
	| a,-. a'-. r
	| fis-. d'-. r

% 250
	| d2.(
	| )cis ~
	| cis4( )b2 ~
	| b4( )a dis,-.-\f
	| e4.( dis8-\p [fis e]
	| [d! cis e d c )b]
	| \lowerText a2._\cresc ~
	| a2( \stemUp [cis!8 )b] \stemBoth
	| [a(-\f )e' e( )d d( )cis]
	| [cis( )b b( )a a( )gis]

% 260
	| r e'-\p r d' r cis
	| r b r a r gis
	| a4 r a,
	| a4.( cis8 [d )cis]
	| b4 r fis' ~
	| fis( e )d
	| cis r a'-\f
	| a4.( [cis8 d )cis]
	| [b( cis )b a-. gis-. fis-.]
	| [e-. fis-. e-. d-. cis-. b-.]

% 270
	| a4 r
    }
}
