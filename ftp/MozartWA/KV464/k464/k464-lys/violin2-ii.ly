violinIISecondMov = \notes \relative a {
    \key a \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	a2(-\f \LowerDynamics )cis4-\p
	| e( )d r
	| b2(-\f \LowerDynamics )d4-\p
	| fis( )e r
	| \lowerDynamics e2.(-\p
	| fis
	| gis
	| )a4 r r
	| \raiseSlur a4(-.-\f a-. )a-.

% 10
	| a4( [)gis8. fis16] e4
	| e2( )g4
	| c( )b r
	| R2.*2
	| \slurStemToHead e,2(-\p gis!4
	| cis! )b r
	| \raiseSlur b(-. b-. )b-.
	| b( [)a8. gis16] fis4
	| \raiseSlur b(-. b-. )b-.
	| b( [)a8. gis16] fis4

% 20
	| d'!-.-\f d-. d-.
	| cis( c )b
	| cis! b a
	| gis r r
	| \lowerDynamics b,2.(-\p
	| )cis
	| dis4 dis dis
	| e4 r r
    }

    \repeat volta 2 {
        | \RaiseSlur \lowerDynamics gis4(-.-\p gis-. )gis-.

% 30
	| gis( [)fis8. e16] dis4
	| \raiseSlur \lowerDynamics a'4(-.-\p a-. )a-.
	| a( [)gis8. fis16] e4
	| R2.*2
	| cis2.
	| R2.
	| fis(
	| )g4 \RaiseSlur g(-. )g-.
	| g( [)fis8. e16] d4
	| \RaiseSlur g4(-. g-. )g-.

% 40
	| g4( [)fis8. e16] d4
	| cis'-.-\f cis-. cis-.
	| cis-. r r
	| R2.
	| \lowerDynamics d,2(-\p )cis4
	| c( )b r
	| dis( e )d
	| cis2 r4
	| r cis( dis

% 50
	| e b )cis
	| d a'-\f a
	| gis!( [)a8. d16] cis4
	| r e, e
	| e( dis )d
	| \raiseSlur \lowerDynamics cis(-.-\p cis-. )cis-.
	| cis( [)b8. a16] gis4
	| \raiseSlur d'(-. d-. )d-.
	| d( [)cis8. b16] a4
	| R2.

% 60
	| a''4-.-\f a-. a-.
	| a( [)gis8. fis16] e4
	| g-. g-. g-.
	| fis-. fis-. fis-.
	| fis-. r r
	| \raiseSlur a,(-. a-. )a-.
	| a( [)b8. bis16] cis4
	| a2( )gis4
	| a r r
	| \raiseSlur ais,(-. ais-. )ais-.

% 70
	| ais( [)b8. cis16] d4
	| b4.( [d8 b )d]
	| cis4 r r
    }

    \key e \major

    \repeat volta 2 {
        e2. ~
	| e4( )dis2
	| e4( fis )gis
	| [a8( )fis] fis4 r
	| e2. ~
	| e4( dis )cis
	| b( cis [b8 )a]

% 80
	| gis4 r r
    }

    \repeat volta 2 {
        | [fis'8( )dis] fis2 ~
	| [fis8( )cis'] fis,2 ~
	| [fis8( )dis] fis2 ~
	| [fis8( )cis'] fis,2 ~
	| fis4 r b ~
	| b r r
	| r dis,( [fis8 )e]
	| \slurStemToHead dis4( e fis
	| gis a )b

% 90
	| fis( gis )a
	| [dis,8( e dis e gis )fis]
	| e4( )dis r
	| \once \property Voice.TextScript \override #'extra-offset =
          #'(-1.0 . -1.0) [b8(-\parentF cis dis e fis )gis]
	| [a( b cis dis e )fis]
	| gis4 r e
	| \lowerText gis,(_\parentDecresc [)fis8 a( gis )fis]
	| e2.-\p ~
	| e4 fis( )dis
	| [e8( dis fis e gis )fis]

% 100
	| [a( )fis] dis4 r
	| \times 2/3 { [e8( gis )b] } e2 ~
	| [e8( fis32 e dis e] fis4 )dis
	| e [fis8( e fis )dis]
	| e4 r r
    }
}
