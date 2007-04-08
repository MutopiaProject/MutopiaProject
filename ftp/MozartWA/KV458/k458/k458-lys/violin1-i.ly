violinIFirstMov = \notes \relative f'' {
    \key bes \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	\once \property Voice.TextScript \override #'extra-offset =
	  #'(-1.0 . 0.0) f8-.-\parentF
	| [f( )d d-.] [d( )bes bes-.]
	| bes4( )d8 c4 d8
	| \grace { \cue f16 } [es8. d16 c8] [g( bes )a]
	| bes4( )d8 c4 f8
	| [f16( g )f8 d-.] [d16( es )d8 bes-.]
	| bes4( )d8 c4 d8
	| \grace { \cue f16 } [es8. d16 c8] [g( bes )a]
	| bes4( )d8 bes4 r8
	| R2.

% 10
	| r4 r8 r r d-\f
	| [es16( f )g f es d] [c bes a g f es]
	| [d es f g a( )bes] f4 r8
	| R2.
	| r4 r8 r r d'-.
	| [es16(-\f )d c bes a bes] [c( d es f g a]
	| )bes8 r16 [bes,16(-\p a bes] [c d es f g a]
	| )bes8 r16 [bes,16(-\pp a bes] [c d es f g a]
	| )bes8-. r r g r r d r r e r r

% 20
	| f2. ~
	| f ~
	| [f8( g e] [f a )e]
	| [f( c' e,] [f f' )e,]
	| \raiseSlur [f8(-. f-. f-.] [f-. f-. )f-.] \restoreSlur
	| f4 r8 f4 r8
	| \grace { [e32 f g] }
	  <
            { f2.-\f | f | f | f | f4. }
	    \context Voice=x {
	      \setTrillWave \blankNotes f2. \spanrequest \start "text"
	      s | s | s | s4. \spanrequest \stop "text"
	    }
	  > \grace { [e32 f] } f,4 d'8 ~
	| [d e16 fis g a] [bes a g f e d]
	| [d( )c d e f g] [a g f e d c]
	| [c( )bes c d e f] [g f e d c bes]
	| [bes( )a b cis d e] [f e d c bes a]
	| [a8( )g d'] \grace { [g32( )a] } [bes8-. a-. g-.]
	| f4( )e8 ~ [e( d )c]
	| [c( f )c] [c( bes )a]
	| [a( )g] d'4-\fp [c8( )bes]
	| [bes8( )a] c4-\fp [bes8( )a]

% 40
	| [a( )g] d'4-\fp [c8( )bes]
	| [bes8( )a] c4-\fp [a8-. f-.]
	| [c'16( d c d )c8] r4 r8
	| R2.*3
	| r4 r8 [c'16(-\p d c d )c8]
	| [bes,16(-\f c bes c )bes8] r \raiseSlur [bes8(-. )bes-.]
          \restoreSlur
	| f'4( )e8 r4 r8
	| [bes16(-\f c bes c )bes8] r \raiseSlur [bes8(-. )bes-.]
          \restoreSlur

% 50
	| f'4( )e8 \grace { [e32 g] } bes4(-\fp [g16 )e]
	| [f(-\p g f g )a8] [d,16( e d e )f8]
	| [bes,16( c bes c )d8] [g,16( a g a )bes8]
	| [a8(-\f )d c-.] \grace { \cue c16 } [bes8-. a-. g-.]
	| f4 r8 r4 r8
	| R2.*5

% 60
	| r4 r8 [f'8-.-\p g-. a-.]
	| [c,16(-\fp d c d )c8] [f-. g-. a-.]
	| [c,16(-\fp d c d )c8] [f-. g-. a-.]
	| [a,16(-\fp bes a bes )a8] [d16(-\fp es! d es )d8]
	| [g16(-\fp a g a )g8] [c16(-\fp d c d )c8]
	| r [d-.-\p c-.] \grace { \cue c16 } [bes8-. a-. g-.]
	| f2.-\f
	| d'
	| [c16( d c d )c8] \grace { \cue c16 } [bes8-. a-. g-.]
	| f2.

% 70
	| d'
	| des(-\fp
	| )c
	| b(
	| c4. )d!
	| [c8( b bes] [a as )g]
	| f4.( \grace { \cue a!16 } )g4.
	| f2.-\f ~
	| f ~
	| f4. ~ f4(-\p )fis8

% 80
	| g4( )f!8 [e8.^\trill d16 e8]
	| [f( a )c] f,4. ~
	| f2.-\f ~
	| f4.( )fis
	| [g8(-\p bes )d] [d( c )e,]
	| [f!( a )c] [c( bes )a]
	| [g(_#'(italic "calando") bes )d] [d( c )e,]
	| [f( a )c] [c( bes )a]
	| [g( bes )d] [d( c )e,]
	| f4-\pp r8 f'4 r8

% 90
	| f4 r8 r r
    }

    \repeat volta 2 {
        c,8-\p \noBreak
	| c4.( ~ [c8 a )f']
	| c4.( ~ [c8 a )f]
	| [e( g )bes] [bes bes bes]
	| bes4.( )a4 c8
	| c4.( ~ [c8 a )f']
	| c4.( ~ [c8 a )f]
	| \grace { \cue c'8 } bes4. ~ [bes8 g( )e]
	| [f f( a] [c f )a]
	| c4.( ~ [c8 a )f']

% 100
	| c4.( ~ [c8 a )f]
	| [e( g )bes] [bes bes bes]
	| bes4.( )a4 c8
	| c4.( ~ [c8 a )f']
	| c4.( ~ [c8 a )f]
	| \grace { \cue c'8 } bes4. ~ [bes8 g( )e]
	| f4 r8 r [f,16( e g f]
	| )as8 r r r [as16( g bes as]
	| )c8 r r r [f16( e g )f]
	| as4.( )c,

% 110
	| b4 r8 r [b16( a c b]
	| )d8 r r r [d16( c es d]
	| )f8 r r r [b16( a c )b]
	| d4.( )f,
	| es4 r8 r [es,16( d f es]
	| )g8 r r r [c16( b d c]
	| )es8 r r r [es16( d f )es]
	| g4.( )bes,!
	| a8 r r r [a16( g bes a]
	| )c8 r r r [fis16( e g fis]

% 120
	| [)a8 c,16( bes d c] )es8 r r
	| r4 r8 r [g16( fis a g]
	| )bes8 r r r [g16( f! as g]
	| )bes8 r r r [f16( e g f]
	| )as8 r r r [f16( es! ges f]
	| )as8 r r r [f-. bes,-.]
	| [bes'16( c bes c )bes8] r [f-. bes,-.]
	| [bes'16( c bes c )bes8] r [f-. bes,-.]
	| \once \property Voice.TextScript \override #'extra-offset =
          #'(-1.0 . 0.0) [bes'16(-\parentF c bes c )bes8]
	  [g16( as g as )g8]
	| [es16( f es f )es8] [c16( d c d )c8]

% 130
	| a4. es'
	| d bes'
	| a c
	| des e,
	| f8 r r [a,(-\p f )a]
	| c r r [a'( f )a]
	| c r r [c( a c]
	| )es! r r r r \once \property Voice.TextScript \override
          #'extra-offset = #'(-1.0 . 0.0) f,-\parentF
	| [f( )d d-.] [d( )bes bes-.]
	| bes4( )d8 c4 d8

% 140
	| \grace { \cue f16 } [es8. d16 c8] [g( bes )a]
	| bes4( )d8 c4 f8
	| [f16( g )f8 d-.] [d16( es )d8 bes-.]
	| bes4( )d8 c4 d8
	| \grace { \cue f16 } [es8. d16 c8] [g( bes )a]
	| bes4( )d8 bes4 r8
	| R2.
	| r4 r8 r r d-\f
	| [es16( f )g f es d] [c bes a g f es]
	| [d es f g a( )bes] f4 r8

% 150
	| R2.
	| r4 r8 r r d'-.
	| [es16(-\f )d c bes a bes] [c( d es f g a]
	| )bes8 r16 [bes,16(-\p a bes] [c d es f g a]
	| )bes8 r16 [bes,16(-\pp a bes] [c d es f g a]

	% This bar is not present in the Breitkopf & Haertel score,
	% but it is likely to be a mistake (see the Philips recording
	% of this movement with Quartetto Italiano).
	| )bes8-. r r g r r d r r e r r

	| f2. ~
	| f ~
	| [f8( g e] [f a )e]
	| [f( c' e,] [f f' )e,]

% 160
	| \raiseSlur [f8(-. f-. f-.] [f-. f-. )f-.] \restoreSlur
	| f4 r8 f4 r8
	| \grace { [e32 f g] }
	  <
            { f2.-\f | f | f | f | f4. }
	    \context Voice=x {
	      \setTrillWave \blankNotes f2. \spanrequest \start "text"
	      s | s | s | s4. \spanrequest \stop "text"
	    }
	  > \grace { [e32 f] } f,4 bes'8-.
	| [bes( )g g-.] [g( )es! es-.]
	| es4( )g8 f4 g8
	| [as16( bes )as8 f-.] [f16( g )f8 d-.]

% 170
        | d4( )as'8 g4 g8 ~
	| [g a16 b c d] [es d c bes a g]
	| [g( )f g a bes c] [d( )c bes a g f]
	| [f( )es f g a bes] [c( )bes a g f es]
	| [es( )d e fis g a] [bes a g f es d]
	| [c8-. g'( f] [es d )c]
	| bes4( )a8 ~ [a( g )f]
	| [f( bes )f] [f( es )d]
	| [d( )c] g'4-\fp [f8( )es]
	| [es( )d] f4-\fp [es8( )d]

% 180
	| [d( )c] g''4-\fp [f8( )es]
	| [es( )d] f4-\fp [d8-. bes-.]
	| [f'16( g f g )f8] r4 r8
	| R2.*3
	| r4 r8 [f16(-\p g f g )f8]
	| [es,16(-\f f es f )es8] r [es-. es-.]
	| bes'4( )a8 r4 r8
	| [es'16( f es f )es8] r [es-. es-.]

% 190
	| bes'4( )a8 \grace { [a32 c] } es4(-\fp [c16 )a]
	| [bes16( c bes c )d8] [g,16( a g a )bes8]
	| [es,16( f es f )g8] [c,16( d c d )es8]
	| [d(-\f )g f-.] \grace { \cue f16 } [es8-. d-. c-.]
	| bes4 r8 r4 r8
	| R2.*5

% 200
        | r4 r8 [bes'-.-\p c-. d-.]
	| [f,16( g f g )f8] [bes8-. c-. d-.]
	| [f,16( g f g )f8] [bes8-. c-. d-.]
	| [bes,16(-\fp c bes c )bes8] [c16(-\fp d c d )c8]
	| [d16(-\fp es d es )d8] [f16(-\fp g f g )f8]
	| r8 [g-.-\p f-.] \grace { \cue f16 } [es8-. d-. c-.]
	| bes2.-\f
	| g'
	| [f16( g f g )f8] \grace { \cue f16 } [es8-. d-. c-.]
	| bes2.
	| g'
	| ges(-\fp
	| )f
	| e(
	| f4. )g
	| [f8( e es] [d des )c]
	| bes4.( \grace { \cue d!16 } )c4.
	| bes2.-\f ~
	| bes ~
	| bes4. ~ bes4(-\p )b8

% 220
	| c4( )bes!8 [a8.^\trill g16 a8]
	| [bes8( d )f] bes4. ~
	| bes2.-\f ~
	| bes4.( )b
	| [c8(-\p es )g] [g( f )a,]
	| [bes!( d )f] [f( es )d]
	| r [b( )c] r [es( )a,]
	| r [c( )bes!] r [f( )d]
	| r [b( )c] r [es( )c]
    }

    % Lilypond gets confused by the last bar in this alternative (it
    % lasts 5/8 instead of 6/8, so we turn off automatic bar breaking
    % and do it manually.

    \alternative {
        {
	    \cadenzaOn bes!8 r r bes' r r \bar "|" bes4 r8 r r \cadenzaOff
	}

	{
	    \cadenzaOn bes!8 r r bes' r r \bar "|" bes4 r8 r4 \cadenzaOff
	}
    }

    \cadenzaOn r8 \bar "|" \cadenzaOff
    | b4-\f r8 as'4 r8
    | as4 r8 r4 r8
    | fis2.(-\p
    | )g
    | c,( ~
    | c4. des4 )c8
    | c4 r8 r r f-\f
    | [f( )d! d-.] [d( )bes bes-.]
    | bes4( )g'8 g4( )es8

% 240
    | [es( )c c-.] [c( )a a-.]
    | a4( )f'8 f4( )d8
    | [d( )bes bes-.] [bes( )g g-.]
    | [g es' c] [a f' d]
    | [bes g' es] [c f es]
    | d4 r8 r4 r8
    | r r bes' [bes( )g g-.]
    | [g( )es es-.] es4( )c'8
    | c4 a8 [a( )f f-.]
    | [f( )d d-.] d4( )bes'8

% 250
    | bes4 g8 [g( )es es-.]
    | [es( )c c-.] [c( )a a-.]
    | a'4 r8 bes4 r8
    | d,4.(-\p ~ [d8 es )e]
    | f4.( ~ [f8 es! )c]
    | [bes-. d-. bes-.] [f'16( g f g )f8]
    | r [bes-. d-.] [f,16( g f g )f8]
    | r [d-. bes-.] [f'16( g f g )f8]
    | r [bes-. d-.] [f,16( g f g )f8]
    | <bes,8-\f f'> r r <d bes'> r r

% 260
    | r [g(-\p )es] r [c( )a]
    | [bes-. d-. bes-.] [f'16( g f g )f8]
    | r [bes-. d-.] [f,16( g f g )f8]
    | r [d-. bes-.] [f'16( g f g )f8]
    | r [bes-. d-.] [f,16( g f g )f8]
    | [bes16( c bes c )d8] [g,16( a g a )bes8]
    | [f8(-\p )d] r [es( )c] r
    | R2.
    | r4 r8 r r f-\f
    | [f( )d d-.] [d( )bes bes-.]

% 270
    | bes4( )d8 c4 d8
    | \grace { \cue f16 } [es8. d16 c8] [fis8( g es16 )c]
    | bes4. ~ bes4( \grace { \cue d16 } )c8
    | bes4 r8 r [d16(-\p c es )d]
    | f8 r r r [a16( bes c )a]
    | bes8 r r r [d,16( c es )d]
    | f8 r r r [a16( bes c )a]
    | bes4 r8 <d,,4-\f bes' bes'> r8
    | bes4 r8 r4 r8
}
