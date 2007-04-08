violinISecondMov = \notes \relative a {
    \key a \major
    \clef violin

    \noTupletBracket
    \property Voice.tupletSpannerDuration = #(make-moment 1 4)

    \repeat volta 2 {
	a2(-\f \LowerDynamics )cis4-\p
	| e( )d r
	| b2(-\f \LowerDynamics )d4-\p
	| fis( )e r
	| \raiseSlur e'4(-. e-. )e-.
	| e( [)d8. cis16] b4
	| \raiseSlur d(-. d-. )d-.
	| d( [)cis8. b16] a4
	| a2(-\f )cis4-\p

% 10
	| fis( )e r
	| e2( )g4
	| c( )b r
	| e,2(-\p gis!4
	| cis! )b r
	| R2.*2
	| \raiseSlur b4(-. b-. )b-.
	| b( [a8. gis16] )fis4
	| \raiseSlur b(-. b-. )b-.

% 20
	| b( [a8. gis16] )fis4
	| b-.-\f b-. b-.
	| [ais8( )fis] a4.( )gis8
	| [gis( )fis] e4 dis
	| [e8-\p gis( fis e dis )cis]
	| \RaiseSlur b4(-. b-. )b-.
	| b( [)a8. gis16] fis4
	| a4.( [fis8 a )fis]
	| e4 r r
    }

    \repeat volta 2 {
        | \RaiseSlur b'(-.-\p b-. )b-.

% 30
	| b( [)a8. gis16] fis4
	| \raiseSlur cis'(-. cis-. )cis-.
	| cis( [)b8. a16] gis4
	| R2.*2
	| cis2.
	| R2.
	| fis2.(
	| )g4 \raiseSlur g(-. )g-.
	| g( [)fis8. e16] d4

% 40
	| \raiseSlur g(-. g-. )g-.
	| g( [)fis8. e16] d4
	| b'-.-\f b-. b-.
	| b-. r r
	| cis,(-\p d )b
	| fis2( )e4
	| dis( )e r
	| a( g )fis
	| eis( )fis r
	| \raiseSlur a(-. a-. )a-. ~

% 50
	| a( [)gis!8. e!16] g4
	| g( )fis fis'-\f
	| e4.( [fis16 gis!] )a4
	| [d,8( e d b cis )a]
	| e4 r r
	| a2(-\p )cis4
	| e( )d r
	| b2( )d4
	| fis( )e r
	| e'-.-\f e-. e-.

% 60
	| e( [)dis8. cis16] b4
	| d!-. d-. d-.
	| d( [)cis8. b16] a4
	| c-. c-. c-.
	| c-. r r
	| \raiseSlur cis,(-. cis-. )cis-.
	| cis4( [)d8. dis16] e4
	| cis2( )b4
	| [a8( gis a b cis )d!]
	| \raiseSlur e4(-. e-. )e-.

% 70
	| e( [)d8. cis16] b4
	| d4.( [b8 d )b]
	| a4 r r
    }

    \key e \major

    \repeat volta 2 {
        | gis2. ~
	| gis4( a )fis
	| [b8-. e-.] b2 ~
	| [b8( ais a gis a )fis]
	| gis2. ~
	| [gis8( a32 gis fis gis] a4 )fis
	| b4. [ais8( a )fis]

% 80
	| e4 r r
    }

    \repeat volta 2 {
        \times 2/3 {
	    | [dis8 fis b] [dis fis b] [fis dis b] \noTupletNum
	    | [e cis b] [ais gis fis] [e( )fis e]
	    | [dis fis b] [dis fis b] [fis dis b]
	    | [e cis b] [ais gis fis] [e( )fis e]
	    | [dis fis b] [dis fis b] [a!( )gis fisis]
	    | [ais( )gis b] [ais gis fis!] [e dis c]
	}

	| \times 2/3 { [gis'( )e cis] } \tupletNum b4( [dis8 )cis]
	| b2._\cresc ~
	| [b8( )d] r4 [cis8( )gis]

% 90
	| [b( )a] r4 [cis8( )b]
	| [a( gis fis e b' )a]
	| gis4( )fis r
	| \parentShift b'2.-\parentF ~
	| b ~
	| b4( bis )cis
	| \lowerText e,4(_\parentDecresc [dis8 cis b )a]
	| gis2.-\p ~
	| [gis8( a32 gis fis gis] a4 )fis
	| [b8-. e-.] b2 ~

% 100
	| [b8( ais a gis a )fis]
	| \times 2/3 { [gis( b )e] } gis2 ~
	| [gis8( a32 gis fis gis] a4 )fis
	| [b8( ais a gis a fis]
	| )e4 r r	
    }
}
