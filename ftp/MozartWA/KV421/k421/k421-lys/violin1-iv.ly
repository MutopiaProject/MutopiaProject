violinIFourthMov = \notes \relative a' {
    \key d \minor
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	a8
	| [d8.^\trill cis16 d8] [f8. e16 d8]
	| [cis8.^\trill d16 e8] a,8 r [a'16 a]
	| a8 r [a16 a] a8 r [a16 a]
	| a4.( )e8 r a,
	| [e'8. f16 g8] [g8. f16 e8]
	| [a8. f16 d8] d8 r [d'16 d]
	| d8 r [d16 d] d8 r [d16 d]
	| d4.( )d,8 r
    }

    \repeat volta 2 {
	d8(
	| [)f8. g16 a8] [f8. e16 d8]

% 10
	| [d( )c c] c4 [c'16 c]
	| c8 r [c16 c] c8 r [c16 c]
	| c4.( )c,4 g'8
	| \grace { [g32( )a] } [bes8. a16 g8] g4 g8
	| \grace { [f32( )g] } [as8. g16 f8] f4 f8
	| [f8. a!16 c8] [c,8.^\trill d16 e8]
	| e4.( )f4 a8
	| [a8. bes16 c8] [f,8.^\trill g16 a8]
	| a4.( )g4 bes8
	| [bes16( )a g( )f e( )d] [d8.^\trill cis16 d8]

% 20
	| f4.( )e4 a,,8-\f
	| [bes8.^\trill es16 g8] [bes8.^\trill es16 g8]
	| bes4.( )cis,8 r r
	| a'8-\p r [a16 a] a8 r [a16 a]
	| a4.( )d,8 r
    }

    % First variation

    \repeat volta 2 {
	a,8
	| [d16( a f' d a' )f] [d'( a f' d cis )d]
	| [cis( d dis e dis )e] [a,( bes a g f )e]
	| [d cis'( d cis d e] [f e f fis g )gis]
	| [gis( a gis a gis )a] e4 a,,8-\f
	| [bes16( cis e g bes cis] [e g bes g e )cis]

% 30
        % In my opinion, Lily should handle this bar in a better way...
	| [d \slurDown cis,( d cis d cis] \stemUp [)d cis'(-\p d cis d )cis]
          \slurBoth \stemBoth
	| [d( es e f fis g] [gis a bes b c )cis]
	| cis4( \grace { [d32 cis b cis] } )d8 d, r
    }

    \repeat volta 2 {
	d,8
	| [f16( d a' f d' )a] [f'( a g f e )d]
	| [d( )c c c c c] [b( c d c bes )g]
	| [a( f c' a f' )c] [a'( f )c' c-. c-. c-.]
	| c4( [bes32 a g a] )g4 g8-\p
	| [g16( bes des bes g f] )e8 r e
	| [f16( g as f d c] )b8 r b-\f
	| [c16( f a! f c a] [c bes! d bes g )e]

% 40
	| g4.( )f8 r c-\f
	| [f16( a c a f' )c] [a'( f )c' c-. c-. c-.]
	| c4(-\p [bes32 a g a] )g4 a,,8-\f
	| [d16( f a f d' )a] [f'( d )a' a-. a-. a-.]
	| a4(-\p [g32 f e f] )e4 a,,8-\f
	| [bes16 d( )es fis( )g a(] [)bes d( )es fis( )g a(]
	| [)bes( g e! )cis f-.-\p f-.] [f( d b )gis d'-. d-.]
	| [d( cis c b bes )a] [gis( a bes a g )e]
	| e4.( )d8 r
    }

    % Second variation

    \repeat volta 2 {
	a'8-\f ~
	| [a-\p d-.] f4-\fp [d8-. bes-\f] ~

% 50
	| [bes-\p e-.] g4-\fp [e8-.-\f a,] ~
	| [a-\p d-.] f4-\fp [a8-. d-.]
	| [cis( e )a] a r r
	| bes,4-\p [g16.^\trill a32] [bes8( g )e]
	| a4 [f16.^\trill g32] [a8( f )d]
	| [es( g f] [e d )cis]
	| [d-. f-. a-.] d r
    }

    \repeat volta 2 {
	a,8-\f ~
	| [a-\p d-.] f4-\fp [e8-. d-\f] ~
	| [d-\p g] d'4-\fp [c8 bes-\f] ~
	| [bes-\p a] c4-\fp [f,8( )c']

% 60
	| a4.( )g8 r r
	| des'4-\p [bes16.^\trill c32] [des8( bes )g]
	| as4 [f16.^\trill g32] [as8( f )b,]
	| [c( bes! )a] \grace { \noCue a32 \cue } [g8( f )e]
	| [f-. a-. c-.] f r a,8-\f ~
	| [a-\p c-.] f4-\fp [a8-. c-\f] ~
	| [c16(-\p b c b c )a] g8 r a,-\f ~
	| [a-\p cis-.] d4-\fp [f8-. a-\f] ~
	| [a16(-\p gis a gis a )f] e8 r r
	| \grace { \noCue bes16( \cue } )bes'4-\p [g16.^\trill a32]
          [bes8( g )e]
	| \grace { \noCue f16( \cue } )f'4 [d16.^\trill e32] [f8( d )gis,]
	| [a( g! )f] \grace { \noCue f16 \cue } [e8( d )cis]
	| [d-. f-. a-.] d r
    }

    % Third variation

    \repeat volta 2 {
	r8
	| r [f,, f] r [f f]
	| r [e e] r [e e]
	| r [d'( )f,] r [d'( )gis]
	| [a a a] a4 a8
	| [bes( )e,] r [bes'( )e,] r
	| [a16( )d, d d d d] [a'( )d, d d d d]
	| [e8.( \grace { [f32 e d )e] } f16 g8] ~ [g e( )cis]

% 80
	| e4.( )d8 r
    }

    \repeat volta 2 {
	r8
	| r8 [f, f] r [f f]
	| bes2.-\fp
	| r8 [f'( )a,] r [g( )d']
	| r8 [c, c] c4 c''8
	| [des( )g,] r [des'( )g,] r
	| [as16( )b, b b b b] [as'16( )b, b b b b]
	| [c( )c' c-. c-. c-. c-.] c8 r e,,
	| e4.( [)f16( )f' f-. f-. f-. f-.]
	| f8 r r r4 r8

% 90
	| f,4.(-\sf [e16 )g g-. g-. g-. g-.]
	| f8 r r r4 r8
	| [d'16(-\sf e f fis g gis] [)a a a a a a]
	| [bes8( )cis,] r [bes'( )cis,] r
	| [f16( )gis, gis gis gis gis] [f'( )gis, gis gis gis gis]
	| [a( )a' a-. a-. a-. a-.] a8 r cis,
	| cis4.( )d8 r
    }

    \key d \major

    \repeat volta 2 {
	a8-\p
	| [d( cis d] [fis e )d-\f] ~
	| [d cis16-\p d e8] [a,8. b16 cis8]
	| [d16( cis d b cis )d] [e8-. fis-. gis-.]

% 100
	| gis4( \grace { [a32 gis fis gis] } )a8 a, r a'
	| [a( b )g!] [e8. fis16 g8]
	| [g( a )fis] [d8. e16 fis8]
	| g-. r fis-. e-. r cis-.
	| [d8.( fis16 a fis] )d8 r
    }

    \repeat volta 2 {
	d8-\f
	| d4(-\p cis8 [b a )gis]
	| [a16( cis )e e e e] [e8( )dis d-.-\f]
	| d4(-\p cis8 [b a )gis]
	| [a16( e' )a a a a] a4( )ais8
	| [ais8( b )g] [e8. fis16 g8]

% 110
	| [gis8( a! )fis] [d8. e16 fis8]
	| g!8-. r fis-. e-. r cis-.
	| [d8.( fis16 a fis] )d8 r
    }

    \key d \minor

    a8-\p
    | [d8.^\trill cis16 d8] [f8. e16 d8]
    | [cis8.^\trill d16 e8] a,8 r \times 2/3 { [a'16 a a] }
    | a8 r \times 2/3 { [a16 a a] } a8 r \times 2/3 { [a16 a a] }
    | a4.( )e8 r a,
    | [e'8. f16 g8] [g8. f16 e8]
    | [a8. f16 d8] d4 \times 2/3 { [d'16 d d] }
    | d8 r \times 2/3 { [d16 d d] } d8 r \times 2/3 { [d16 d d] }

    % Needed with parenthesized dynamics
    \property Voice.TextScript \set #'extra-offset = #'(-1.0 . 0)

% 120
    | d4.( )d,8 r a'(_#'(columns (large "(") (dynamic "f") (large ")"))
    | )gis r g( )fis r f(
    | )e4. ~ e4 f8( ~
    | [f )e e(] ~ [e )dis d] ~
    | [d8.( cis16 b8] )cis r r
    | R2.
    | r4 r8 r r \times 2/3 { [f'16_#'(columns (large "(") (dynamic
      "p") (large ")")) f f] }
    | f8 r \times 2/3 { [f16 f f] } f8 r  \times 2/3 { [f16 f f] }
    | f4.( )gis,8 r gis
    | \grace { \noCue bes16 \cue } [a8. g!16 f8] \grace { \noCue f16
      \cue } [e8. d16 cis8]
    | cis2._#'(columns (large "(") (dynamic "f") (large ")")) ~
    | [cis8( e g] )bes r r
    | gis2. ~
    | [gis8( b d] )f r r
    | f,,_#'(columns (large "(") (dynamic "p") (large ")")) r r e r r
    | d r \times 2/3 { [a''16 a a] } a8 r \times 2/3 { [a16 a a] }
    | a8 r f, [f( )g e-.]
    | a r \times 2/3 { [a'16 a a] } a8 r \times 2/3 { [a16 a a] }
    | a8 r d,,8 [d( )e cis8-.] d r r r r \times 2/3 { [d''16-\f d d] }
    | d8 r \times 2/3 { [d16 d d] } d8 r \times 2/3 { [d16 d d] }
    | d2.(
    | )d,4 r8 r4 r8
}
