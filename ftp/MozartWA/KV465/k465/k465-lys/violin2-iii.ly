violinIIThirdMov = \notes \relative e' {
    \key c \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	r4
	| R2.
	| e4-\p e e
	| d d d
	| d r [b8-\f g]
	| [c g d' g, e' g,]
	| f'4 r f-\p
	| e d c
	| b2( )c4
	| [e'8(-\f dis d b c )a]

% 10
	| r4 [a8( )c] b4
	| r [e8( )g] fis4
	| \lowerDynamics c,2.(-\f
	| \lowerDynamics )b4-\p r r
	| g' r r
	| [g'8( a ais b a )fis]
	| g4 r d,
	| e r c
	| b r d
	| e r c

% 20
	| b r
    }

    \repeat volta 2 {
        \lowerDynamics [fis'8(-\f g]
	| [gis a bes a g )e]
	| d4 d d
	| g g g
	| bes,2.
	| d'2.-\p ~
	| d4 d d
	| g, g g
	| fis2( [a8 )fis]
	| g4 r r

% 30
	| e2( [g8 )e]
	| f!4 r r
	| c'2( )bes4
	| a2( )g4
	| a2 [a,8( )c]
	| b!4 r [d8( es]
	| [e! f g f e )c]
	| d4 r [d'8( es]
	| [e! f g f e )c]
	| d4 r [c8(-\f d]

% 40
	| [dis e f e d )b]
	| c4 e, e
	| a, a a
	| b r [b8 g]
	| [c g d' g, e' g,]
	| f'4 r f-\p
	| e d c
	| b2( )c4
	| [c'8(-\f b bes g a )f]
	| r4 [e'8( )g] fis4

% 50
	| r [d8( )f!] e4
	| c,2.-\sf ~
	| c4-\p r r
	| e r r
	| [e'8( dis d cis d )b]
	| c!4 r g
	| a r f
	| e r g
	| a r f
	| e r [c8(-\f )g']

% 60
	| [g( )f f( )e e( )d]
	| [d( )c c( )g' g( )f]
	| [f( )e e( )d d( )c]
	| c4 r
    }

    \key c \minor

    \repeat volta 2 {
        r4
	| \lowerDynamics [g'8(-\p )es g g g g]
	| [g( )es g g g g]
	| \lowerDynamics [g(-\f )es g g g g]
	| [g( )d g g g g]
	| [b(-\p )g b b b b]
	| [f( )d f f f f]

% 70
	| \lowerDynamics [d(-\f )b d d d d]
	| [c es( d es f )es]
	| \lowerDynamics [es(-\p-\trill )d es es es es]
	| [es(-\trill )d es es es es]
	| [es(-\trill )d es es es es]
	| [es(-\trill )d es es es es]
	| \lowerDynamics [es(-\f )bes! g' g g g]
	| [g(-\f )es es' es es es]
	| [es( )g bes, bes bes bes]
	| bes4 r
    }

    \repeat volta 2 {
        r4

% 80
	| [bes8(-\p )g bes bes bes bes]
	| [g( )e g g g g]
	| \lowerDynamics [g,(-\f )bes g g g g]
	| [as( )c as' as as as]
	| [c(-\p )a c c c c]
	| [a( )fis a a a a]
	| \lowerDynamics [a,(-\f )c a a a a]
	| [g g'( fis g es )c]
	| b4 r g'
	| [fis8(  g as g es )c]

% 90
	| b4( )d g
	| [as8( g fis g f )d]
	| [es( )c g' g g g]
	| [c( )g es' es es es]
	| [c( )a c c c c]
	| [d(-\p )b g' g g g]
	| [f!( )d f f f f]
	| [d( )d, as'! as as as]
	| \lowerDynamics [f(-\f )d f f f f]
	| [g( )bes,! g' g g g]

% 100
	| \lowerDynamics f2(-\p )e4
	| c'2. ~
	| c4 r f,(
	| )es! r
    }
}
