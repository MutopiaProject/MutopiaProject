violaFourthMov = \notes \relative f' {
    \key d \minor
    \time 6/8
    \clef alto

    \noTupletBracket

    \repeat volta 2 {
	r8
	| [f8.-\p e16 f8] [d8. e16 f8]
	| e4 cis8 cis4 cis8
	| d4 cis8 [d8. e16 d8]
	| cis4 cis8 cis4 e8
	| [cis8. d16 e8] [e8. d16 cis8]
	| d4 d8 d4 a'8
	| g4 g8 f4 g,8
	| [f8. g16 a8] f8 r
    }

    \repeat volta 2 {
	r8
	| [d'8. e16 f8] d4 a'8

% 10
	| g4 g8 g4 g8
	| [f8. g16 a8] [a,8. g16 f8]
	| f'4.( )e4 c8
	| des4-\fp des8 des4 des8
	| d!4-\fp d8 d4 d8
	| c4 c8 c4 c8
	| c4. ~ c4 f8
	| [f8. g16 a8] a4 f8
	| f4.( )e4 e8
	| d2. ~

% 20
	| [d8.( cis16 )b8] cis4 r8
	| bes!4-\f bes8 bes4 bes8
	| [bes8. es16 g8] e4.
	| d4-\p d8 [cis8. a16 g8]
	| g4.( )f8 r
    }

    \repeat volta 2 {
	r8
	| f4.( )a ~
	| a ~ a4( )g8
	| f4. d'4( )e8
	| [f( e )d] a'4.
	| cis,4.(-\f )bes4 r8
	| a8 r a( )g r c!(-\p
	| )bes r d ~ d r g,
	| g4.( )f8 r
    }

    \repeat volta 2 {
        r8
	| f4.(-\f )a
	| g ~ g4( )c8
	| c4. ~ [c8 c( )f]
	| f4.( )e8 r e-\p
	| e4 [e16( f] )g4 g8(
	| as4 )f8 as,4 as8(-\f
	| )a!4 a8 g4( )c8

% 40
        | c4. ~ c8 r r
	| [a-\f f'( )a] c4( )a8
	| a4.(-\p )c4 e,8-\f
	| [a, d( )f] a4( )f8
	| f4.(-\p )a8 r r
	| bes,2.-\f
	| cis8 r r b-\p r r
	| d4. cis4( )g8
	| g4.( )f8 r
    }

    \repeat volta 2 {
        r8

	| \property Voice.TextScript \set #'extra-offset = #'(-1.5
	  . -2) [a8(_#'(columns (large "(") (dynamic "mf")
	  (large ")")) f d] [a' f )d] \property
	  Voice.TextScript \revert #'extra-offset

% 50
	| [bes'( g e] [a g )e]
	| [a( f )d] [f'( d )a]
	| [e'( cis a] [a' e )cis]
	| [bes-.-\p e-. g-.] bes r r
	| [a,-. d-. f-.] a r r
	| [g-. e!-. f-.] [bes-. a-. g-.]
	| [f-. <f,-. a> <f-. a>] <f a> r
    }

    \repeat volta 2 {
        r8
	| [a( f d] [a' f )d]
	| [bes'( g )e] [g'( e )c]
	| [f( c )a] [c( a )f]

% 60
        | [c'( a f] [c' g )e]
	| [g-.-\p bes-. e-.] g r r
	| [f,-. b-. d-.] f r r
	| c2.
	| [c8-. c-. c-.] c r r
	| \property Voice.TextScript \set #'extra-offset = #'(-1.5
	  . -2) [c8(_#'(columns (large "(") (dynamic "mf")
	  (large ")")) a f] [c' a )f] \property
	  Voice.TextScript \revert #'extra-offset
	| [a( f )c] [a'( e )cis]
	| [a'( f d] [a' f )d]
	| [d'( a )f] [cis'( a )e]
	| [bes'-.-\p e-. g-.] bes r r

% 70
	| [b,-. d,-. f-.] [b( d )f]
	| a2. ~
	| [a8 <f,-. a> <f-. a>] <f-. a> r
    }

    \repeat volta 2 {
        a8
	| [a( )d] r [f( )d] r
	| [cis16( e )a-\sf a-. a-. a-.] a4-\p \times 2/3 { [g16( f )e] }
	| [d8( )d'] r [f( )gis,] r
	| [e32( )a16. e32( )cis'16. e,32( )e'16.] a,4 r8
	| r8 [<bes, g'> <bes g'>] r [<bes g'> <bes g'>]
	| r [<a f'> <a f'>] r [<a f'> <a f'>]
	| bes4. [cis,8( e )g]

% 80
	| < { \stemUp \tieUp a4. ~ a8 }
	    \context Voice=x { \stemDown \slurDown g4.( )f8 }
	  > \stemBoth \slurBoth \tieBoth r8
    }

    \repeat volta 2 {
        a8
	| [a( )d] r [f( )d] r
	| [c,!16(-\fp e g c e )g] [bes( g e c bes )g]
	| [a8( )c'] r [g,( )d''] r
	| f,4 [e32( f g )f] e4 r8
	| r [des( )c] r [des( )c]
	| r [<f, as> <f as>] r [<f as> <f as>]
	| <f4 a!> r8 [c16( )c' c-. c-. c-. c-.]
	| c4. ~ c8 r f,(-\f
	| [)a c-. e-.] [f16( g as a bes )b]

% 90
	| \grace { \cue d16 \noCue } c4-\sf ~ [c16.(-\p bes!64 )a] g8

          r \lowerDynamics cis,,(-\f \restoreDynamics
	| [)d f-.-\p a-.] [d16( e f fis g )gis]
	| \grace { \cue bes \noCue } a4-\sf ~ [a16.(-\p g!64 )f] e8 r r
	| r [g,( )bes] r [g( )bes]
	| r [d,( )f] r [d( )f]
	| f4 r8 [a16( )a' a-. a-. a-. a-.]
	| g4.( )f8 r
    }

    \repeat volta 2 {
        \key d \major
	r8
	| \tieDown \slurUp <a,2.-\p fis'(> ~
	| <a4. )g'> <g e'> \tieBoth \slurBoth
	| <fis d'> [a8-. a-. d-.]

% 100
	| d4.( )cis8 r r
	| R2.*2
	| [cis'16( a b cis d cis] [b a g fis e )g]
	| [fis( d a d fis a] )fis8 r
    }

    \repeat volta 2 {
        fis8-\f
	| fis4(-\p e8 [d cis )b]
	| [a a a] a r fis'-.-\f
	| fis4(-\p e8 [d cis )b]
	| [a e' e] e4 r8
	| R2.*2

% 111
        | [cis'16( a b cis d cis] [b a g fis e )g]
	| [fis( d a d fis a] )fis8 r
    }

    \key d \minor
    \break
    r8
    | [f8.-\p e16 f8] [d8. e16 f8]
    | e4 cis8 cis4 cis8
    | d4 cis8 [d8. e16 d8]
    | cis4 cis8 cis4 e8
    | [cis8. d16 e8] [e8. d16 cis8]
    | d4 d8 d4 a'8
    | g4( )f8 d4( )g,8

    % Needed with parenthesized dynamics
    \property Voice.TextScript \set #'extra-offset = #'(-1.0 . 0)

% 120
    | g4.( )f8 r \times 2/3 { [a'16_#'(columns (large "(") (dynamic
      "f") (large ")")) a a] }
    | a8 r \times 2/3 { [a16 a a] } a8 r \times 2/3 { [a16 a a] }
    | a4.( )a,8 r r
    | R2.*3
    | <g'4._#'(columns (large "(") (dynamic "p") (large ")")) bes> ~
      <g8 bes> r r
    | R2.
    | gis4. ~ gis4( )d'8
    | a8 r r r4 r8

% 130
    | R2.
    | r4 r8 r r \times 2/3 { \lowerText [f16_#'(columns (large "(")
      (dynamic "f") (large ")")) f f] \restoreText }
    | f8 r \times 2/3 { [f16 f f] } f8 r \times 2/3 { [f16 f f] }
    | f4.( )gis,8 r r
    | a8_#'(columns (large "(") (dynamic "p") (large ")")) r r a r r
    | a r r r4 r8
    | r4 r8 a4. ~
    | a8 r r r4 r8
    | r r f [f( )g e-.]
    | fis2.(-\f
    | )g ~
    | g4. fis4( )e8
    | fis4 r8 r4 r8
}
