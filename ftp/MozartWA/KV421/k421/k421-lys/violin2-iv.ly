violinIIFourthMov = \notes \relative a' {
    \key d \minor
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	r8
	| a4-\p a8 a4 a8
	| a4 a8 e4 g8
	| [fis8. d16 e8] [f8. g16 f8]
	| e4 e8 a4 cis,8
	| bes'4 bes8 bes4 bes8
	| a4 a8 a4 c8
	| b4 bes8 a4 cis,8
	| [d8. e16 f8] d8 r
    }

    \repeat volta 2 {
	r8
	| a'4 a8 [a8. g16 f8]

% 10
	| bes4 bes8 bes4 bes8
	| [a8. bes16 c8] [f,8. e16 f8]
	| a4.( )g4 e8
	| e4-\fp e8 e4 e8
	| [f8.-\fp g16 as8] as4 as8(
	| )a!4 a8( )bes4 bes8
	| bes4.( )a4 c8
	| c4. ~ c4( )b8
	| c4. ~ [c8( bes! )g]
	| f4( fis8 g4 )gis8

% 20
	| gis4.( )a8 r r
	| es4-\f es8 es4 es8
	| [es8. g16 bes8] [bes8. a16 g8]
	| fis4-\p f8 [e!8.^\trill f16 e8]
	| e4.( )d8 r
    }

    \repeat volta 2 {
        r8
	| a4.( )f'
	| [e8( )cis cis-.] cis4.
	| d4.( )d' ~
	| [d8( e )f] cis4.
	| e,4.-\f [cis8.( e16 g )e]

% 30
	| d8 r c!( )bes r \lowerDynamics fis'(-\p \restoreDynamics
	| )g r g( )f! r e
	| e4.( )d8 r
    }

    \repeat volta 2 {
        r8
	| a4.( d4 )f8
	| g4.( )e
	| f ~ [f8 f( )a]
	| a4( )f8 c' r c-\p
	| des4( c8 )bes4 bes8
	| b4( )as8 f4 f8-\f
	| f4 f8 e4( )bes8

% 40
	| bes4.( )a8 r r
	| [c8-\f a'( )c] [f f f]
	| f4.(-\p )e4 g,8-\f
	| [f f( )a] [d d d]
	| d4.(-\p )cis8 r r
	| es,2.-\f
	| e!8 r r d-\p r r
	| f4. e4( )cis8
	| cis4.( )d8 r
    }

    \repeat volta 2 {
        a8-\f ~
	| [a16-\p d f a8(-\fp )f16] [a,16 d f a8(-\fp )f16]

% 50
	| [bes,16 e g bes8(-\fp )g16] [a,16 cis e g8(-\fp )e16]
	| [d16 f a d8(-\fp )f,16] [a16 d f a8(-\fp )f,16]
	| [e16 a cis e8(-\fp )a,16] [cis16 e a cis8(-\fp )a,16]
	| \times 2/3 { [bes16(-\p cis e] } \times 2/3 { [bes cis e] }
          \noTupletNum \times 2/3 { [bes cis e] [bes cis e] [bes cis
          e] [bes cis )e] }
	| \times 2/3 { [a,( cis d] [a cis d] [a cis d] [a cis d] [a cis
          d] [a cis )d] }
	| \times 2/3 { [bes( c )bes] [bes( c bes] [a bes )a] [g( a g]
          [f g f] [e f )e] }
	| \times 2/3 { [d( cis d] [f e f] [a gis a] } )d8 r
    }

    \repeat volta 2 {
        a,8-\f ~
	| [a16-\p d f a8(-\fp )f16] [a,16 d f a8(-\fp )f16]
	| [g,16 bes d g8(-\fp )d16] [bes16 c g' c8(-\fp )g16]
	| [c,16 e f a8(-\fp )f16] [a,16 c f a8(-\fp )f16]

% 60
	| [c16 f a c8(-\fp )f,16] [c16 e g c8(-\fp )e,16]
	| \times 2/3 { [g,16(-\p bes des] [g, bes des] [g, bes des]
          [g, bes des] [g, bes des] [g, bes )des] }
	| \times 2/3 { [as( b d!] [as b d] [as b d] [as b d] [as b d]
          [as b )d] }
	| \times 2/3 { [a'!( bes a] [g a g] [f g )f] [bes,( c bes] [a
          bes a] [g a )g] }
	| \times 2/3 { [a( g a] [c bes c] [f e f] } )a8 r c,8-\f ~
	| [c16-\p f a c8(-\fp )a16] [a,16 c f a8(-\fp )f16]
	| [a,16 c f a8(-\fp )f16] [a,16 cis e g8(-\fp )e16]
	| [a,16 d f a8(-\fp )f16] [a,16 cis d f8(-\fp )d16]
	| [a16 cis d f8(-\fp )d16] [cis16 e a cis8(-\fp )a16]
	| \times 2/3 { [bes( cis e] [bes cis e] [bes cis e] [bes cis
          e] [bes cis e] [bes cis )e] }

% 70
	| \times 2/3 { [d,( f gis] [d f gis] [d f gis] [d f gis]
          [d f gis] [d f )gis] }
	| \times 2/3 { [f'( g! f] [e f e] [d e )d] [g,( a g] [f g f]
          [e f )e] }
	| \times 2/3 { [d( cis d] [f e f] [a gis a] } )d8 r \tupletNum
    }

    \repeat volta 2 {
        r8
	| r [a, a] r [a a]
	| r [cis cis] r [cis cis]
	| r [f( )d] r [f( )d']
	| [cis cis cis] cis4 a8
	| [bes( )e,] r [bes'( )e,] r
	| [a16( )d, d d d d] [a'( )d, d d d d]
	| \property Voice.Stem \override #'beamed-lengths = #'(4.5)
	  [e8.( \grace { [f32 e d )e] } f16 g8] ~
	  \property Voice.Stem \revert #'beamed-lengths
	  [g e( )cis]

% 80
	|  e4.( )d8 r
    }

    \repeat volta 2 {
        r8
	| r [a a] r [a a]
	| <c2.-\fp g'>
	| r8 [a'( )c,] r [d( )g]
	| a,4.( )g4 c'8
	| [des( )g,] r [des'( )g,] r
	| [as16( )b, b b b b] [as'( )b, b b b b]
	| [c( )c' c-. c-. c-. c-.] c8 r bes,
	| bes4.( )a8 r r
	| R2.

% 90
        | [a8(-\sf bes )b] [c16(-\p )e e-. e-. e-. e-.]
	| d8 r r r4 r8
	| f4-\sf ~ [f16.( e64 )d] [cis16 a' a a a a]
	| [bes8( )cis,] r [bes'( )cis,] r
	| [f16( )gis, gis gis gis gis] [f'( )gis, gis gis gis gis]
	| [a( )a' a-. a-. a-. a-.] a8 r e
	| e4.( )d8 r
    }

    \repeat volta 2 {
        \key d \major
        a8-\p
	| [d( cis d] [fis e )d-\f] ~
	| [d cis16-\p d e8] [a,8. b16 cis8]
	| [d16( cis d b cis )d] [e8-. fis-. gis-.]

% 100
	| gis4( \grace { [a32 gis fis gis] } )a8 a, r a'
	| [a( b )g!] [e8. fis16 g8]
	| [g( a )fis] [d8. e16 fis8]
	| g8-. r a-. [g16( fis e d cis )e]
	| [d8.( fis16 a fis] )d8 r
    }

    \repeat volta 2 {
        a'8-\f
	| a4(-\p gis8 [fis e )d]
	| [cis cis cis] cis r a'-.-\f
	| a4(-\p gis8 [fis e )d]
	| [cis cis' cis] cis4 ais8
	| [ais( b )g!] [e8. fis16 g8]
	| [gis( a! )fis] [d8. e16 fis8]
	| g!-. r a-. [g16( fis e d cis )e]
	| [d8.( fis16 a fis] )d8 r
    }

    \break
    \key d \minor
    r8
    | a'4-\p a8 a4 a8
    | a4 a8 e4 g8
    | [fis8. d16 e8] [f8. g16 f8]
    | e4 e8 a4 cis,8
    | bes'4 bes8 bes4 bes8
    | a4 a8 a4 c8
    | b4( )d8 f,4( )e8

    % Needed with parenthesized dynamics
    \property Voice.TextScript \set #'extra-offset = #'(-1.0 . 0)

% 120
    | e4.( )d8 r f'_#'(columns (large "(") (dynamic "f") (large ")")) ~
    | [f( )e( e] ~ [e )dis d] ~
    | [d8.( cis16 )b8] cis4 a8(
    | )gis r g( )fis r f
    | e4. ~ e8 r \times 2/3 { [bes''16_#'(columns (large "(") (dynamic
      "p") (large ")")) bes bes] }
    | bes8 r \times 2/3 { [bes16 bes bes] } bes8 r \times 2/3 { [bes16
      bes bes] }
    | bes4.( )cis,8 r r
    | R2.
    | <d,4. f> ~ <d8 f> r f'
    | [f8. e16 d8] [g,8. f16 e8]

% 130
    | e2._#'(columns (large "(") (dynamic "f") (large ")")) ~
    | [e8( cis' e] )g r r
    | b,2. ~
    | [b8( gis' b] )d r r
    | d,,_#'(columns (large "(") (dynamic "p") (large ")")) r r cis r r
    | d r r r4 r8
    | r8 r d [d( )e cis-.]
    | f r \times 2/3 { [a16 a a] } a8 r \times 2/3 { [a16 a a] }
    | a8 r r r4 r8
    | d,4.(-\f c!
    | b )bes ~
    | bes a4( )g8
    | a4 r8 r4 r8
}
