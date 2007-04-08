celloFirstMov = \notes \relative bes {
    \key bes \major
    \clef bass

    \noTupletBracket

    \repeat volta 2 {
	r8
	| \once \property Voice.TextScript \override #'extra-offset =
	  #'(-1.0 . 0.0) bes4-\parentF r8 bes,4 r8
	| d4( )bes8 f'4 d8
	| c4 r8 [es( c )f]
	| d4( )bes8 f'4 r8
	| bes4 r8 bes,4 r8
	| d4( )bes8 f'4 d8
	| c4 r8 [es( c )f]
	| [bes, bes bes] < { bes4. ~ } \context Voice=x { s4 s8-\p } >
	| bes2. ~

% 10
	| bes
	| f-\f
	| bes4. ~ [bes8 bes-.-\p bes-.]
	| bes2. ~
	| bes
	| f-\f
	| bes8 r r f'4.(-\p
	| )bes8 r r f4.(-\pp
	| [)bes8 bes-. bes-.] r [g-. g-.]
	| r [d-. d-.] r [e-. e-.]

% 20
	| f2. ~
	| f ~
	| f8 r c( )f r c(
	| )f r c'( )f, r c'(
	| [)f, \raiseSlur f(-. f-.] [f-. f-. )f-.] \restoreSlur
	| f4 r8 r4 r8
	| R2.*2
	| d4(-\f )bes8 f'4 r8
	| R2.
	| f,4( )a8 bes4 a8(

% 30
	| )g4. g'(
	| e f
	| d e
	| )cis( )d
	| bes [g8-. a-. bes-.]
	| c4.( )e
	| f [a,8( bes )b]
	| c4.( )e
	| f a4( )bes8
	| c4.( )e,

% 40
	| f d-\p
	| c r4 r8
	| R2.
	| r4 r8 r [a-.-\p f-.]
	| [c'16( d c d )c8] r4 r8
	| R2.
	| \stemUp \slurDown c4.(-\f des
	| c des
	| c des
	| )c \slurBoth \stemBoth bes'4.(-\fp

% 50
	| )a8 r r bes r r
	| g r r e r r
	| f4.-\f [bes,8-. c-. c-.]
	| f,4 r8 r4 r8
	| e'4(-\fp )f8 r4 r8
	| e4(-\fp )f8 r4 r8
	| e4(-\fp )f8 a4(-\fp )bes8
	| b4(-\fp )c8 e4(-\fp )f8
	| bes,4-\p r8 c4 r8

% 60
	| f,4 r8 r4 r8
	| R2.*3
	| b4(-\fp )c8 e4(-\fp )f8
	| bes,!4-\p r8 c4 r8
	| \clef tenor [f16( g f g )a8] [d,16( e d e )f8]
	| [bes,16( c bes c )d8] [g,16( a g a )bes8] \clef bass
	| e,4( )f8 [bes-. c-. c-.]
	| [f,16( g f g )a8] [d,16( e d e )f8]

% 70
	| [bes,16( c bes c )d8] [g,16( a g a )bes8]
	| \lowerDynamics e,2.(-\fp 
	| )fis
	| gis(
	| a4. b
	| )c8 r r r4 r8
	| c,2.
	| f2.-\f ~
	| f ~
	| f4. ~ f4(-\p \restoreDynamics )a8

% 80
	| bes4.( )c
	| f2. ~
	| f-\f ~
	| f4( )es!8 d4.
	| g4-\p r8 c,4 r8
	| f4 r8 d4 r8
	| bes4_#'(italic "calando") r8 c4 r8
	| f4 r8 d'4 r8
	| bes4 r8 c4 r8
	| f,4-\pp r8 f'4 r8

% 90
	| f4 r8 r r	
    }

    \repeat volta 2 {
        r8
	| f,,2.-\p ~
	| f
	| c' ~
	| c4.( )f,8 r r
	| f2. ~
	| f
	| c(
	| )f4 r8 r4 r8
	| f'2. ~

% 100
	| f
	| [c8( e )g] [c c c]
	| c4.( )f,8 r r
	| f2. ~
	| f
	| [c8( e )g] [c c c]
	| [f, f-. f-.] f-. r r
	| r [f-. f-.] f-. r r
	| r [f-. f-.] f-. r r
	| r [f f] r [as as]

% 110
	| r [g g] g r r
	| r [g g] g r r
	| r [g g] g r r
	| r [g g] r [g g]
	| r [c, c] c r r
	| r [c c] c r r
	| r [c c] c r r
	| r [c16( b d c] [)es8 \slurDown bes16( a c bes]
	| [)d8 \slurBoth d16( cis e d] )fis8 r r
	| r [d'16( cis e d] )fis8 r r

% 120
	| r [a,16( g bes a] )c8 r r
	| r [d,16( cis e d] )fis8 r r
	| r [g,16( fis a g] )bes8 r r
	| r [c16( b d c] )e8 r r
	| r [f,16( e g f] )as8 r r
	| r \slurDown [bes!16( a c bes] )d4. \slurBoth
	| es( )d
	| es( )d
	| es4 r8 r4 r8
	| \once \property Voice.TextScript \override #'extra-offset =
	  #'(-1.0 . 0.0) [c16(-\parentF d c d )c8] [a16( bes a bes )a8]

% 130
	| f4 r8 r [a-. f-.]
	| [f'16( g f g )f8] r [bes,-. f-.]
	| [f'16( g f g )f8] r [c-. f,-.]
	| [f'16( g f g )f8] r [f f,]
	| f' r r r4 r8
	| R2.
	| r4 r8 [a(-\p c )a]
	| f r r r4 r8
	| \once \property Voice.TextScript \override #'extra-offset =
	  #'(-1.0 . 0.0) bes4-\parentF r8 bes,4 r8
	| d4( )bes8 f'4 d8

% 140
	| c4 r8 [es( c )f]
	| d4( )bes8 f'4 r8
	| bes4 r8 bes,4 r8
	| d4( )bes8 f'4 d8
	| c4 r8 [es( c )f]
	| [bes, bes bes] < { bes4. ~ } \context Voice=x { s4 s8-\p } >
	| bes2. ~
	| bes
	| f-\f
	| bes4. ~ [bes8 bes-.-\p bes-.]

% 150
	| bes2. ~
	| bes
	| f-\f
	| bes8 r r f'4.(-\p
	| )bes8 r r f4.(-\pp

	% This bar is not present in the Breitkopf & Haertel score,
	% but it is likely to be a mistake (see the Philips recording
	% of this movement with Quartetto Italiano).
	| [)bes8 bes-. bes-.] r [g-. g-.]
	| r [d-. d-.] r [e-. e-.]
	| f2. ~
	| f ~
	| f8 r c( )f r c(

% 160
	| )f r c'( )f, r c'(
	| [)f, \raiseSlur f(-. f-.] [f-. f-. )f-.] \restoreSlur
	| f4 r8 r4 r8
	| R2.*2
	| d4(-\f )bes8 f'4 r8
	| R2.
	| f,4( )a8 bes4 r8
	| es4 r8 r4 r8
	| g4( )es8 bes'4 r8
	| R2.

% 170
	| bes,4( )d8 es4 d8(
	| )c4. c'
	| a( )bes
	| g( )a
	| fis( )g
	| es8 r r [c( d )es]
	| f4.( )a,
	| bes [d8( es )e]
	| f4.( )a,
	| bes d4( )es!8

% 180
	| f4.( )a
	| bes g-\p
	| f r4 r8
	| R2.
	| r4 r8 r [d-.-\p bes-.]
	| [f16( g f g )f8] r4 r8
	| R2.
	| \lowerDynamics f4.(-\f \restoreDynamics ges
	| f ges
	| )f ges'(

% 190
	| )f es(-\fp
	| )d8 r r es r r
	| g r r a r r
	| bes4.-\f [es,8-. f-. f-.]
	| bes,4 r8 r4 r8
	| a'4(-\fp )bes8 r4 r8
	| a4(-\fp )bes8 r4 r8
	| fis4(-\fp )g8 b4(-\fp )c8
	| e,4(-\fp )f!8 a4(-\fp )bes!8
	| es,!4-\p r8 f4 r8

% 200
	| bes,4 r8 r4 r8
	| R2.*3
	| fis'4(-\fp )g8 a4(-\fp )bes8
	| es,4-\p r8 f!4 r8
	| bes,4 r8 r4 r8
	| \clef tenor [es'16( f es f )g8] [c,16( d c d )es8]
	| \clef bass a,4( )bes8 [es,-. f-. f-.]
	| [bes16( c bes c )d8] [g,16( a g a )bes8]

% 210
	| [es,16( f es f )g8] [c,16( d c d )es8]
	| a,2.(-\fp
	| )b
	| cis(
	| d4. )e
	| f8 r r r4 r8
	| f,2.
	| bes-\f ~
	| bes ~
	| bes4. ~ bes4(-\p )d8

% 220
	| es4.( )f
	| bes2.-\f ~
	| bes ~
	| bes4( )as8 g4.
	| c4-\p r8 f,4 r8
	| bes4 r8 g4 r8
	| es r r f r r
	| g r r d r r es r r f r r
    }


    % Lilypond gets confused by the last bar in this alternative (it
    % lasts 5/8 instead of 6/8, so we turn off automatic bar breaking
    % and do it manually.

    \alternative {
        {
	    \cadenzaOn bes,8 r r bes' r r \bar "|" bes4 r8 r r \cadenzaOff
	}

	{
	    \cadenzaOn bes,8 r r bes' r r \bar "|" bes4 r8 r4 \cadenzaOff
	}
    }

    \cadenzaOn r8 \bar "|" \cadenzaOff
    | d,4-\f r8 d'4 r8
    | d4 r8 r4 r8
    | R2.*4
    | f,2.-\f ~
    | f ~
    | f ~

% 240
    | f ~
    | f ~
    | f ~
    | f ~
    | f4. ~ f4 f'8
    | [f( )d d-.] [d( )bes bes-.]
    | bes4( )es8 es4 es8
    | [es( )c c-.] [c( )a a-.]
    | a4( )d8 d4 d8
    | [d( )bes bes-.] [bes( )g g-.]

% 250
    | g4( )c8 c4 c8
    | [c( )a a-.] [a( )f f-.]
    | es'4 r8 e4 r8
    | R2.
    | f-\p
    | bes,4 r8 a4 r8
    | bes4 r8 a4 r8
    | bes4 r8 [a' a a]
    | bes4 r8 [a a a]
    | [bes16( c bes c )d8] [g,16( a g a )bes8]

% 260
    | es,-\p r r f r r
    | d4.( )es
    | d4.( )es
    | [d8 d d] [es es es]
    | [d d d] [es es es]
    | d8-\f r r es r r
    | f-\p r r f, r r
    | [d'8-\f d d] [es es es]
    | [f f f] [f, f f]
    | bes4 bes'8 [bes( )g g-.]

% 270
    | g4( )f8 es4 d8
    | c4 r8 r4 r8
    | [f f f] [f f f]
    | [bes, bes'-\p bes] bes r r
    | r [f f] f r r
    | r [bes, bes] bes r r
    | r [f f] f r r
    | r4 r8 bes'4-\f r8
    | bes,4 r8 r4 r8
}
