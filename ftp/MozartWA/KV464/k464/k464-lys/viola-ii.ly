violaSecondMov = \notes \relative a {
    \key a \major
    \clef alto

    \noTupletBracket
    \property Voice.tupletSpannerDuration = #(make-moment 1 4)

    \repeat volta 2 {
	a2(-\f )cis4-\p
	| e( )d r
	| b2(-\f )d4-\p
	| fis( )e r
	| cis2.(-\p
	| d
	| e
	| )a,4 r r
	| R2.*2

% 11
	| g'4-.-\f g-. g-.
	| g( [)fis8. e16] dis4
	| R2.
	| dis,2(-\p )fis4
	| a( )gis! r
	| R2.*2
	| \raiseSlur dis'4(-. dis-. )dis-.
	| dis( [)e8. fis16] gis4

% 20
	| \raiseSlur dis(-. dis-. )dis-.
	| fis( [)eis8. fis16] gis4
	| cis, fis4.( )gis8
	| a4 gis fis
	| e! r r
	| gis,2.(-\p
	| )a
	| fis4.( [a8 fis )a]
	| gis4 r r
    }

    \repeat volta 2 {
        | R2.

% 30
	| b-\p
	| R
	| e
	| R
	| \RaiseSlur cis4(-. cis-. )cis-.
	| cis( [)b8. a16] gis4
	| \raiseSlur d'(-. d-. )d-.
	| d( [)cis8. b16] a4
	| a2. ~
	| a ~

% 40
	| a ~
	| a
	| e'4-.-\f e-. e-.
	| e-. r r
	| R2.
	| \raiseSlur a,4(-. a-. )a-.
	| a( [)g8. fis16] e4
	| \raiseSlur b'4(-. b-. )b-.
	| b( [)a8. gis!16] fis4
	| r fis( )b

% 50
	| e,2( )a4
	| d, r r
	| b''(-\f )e, e
	| r b a
	| gis r r
	| e'2.-\p ~
	| e ~
	| e ~
	| e
	| fis2(-\f )ais4

% 60
	| c( )b r
	| e,2( )gis4
	| bes( )a r
	| a-. a-. a-.
	| a-. r r
	| R2.
	| \RaiseSlur e4(-.-\p e-. )e-.
	| e( dis d
	| )cis r r
	| \raiseSlur g'(-. g-. )g-.

% 70
	| g( )fis r
	| \raiseSlur gis(-. gis-. )gis-.
	| a r r
    }

    \key e \major

    \repeat volta 2 {
        | b,2.(
	| )cis4( fis, )b ~
	| b dis4( )e
	| [fis8( )dis] e4 r
	| r gis,( fis
	| e fis )dis
	| e2( )dis4

% 80
	| e4 r r
    }

    \repeat volta 2 {
        | b'4 r b'(
	| )ais r cis,(
	| )b b'2 ~
	| \times 2/3 { [b8( ais b] } )cis4 cis,(
	| )b r dis(
	| )e r r
	| r r ais,
	| b( cis dis
	| eis fis )gis

% 90
	| dis( e! )fis
	| b, r cis
	| b2 r4
	| r \parentShift [b8(-\parentF cis dis )e]
	| [fis( gis a b cis )dis]
	| e4 r gis,
	| \LowerText b,4._\parentDecresc [dis,8( e )fis]
	| \lowerDynamics gis4(-\p )b2
	| [e8( fis dis e cis )dis]
	| [b( cis a b gis )a]

% 100
	| [fis( )dis] e4 r
	| gis'4 ~ \times 2/3 { [gis8( a gis] [fis gis )fis] }
	| \noTupletNum \times 2/3 { [e( fis e] [dis e dis] [cis dis )cis] }
	| b4 r [b8( )a']
	| gis4 r r
    }
}
