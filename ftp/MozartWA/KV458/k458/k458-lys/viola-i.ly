violaFirstMov = \notes \relative bes' {
    \key bes \major
    \clef alto

    \noTupletBracket

    \repeat volta 2 {
	r8
	| \once \property Voice.TextScript \override #'extra-offset =
	  #'(-1.0 . 0.0) bes4(-\parentF )f8 [f( )d d-.]
	| d4( )f8 f4.
	| [g8. f16 es8] es4 c8
	| [bes( d )f] f4 r8
	| bes4 f8 [f16( g )f8 d-.]
	| d4( )f8 f4.
	| [g8. f16 es8] es4.
	| d4( )f8 d4 d8-\p
	| es4( )d8 [c8.^\trill bes16 c8]

% 10
	| d4. ~ [d8 a'( )bes]
	| f2.-\f
	| <bes,4. f'> ~ <bes4 f'> d8-\p
	| es4( )d8 [c8.^\trill bes16 c8]
	| d4. ~ [d8 a'( )bes]
	| a4.(-\f )f ~
	| f8 r r f4.-\p ~
	| f8 r r f4.-\pp ~
	| [f8 bes-. bes-.] r [g-. g-.]
	| r [d-. d-.] r [e e]

% 20
	| r [a,( c] [bes a )g]
	| [f( a c] [bes a )g]
	| f r g( )f r g(
	| )f r g'( )f r g(
	| [)f \raiseSlur c(-. c-.] [c-. c-. )c-.] \restoreSlur
	| c4 r8 r4 r8
	| r4 r8 r r d8-\f
	% The Breitkopf score has 'g,8', but it is certainly a mistake
	| [d( )bes bes-.] [bes( )d, d-.]
	| f4( )bes8 a4 b8
	| [c16( d )c8 a-.] [a16( bes! )a8 c,-.]

% 30
	| c4( )c'8 bes4 c8(
	| )bes4. g4( )g'8
	| g4.( )f ~
	| f e ~
	| e( )d
	| d [bes8-. c-. d-.]
	| c4. bes4( )g8
	| a4. [c8( )d d]
	| c2. ~
	| c4. ~ c4( )d8

% 40
	| c2. ~
	| c4( )a8 \lowerDynamics f4.(-\p \restoreDynamics
	| )g r4 r8
	| r4 r8 r [a8-. f-.]
	| [c'16( d c d )c8] r4 r8
	| r4 r8 [c16( d c d )c8]
	| R2.*2
	| [bes16(-\f c bes c )bes8] r \raiseSlur [bes(-. )bes-.]
          \restoreSlur
	| f'4( )e8 r4 r8

% 50
	| [bes16( c bes c )bes8] g'4(-\fp [e16 )g]
	| f8 r r f r r
	| bes, r r c r r
	| c4.-\f [d8-. c-. bes-.]
	| a4 r8 r4 r8
	| bes4(-\fp )a8 r4 r8
	| bes4(-\fp )a8 r4 r8
	| bes4(-\fp )a8 es'!4(-\fp )d8
	| f4(-\fp )e8 bes'4(-\fp )a8
	| r [bes-.-\p a-.] \grace { \cue a16 } [g8-. f-. e-.]

% 60
	| f4 r8 r4 r8
	| e4(-\fp )f8 r4 r8
	| e4(-\fp )f8 r4 r8
	| cis4(-\fp )d8 fis4(-\fp )g8
	| f!4( )e8 bes'4(-\fp )a8
	| r [bes-.-\p a-.] \grace { \cue a16 } [g8-. f-. e-.]
	| [a16(-\f bes a bes )c8] [f,16( g f g )a8]
	| [d,16( e d e )f8] [bes,16( c bes c )d8]
	| g4( )a8 [d-. c-. bes-.]
	| [a16( bes a bes )c8] [f,16( g f g )a8]

% 70
	| [d,16( e d e )f8] [bes,16( c bes c )d8]
	| g,2.(-\fp
	| )a
	| d
	| c4.( )f ~
	| f8 r r r4 r8
	| a,4.( )bes
	| a r8 r a'-\f
	| bes4( )a8 [g8.^\trill f16 g8]
	| gis4( )a8 f4(-\p )c8

% 80
	| bes4.( )g
	| f r8 r a'-\f
	| bes4( )a8 [g8.^\trill f16 g8]
	| gis4( )a8 \grace { [a32 bes] } [c8. bes16 a8]
	| g!4 r8 g4 r8
	| f4 r8 f4 r8
	| g4_#'(italic "calando") r8 g4 r8
	| f4 r8 f4 r8
	| g4 r8 g4 r8
	| f4-\pp r8 c'4 r8

% 90
	| c4 r8 r r
    }

    \repeat volta 2 {
        r8
	| a,4.(-\p ~ [a8 f )a]
	| a4.( ~ [a8 c )a]
	| [bes( g )e] [e e e]
	| e4.( f4 )a8
	| a4.( ~ [a8 f )a]
	| a4.( ~ [a8 c )a]
	| g4.( ~ [g8 bes )g]
	| a4 r8 r4 r8
	| f'2. ~

% 100
	| f4. ~ f4 f,8
	| [g( bes )c] [g' g g]
	| g4.( )f8 r r
	| f2. ~
	| f4. ~ f4 f,8
	| [g( bes )c] [e e( )g]
	| [f as,-. as-.] as-. r r
	| r [c-. c-.] c r r   % The last `c' is not staccato!
	| r [f-. f-.] f r r
	| r [f f] r [c c]

% 110
        | r [d d] d r r
	| r [f f] f r r
	| r [b b] b r r
	| r [b b] r [b b]
	| r [es,,16( d f es] )g8 r r
	| r [c16( b d c] )es8 r r
	| r [es16( d f es] )g8 r r
	| R2.
	| r8 [fis,16( e g fis] )a8 r r
	| r [fis'16( e g fis] )a8 r r

% 120
	| r4 r8 r8 [fis16( e g )fis]
	| a4.( )a,
	| \slurStemToHead g( f'!
	| e )g \slurDefToDef
	| f( )ces
	| bes( )f'
	| [es8-. es-. bes-.] [bes'16( c bes c )bes8]
	| r8 [es,-. bes-.] [bes'16( c bes c )bes8]
	| \once \property Voice.TextScript \override #'extra-offset =
	  #'(-1.0 . 0.0) [g16(-\parentF as g as )g8] [es16( f es f )es8]
	| [c16( d c d )c8] [a16( bes a bes )a8]

% 130
	| [f-. c'-. f,-.] [f'16( g f g )f8]
	| r [d-. bes-.] [e16( f e f )e8]
	| r [f-. c-.] [es!16( f es f )es8]
	| r [des-. bes-.] [g'16( a g a )g8]
	| f8 r r r4 r8
	| R2.
	| r4 r8 [c8(-\p es! )c]
	| a r r r4 r8
	| \once \property Voice.TextScript \override #'extra-offset =
	  #'(-1.0 . 0.0) bes'4(-\parentF )f8 [f( )d d-.]
	| d4( )f8 f4.

% 140
	| [g8. f16 es8] es4 c8
	| [bes( d )f] f4 r8
	| bes4 f8 [f16( g )f8 d-.]
	| d4( )f8 f4.
	| [g8. f16 es8] es4.
	| d4( )f8 d4 d8-\p
	| es4( )d8 [c8.^\trill bes16 c8]
	| d4. ~ [d8 a'( )bes]
	| f2.-\f
	| <bes,4. f'> ~ <bes4 f'> d8-\p

% 150
	| es4( )d8 [c8.^\trill bes16 c8]
	| d4. ~ [d8 a'( )bes]
	| a4.(-\f )f ~
	| f8 r r f4.-\p ~
	| f8 r r f4.-\pp ~

	% This bar is not present in the Breitkopf & Haertel score,
	% but it is likely to be a mistake (see the Philips recording
	% of this movement with Quartetto Italiano).
	| [f8 bes-. bes-.] r [g-. g-.]
	| r [d-. d-.] r [e e]
	| r [a,( c] [bes a )g]
	| [f( a c] [bes a )g]
	| f r g( )f r g(
	| )f r g'( )f r g(

% 160
	| [)f \raiseSlur c(-. c-.] [c-. c-. )c-.] \restoreSlur
	| c4 r8 r4 r8
	| r4 r8 r r d8-\f  % This is `d', not `g' (unlike bar #26)
	| [d( )bes bes-.] [bes( )d, d-.]
	| f4( )bes8 a4 b8
	| [c16( d )c8 a-.] [a16( bes! )a8 c,-.]
	| c4( )c'8 [bes bes' bes]
	| 	  <
            { bes2.-\f | bes | bes | bes4. }
	    \context Voice=x {
	      \setTrillWave \blankNotes bes2. \spanrequest \start "text"
	      s | s | s4. \spanrequest \stop "text"
	    }
	  > \grace { [a32 bes] } bes,4 f'8(

% 171
	| )es4. ~ es4( )c'8
	| c4.( )bes ~
	| bes( )a ~
	| a( )g ~
	| g8 r r [g,( b )c]
	| f,4. ~ f4( )c'8
	| bes!4. [f8( )g g]
	| f2. ~
	| f4. ~ f4( )g8

%  180
	| f4. f' ~
	| f4( )d8 bes4.-\p
	| c r4 r8
	| r4 r8 r [d-.-\p bes-.]
	| [f'16( g f g )f8] r4 r8
	| r4 r8 [f,16( g f g )f8]
	| R2.*2
	| \lowerDynamics [es16(-\f \restoreDynamics f es f )es8] r
          [es-. es-.]
	| bes'4( )a8 r4 r8
	| [es'16( f es f )es8] f4.-\fp ~

% 190
	| f8 r r es r r
	| bes r r c r r
	| bes4.-\f [g'8-. f-. es-.]
	| d4 r8 r4 r8
	| es4(-\fp )d8 r4 r8
	| es4(-\fp )d8 r4 r8
	| c4(-\fp )bes8 f'4(-\fp )es8
	| bes4(-\fp )a8 es'4(-\fp )d8
	| r [es-.-\p d-.] \grace { \cue d16 } [c8-. bes-. a-.]

% 200
	| bes4 r8 r4 r8
	| a'4( )bes8 r4 r8
	| a4( )bes8 r4 r8
	| d,4(-\fp )es8 e4(-\fp )f8
	| c4(-\fp )bes8 es!4(-\fp )d8
	| r [es-.-\p d-.] \grace { \cue d16 } [c8-. bes-. a-.]
	| [bes'16( c bes c )d8] [g,16( a g a )bes8]
	| [g16( a g a )bes8] [es,16( f es f )g8]
	| c,4( )d8 [g-. f-. es-.]
	| [d16( es d es )f8] [bes,16( c bes c )d8]

% 210
	| [g,16( a g a )bes8] [es,16( f es f )g8]
	| c2.(-\fp
	| )d
	| g
	| as4.( )bes ~
	| bes8 r r r4 r8
	| d,4.( )es
	| d r8 r d-\f
	| es4( )d8 [c8.^\trill bes16 c8]
	| cis4( )d8 \lowerDynamics bes4(-\p \restoreDynamics )f8

% 220
	| es4.( )c'
	| bes r8 r d'-\f
	| es4( )d8 [c8.^\trill bes16 c8]
	| cis4( )d8 \grace { [f,32( )g] } [as8. g16 f8]
	| es4-\p r8 es4 r8
	| d4 r8 bes'4 r8
	| es8 r r c r r
	| bes r r f r r
	| es r r a, r r
    }


    % Lilypond gets confused by the last bar in this alternative (it
    % lasts 5/8 instead of 6/8, so we turn off automatic bar breaking
    % and do it manually.

    \alternative {
        {
	    \cadenzaOn bes8 r r f' r r \bar "|" f4 r8 r r \cadenzaOff
	}

	{
	    \cadenzaOn bes8 r r f' r r \bar "|" f4 r8 r4 \cadenzaOff
	}
    }

    \cadenzaOn r8 \bar "|" \cadenzaOff
    | f4-\f r8 f'4 r8
    | f4 r8 r4 r8
    | R2.*2
    | es2.(-\p
    | )e
    | f4 r8 r4 r8
    | R2.
    | r8 [f,8-\f f] [f f f]

% 240
    | f2. ~
    | [f8 f f] [f f f]
    | f2. ~
    | f4. f ~
    | f f ~
    | f4 f'8 [f( )d d-.]
    | [d( )bes bes-.] bes4( )bes'8
    | [bes( )c c-.] c4 r8
    | r4 r8 r [a a]
    | [a( )bes bes-.] bes4 r8

% 250
    | r4 r8 r [c, c]
    | [c( )a a-.] [a( )f f-.]
    | c'4 r8 des4 r8
    | r4 r8 d!4.(-\p ~
    | [d8 es )e] f4( )es8
    | d4 r8 <c4 es> r8
    | <bes4 d> r8 <c4 es> r8
    | <bes4 d> r8 [<c es> <c es> <c es>]
    | <bes4 d> r8 [<c es> <c es> <c es>]
    | [d16(-\f es d es )f8] [bes,16( c bes c )d8]

% 260
    | g,-\p r r a r r
    | r4 r8 r [c-. f,-.]
    | [f'16( g f g )f8] r [a-. c-.]
    | [f,16( g f g )f8] r [c-. f,-.]
    | [f'16( g f g )f8] r [a-. c-.]
    | f,8-\f r r es r r
    | [bes16( c bes c )d8] [a16( bes a bes )c8]
    | [f16-\f f f f f f] [es es es es es es]
    | [d d d d d d] [c c c c c c]
    | bes4 r8 r r g'
    | g4( )b,8 c4 f8
    | g4 r8 r4 r8
    | [f f f] [f f a]
    | [bes d,-\p d] d r r
    | r [<c es> <c es>] <c es> r r
    | r [bes16( a c )bes] d8 r r
    | r [a16( g bes )a] [c8 f f]
    | bes,4 r8 bes'4-\f r8
    | bes,4 r8 r4 r8
}
