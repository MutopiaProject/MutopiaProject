violinIThirdMov = \notes \relative cis'' {
    \key a \major
    \clef violin

    \noTupletBracket
    \property Voice.tupletSpannerDuration = #(ly:make-moment 1 4)

    \repeat volta 2 {
	cis4-\markup { \dynamic f \italic { senza sordino } }
	| cis2( )b4
	| a4-. r gis-.-\p
	| a-. \raiseSlur a(-. )a-.
	| a( )gis b(-\f e fis, )cis'
	| b( [cis8 a fis )d]
	| [cis( e cis e d )e]
	| cis4 r
    }

    \repeat volta 2 {
	r4
	| [e8(-\f dis e dis e )dis]

% 10
	| e4 r r
	| [e'8( dis e dis e )dis]
	| [e( dis e dis e )eis]
	| [fis(-\p eis fis eis fis )gis]
	| [a( gis a b gis )e!]
	| [cis( )fis fis( )e e( )dis]
	| e4 r r
	| R2.*3

% 20
	| r4 r gis,(-\p
	| )a a( )b
	| a( )gis b(
	| )cis cis( )d
	| cis( )b cis
	| cis2(-\f )b4
	| a r gis-\p
	| a a( )b
	| a( )gis b(-\f
	| e fis, )cis'

% 30
	| d( [cis8 a fis )d]
	| [cis( e cis e d )e]
	| cis4 r
    }

    % Trio I

    \break
    \key a \minor

    \repeat volta 2 {
        e'(-\p
	| )a, r a'
	% In the B & H score there are slurs between each grace note
	% and the following one
	| \grace { \cue g8( } )f4 r \grace { \cue e8 } d4(
	| \grace { \cue c8 } )b4 r8 [e( dis )d]
	| [b( )c] r [c( d )e]
	| [g( )f] r [f( g )a]
	| [a( )g] r [g( d' )f,]
	| [e( )c'] [g,-.-\f d''(-\p b )f]

% 40
	| [e( )c'] [g,-.-\f d''(-\p b )f]
	| [e( )c' d,( )b' c,( )a']
	| [b,( )g' a,( )f' g,( )e'] \stemUp
	| [f,( )d' e,-.-\f g'(-\p e )cis]
	| [f,( )d' e,-.-\f g'(-\p e )cis] \stemBoth
	| [d( )e e( )f f( )fis]
	| [fis( )g g( )gis gis( )a]
	| c,!2( [e8 )d]
	| c4 r
    }

    \repeat volta 2 {
        g'(
	| )c, r bes'(

% 50
	| \grace { \cue gis8 } )a4 r g(
	| )fis r c'(
	| \grace { \cue ais8 } )b!4 r a!
	| [gis8( )e] [a,-.-\f a'(-\p c )a]
	| [gis( )e] [a,-.-\f a'(-\p c )a]
	| [gis( e f! d e c]
	| [d b c )a] e'4(
	| )a, r a'(
	| \grace { \cue g8 } )f4 r \grace { \cue e8 } d4(
	| \grace { \cue c8 } )b4 r8 [e( dis )d]

% 60
	| [b( )c] r [e e e]
	| [e( )a] r [a( gis )a]
	| [a( )b,] r [b( d )f]
	| [a,( )gis] r [e'( b' )d,]
	| [c( )e] [e,-.-\f b''(-\p gis )d]
	| [c( )e] [e,-.-\f b''(-\p gis )d]
	| [c( )a' b,( )g'! a,( )f']
	| [g,!( )e' f,( )d' e,( )c']
	| [d,( )bes'] [a-.-\f f'(-\p c )a]
	| [d,( )bes'] [a-.-\f f'(-\p c )a]

% 70
	| [bes( )c c( )d d( )e]
	| [e( )f f( cis d )bes]
	| a2( [c8 )b!]
	| a4 r
    }

    % Trio II

    \break
    \key a \major

    \repeat volta 2 {
        r4
	| r a-\p a
	| r a a
	| r gis gis
	| r a a
	| r a a
	| fis r [cis'8( ais]

% 80
	| [b d] )fis4 [cis8( ais]
	| [b d] )fis4 r
	| R2.*2
	| [cis,8( e cis e d )e]
	| cis4 r
    }

    \repeat volta 2 {
        [e8( gis]
	| [b gis] )e'4 [e,8( a]
	| [cis a] )e'4 [e,8( b']
	| [d b e d cis )a]
	| [gis( b] )e4 [e,8( gis]

% 90
	| [b gis] )e'4 [e,8( a]
	| [c a] )e'4 [e,8( b']
	| [d b e d c )a]
	| [gis( b] )e4 r
	| a,4( fis )a
	| gis2.
	| a4( fis )a
	| gis4( )b2 ~
	| b2.
	| [e8( gis b, a' fis dis]

% 100
	| [e gis b, a' fis )dis]
	| e4-. e-. 
          < { \voiceOne e4 ~ | e }
            \context Voice=x { \voiceTwo dis4( | )d! } >
          \oneVoice <d e> <d e>
        | <d e> <d e> <d e>
	| <d e> <d e> <d e>
	| <d2. e> ~
	| <d2 e> <d4 e>
	| <d e> <d e> <d e>
	| <d e> r r
	| r a-\p a

% 110
	| r a a
	| r gis gis
	| r a a
	| r a a(
	| )fis r [cis'8( ais]
	| [b d fis d cis )ais]
	| [b( d] )fis4 r
	| R2.
	| [fis8(-\rf d] )cis4 r
	| R2.

% 120
	| [g'8(-\rf e] )d4 r
	| R2.
	| a2.-\p ~
	| a2( )gis4
	| a r
    }
}
