violaFourthMov = \notes \relative as {
    \key bes \major
    \clef alto

    \noTupletBracket

    \repeat volta 2 {
	R2*2
	| [a8-\p a bes bes]
	| [d( )c] a r
	| R2*2
	| [es8 es f f]
	| bes4 r
	| R2*2

% 11
	| [f'8-\f f f f]
	| f4 r
	| R2*2
	| [g8 g a, a]
	| bes4 r8 bes'(-\p
	| [)c c-. f,-. f-.]
	| d4 r8 bes'(
	| [)c c-. f,-. f-.]

% 20
	| d4 r8 bes'(
	| [)c c-. f,-. f-.]
	| d4. f8-.
	| [es-. d-. c-. bes-.]
	| [d( )bes] a8 r
	| R2
	| [f'8( d )bes] r
	| R2
	| [f'8( d )bes'] r
	| R2

% 30
	| c,2 ~
	| c
	| bes4 r8 as(
	| [g as g )bes]
	| as4 r
	| R2
	| [des8 des des des]
	| [des des des des]
	| [c c c c]
	| [c c c c]

% 40
	| [b b b b]
	| [b b b b]
	| c4 r8 des8(
	| )c4 r8 des8(
	| )c4 r8 g'8-.-\f
	| [g-. g-. g-. g-.]
	| g4 r
	| R2
	| c,2-\p ~
	| c

% 50
	| c4 r
	| R2
	| c2 ~
	| c
	| [e8( )f] f-. r
	| R2
	| fis4.( )c'8
	| [bes bes a a]
	| [fis( )g g bes]
	| [a a g g]

% 60
	| [e( )f!] r f
	| r g r a
	| bes2(
	| a4 )g
	| [e8( )f] \slurDown a,4(-\f
	| bes )c \slurBoth
	| d( bes
	| c )d
	| es( c
	| d )es

% 70
	| f8 g4 as8 ~
	| as g4 f8
	| g4 r
	| c4.( )cis8
	| [d d, d d]
	| [c c bes bes]
	| a4 r
	| r8 [d d d]
	| c4 r8 e
	| f4 r8 c
	| [d g,-. a-. bes-.]
	| a4 r
	| c2-\p ~
	| c
	| [c8(_\cresc a d )bes]
	| c4.( )e8
	| f2(-\p )g
	| f4 ~ [f8.( )d16]
	| c4 r

% 90
	| c2 ~
	| c
	| [c8(_\cresc a d )bes]
	| c4.( )e8
	| f2-\p ~
	| f
	| c4.( )bes8
	| [a c,-. f-. a-.]
	| bes4 r8 e,(
	| [)f c-. f-. a-.]

% 100
	| bes4 r8 e,(
	| [)f c-. f-.-\parentCresc a-.]
	| bes4 r8 e,
	| \once \property Voice.TextScript \override #'extra-offset =
          #'(-1.0 . 0.0) \slurStemToHead f4(-\parentF d'
	| c )bes \slurDefToDef
	| e( [)f8 \lowerDynamics f,(-\p] \restoreDynamics
	| [e g bes )g]
	| [a( )c] r f,(
	| [e g bes )g]
	| [a(-\parentCresc )c] r f,(

% 110
	| [e g bes )g]
	| [f-\f f' f, f']
	| f4( )c
	| [c16 c c c] [c c c c]
	| [d d d d] [f f f f]
	| [f f f f] [f f f f]
	| [e e e e] [e e e e]
	| f4 r
	| [f16( e f e] )f8 r
	| [f16( e f e] [)f8 f-.]

% 120
	| [g16( fis g fis] [)g8 g-.]
	| f!4 r
	| a,(-\p )bes
	| g( )f
	| [d'8 d es! es]
	| d4 r
	| r e(
	| )f r8 a,
	| [d d bes bes]
	| a4 r

% 130
	| R2
	| r4 r8 bes-.-\f
	| [a-. bes-. a-. bes-.]
	| a4 r
    }

    \repeat volta 2 {
        | f'4(-\f )g
	| \grace { \cue f16 } [e8 d16 c] f8 r
	| R2
	| r4 r8 c-\p
	| [d-. c-. d-. c-.]
	| d4 r

% 140
	| r f,(
	| )g \grace { \cue f16 } [es!8 d16 c]
	| f4 g
	| c, r
	| [g'8(-\f b] )c r
	| R2
	| bes!8( d] )es r
	| R2
	| [d8( fis] )g r
	| R2*2

% 151
	| g4( )a
	| \grace { \cue g16 } [fis8 e16 d] [g8 g]
	| bes,4( )c
	| \grace { \cue bes16 } [a8 g16 fis] [bes8 bes]
	| g4( )as
	| \grace { \cue g16 } [f!8 es16 d] [g8 g]
	| es'4( )f
	| \grace { \cue es16 } [d8 c16 b] [es8 es]
	| \grace { \cue d16 } [c8 bes!16 a] [d8 d]
	| \grace { \cue c16 } [bes8 a16 g] [c8 c]
	| a r d r
	| d r g, r
	| [a-. fis-. d'-. fis-.]
	| [g-. bes,-. g-. bes-.]
	| a4 r
	| R2
	| r8 [es'-\p es es]
	| [es es es es]
	| es2 ~

% 170
	| es
	| [d8 d d d]
	| [c c c c]
	| [bes bes bes bes]
	| [as as as as]
	| [g g g] r
	| R2
	| [f8 f] f r
	| r [d'( f )d]
	| \grace { \cue d16 } [c8 bes16 a] d8 r

% 180
	| \grace { \cue d16 } [c8 bes16 a] d8 r
	| \grace { \cue d16 } [c8 bes16 a] [d8 d]
	| [c d c bes]
	| a4 r
	| R2
	| es'4( )f
	| \grace { \cue es16 } [d8 c16 bes] [bes'8-. bes-.]
	| a4 r
	| bes,2(
	| )c4 \grace { \cue bes16 } [a8 g16 f]

% 190
	| [f'8( )des] [g,-. g-.]
	| [f e'(] )f4
	| R2
	| r8 ges( )f4
	| R2
	| r8 [ges(-\f f ges]
	| [)f bes( a bes]
	| )a4 r
	| R2*3

% 201
	| [a,8-\p a bes bes]
	| [d( )c] a r
	| R2*2
	| [es8 es f f]
	| bes4 r
	| R2*2
	| [f'8-\f f f f]

% 210
	| f4 r
	| R2*2
	| [g8 g a, a]
	| bes4 r8 bes'(-\p
	| [)c c-. f,-. f-.]
	| d4 r8 bes'(
	| [)c c-. f,-. f-.]
	| d4 r8 bes'(
	| [)c c-. f,-. f-.]

% 220
	| d4. f8-.
	| [es-. d-. c-. bes-.]
	| [d( )bes] a8 r
	| R2
	| [f'8( d )bes] r
	| R2
	| [f'8( d )bes'] r
	| R2
	| f2 ~
	| f(
	| )e4 es ~
	| es2
	| d
	| bes ~
	| bes ~
	| [bes8( )c c( )des]
	| c4 r8 ges'(
	| )f4 r8 ges(
	| )f4 r8 g!-.-\f
	| [f-. g-. f-. g-.]
	| f4 r
	| R2
	| f2-\p ~
	| f ~
	| f4 r
	| R2
	| f2 ~
	| [f8 f-. f-. f-.]
	| [a( )bes bes-.] r
	| R2

% 250
	| b,4.( )f'8
	| [es es d d]
	| [b( )c c es]
	| [d d c c]
	| [a( )bes!] r bes
	| r c r d
	| es2(
	| d4 )c
	| [a8( )bes] d,4(-\f
	| es )f

% 260
	| g( es
	| f )g
	| as( f
	| g )as
	| bes8 c4 des8 ~
	| des c4 bes8
	| c4 r
	| f4.( )fis8
	| [g g g g]
	| [f! f es es]

% 270
	| d4 r
	| r8 [g g g]
	| f4 r8 a
	| bes4 r8 f
	| [g c,-. d-. es-.]
	| d4 r
	| f2-\p ~
	| f ~
	| [f8(_\cresc d g )es]
	| f4.( )a8

% 280
	| bes2(-\p
	| )c
	| bes4 ~ [bes8.( )g16]
	| f4 r8 f,(
	| )d'8 d4( bes8
	| )es8 es4( c8
	| [f_\cresc bes g )c]
	| bes4( )a
	| bes2-\p ~
	| bes4 bes,

% 290
	| f'4.( es8
	| )d4 r
	| r r8 f,
	| [bes( a g )f]
	| f4. f8
	| [bes( a g )f-\parentCresc] \noBreak
	| f4. f8
	| \once \property Voice.TextScript \override #'extra-offset =
          #'(-1.0 . 0.0) [f'(-\parentF )bes es,( )g]
	| f4( )es
	| c( [)bes8 bes(-\p]
	| [a c es )c]
	| [d( )f] r bes,(
	| [a c es )c]
	| [d( )f] r bes,(
	| [a )c] es4
	| d4._\cresc f8(
	| )es4. es8(
	| [)f16-\f f f f] [f f f f]
	| [f, f f f] [f f f f]
	| [g g g g] [g g g g]

% 310
	| bes'2:16
	| bes2:16
	| a2:16
	| bes4 r
	| [bes16(-\p a bes a] )bes8 r
	| [bes bes] bes r
	| [g g] g r
	| [f16( a bes a] )bes8 r
	| [c,16( d c d] [)c8 es-.]
	| d4 r

% 320
	| d( )es
	| c( )bes
	| [g'8-. g-. as-. as-.]
	| g4 r
	| r a(
	| )bes r8 d,
	| [g-. g-. f-. es-.]
	| d4 r
	| R2
	| r8 cis(-\p )d4 ~
	| d2 ~
	| [d8 cis,(] )d4 ~
	| d2 ~
	| d4 r8 c''8-.-\f
	| [bes-. c-. bes-. c-.]
	| bes4 r
    }
}
