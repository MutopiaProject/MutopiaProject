violaThirdMov = \notes \relative e' {
    \key a \major
    \clef alto

    \noTupletBracket
    \property Voice.tupletSpannerDuration = #(ly:make-moment 1 4)

    \repeat volta 2 {
	e4-\f
	| e2. ~
	| e4 r e-\p ~
	| e fis( )b,
	| [cis8( d] )e4 e-\f ~
	| e b( [cis8 )a]
	| e'4.( )cis8 [b( )d]
	| e4 e e
	| e r
    }

    \repeat volta 2 {
	b(-\f
	| )cis cis( )d

% 10
	| cis( )b cis(
	| )d d( )e
	| d( )cis r
	| a'2(-\p )gis4
	| fis( dis )e
	| a,( )b fis'
	| e2( )d!4
	| cis2( [dis8 )eis]
	| fis4( b,4. )gis'8
	| a4( )gis [fis8( )dis]

% 20
	| e4 r r
	| [e,8( dis e dis e )dis]
	| e4 r r
	| [e'8( dis e dis e )dis]
	| e4 r e
	| e2.-\f ~
	| e4 r e-\p ~
	| e( fis )b,
	| [cis8( d] )e4 e-\f ~
	| e b( [cis8 )a]

% 30
	| e'4.( )cis8 [b( )d]
	| e4 e e
	| e r
    }

    % Trio I

    \break
    \key a \minor

    \repeat volta 2 {
        r4
	| c(-\p )e r
	| f( )a r
	| gis,( )b r
	| c( )e r
	| f( )a r
	| b,( )d r
	| g g2-\fp

% 40
	| g4 g2-\fp
	| g4 r r
	| R2.
	| <f4 a> <e2-\fp a>
	| <f4 a> <e2-\fp a>
	| <f4 a> r r
	| R2.
	| r4 g( )b,
	| c r
    }

    \repeat volta 2 {
        r
	| e(-\p )g r

% 50
	| a( )c r
	| fis,( )a r
	| b( )d r
	| <gis, b> <a2-\fp c>
	| <gis4 b> <a2-\fp c>
	| <gis4 b> r r
	| r r [d8( )b]
	| c4-. e( )a,
	| r a'( \grace { \cue g8 } )f4
	| r \grace { \cue e8 } d4( \grace { \cue c8 } )b4

% 60
	| r8 [e( dis d b )c]
	| r [e e e e( )a]
	| r [a( gis )a a( )b,]
	| r [b( d )f] [gis, gis]
	| a'4 b2-\fp
	| a4 b2-\fp
	| a4( g! f
	| e d )c
	| <f bes> <f2-\fp a>
	| <f4 bes> <f2-\fp a>

% 70
	| <f4 bes> r r
	| R2.
	| [c8(-\p e c e d )e]
	| c4 r
    }

    % Trio II

    \break
    \key a \major

    \repeat volta 2 {
        r
	| r cis-\p cis
	| r b b
	| r b b
	| r a a
	| r cis cis
	| b r e(

% 80
	| d2 e4
	| )d2 r4
	| R2.*2
	| e,2. ~
	| e4 r
    }

    \repeat volta 2 {
        r
	| <d'-\p e^\markup { pizz. }> <d e> r
	| <cis e> <cis e> r
	| e e e
	| e e r
	| <d e> <d e> r
	| <c e> <c e> r
	| e e e
	| e r r
	| b2.^\markup { arco } ~
	| b ~
	| b
	| e4.( dis8 )fis4
	| e4.( dis8 )fis4
	| e4.( dis8 )fis4

% 100
	| e4.( dis8 )fis4
	| e4 r r
	| R2.
	| r4 r g(-\fp
	| )gis!2. ~
	| gis4 gis gis
	| gis gis gis
	| gis gis gis
	| gis r r
	| r cis,-\p cis

% 110
	| r b b
	| r b b
	| r a a
	| r cis cis(
	| )b r e(
	| )d d( )e
	| d2 r4
	| R2.
	| fis4(-\rf )g r
	| R2.
	| < { \voiceOne a2 } \context Voice=x { \voiceTwo g4( )fis } > 
          \oneVoice r
	| R2.
	| b,2.-\p
	| \slurHeadToStem cis4( a )e
	| e r
    }
}
