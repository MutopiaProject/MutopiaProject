violaFourthMov = \notes \relative g {
    \key es \major
    \clef alto

    \noTupletBracket

    \repeat volta 2 {
	\lowerDynamics [g8(-\p \restoreDynamics )bes] r4
	| [c,8( )es] r4
	| [d8( )bes' bes-. bes-.]
	| bes4 ~ bes8 r
	| [g8( )bes] r4
	| [c,8( )es] r4
	| [d8( )f as-. as-.]
	| as4( )g8 r
	| bes4-\f bes

% 10
        | bes4 r
	| R2*2
	| bes4-\f bes
	| bes r8 c
	| d4 [es8( d16 )c]
	| c4( )bes8 r
    }

    \repeat volta 2 {
        | r4 \lowerDynamics [g8(-\p \restoreDynamics )bes]
	| [des( )c] [f,(-\fp )as]
	| [ces( )bes] r4

% 20
	| des2-\f
	| c ~
	| c_\decresc ~
	| c4 f, ~
	| f-\p r
	| bes r
	| R2
	| \lowerDynamics [g8(-\p \restoreDynamics )bes] r4
	| [c,8( )es] r4
	| [d8( )bes' bes-. bes-.]

% 30
	| bes4 ~ bes8 r
	| bes4-\f bes
	| bes r8 es8 ~
	| es es4 [bes16( )as]
	| as4( )g8 r
    }

    | bes4.-\f bes8-\p
    | [as-. g-. as-. bes-.]
    | [as-. bes-. as-. bes-.]
    | [bes-. bes-.] r4
    | [es,8-\f es'-\p es es]

% 40
    | [es es es es]
    | [d-. es-. d-. es-.]
    | [bes-. bes-.] r4
    | r8 [g(-\f )g' g-.]
    | [f f f f]
    | [f f f( )d']
    | d4( )c
    | r8 [es,( g )es]
    | c4-\p r
    | f, r

% 50
    | f r
    | bes r
    | r8 [bes-\f bes bes]
    | bes2
    | c4 r8 [a16( )c]
    | d4 r8 f
    | f4 r8 [a,16( )c]
    | d4 r8 f
    | f4 [c8 c]
    | c4 r

% 60
    | f2-\p ~
    | f
    | [bes,8-.-\f bes-.] bes4-\p ~
    | bes( )d
    | g,8 r bes r
    | f' r f r
    | [f-.-\f f-.] f4-\p ~
    | f2
    | bes,2( )a

% 70
    | [bes8-.-\f bes-.] bes4-\p ~
    | bes( )a
    | g8 r bes r
    | es r c r
    | bes4 r
    | R2
    | \times 2/3 { [bes8-. d-. f-.] } \times 2/3 { [bes-. d-. bes-.] }
    | \noTupletNum \times 2/3 { [a-. g-. f-.] [es-. d-. c-.] }
    | \times 2/3 { [bes-. a-. g-.] [f-. es-. d-.] }
    | \times 2/3 { [c-. c'( )a] [f-. bes( )a] }

% 80
    | \times 2/3 { [g-. g'-. es-.] [f( )d bes-.] }
    | \times 2/3 { [f'( )es c-.] [f( )d bes-.] }
    | \times 2/3 { [a-. c-. f-.] [a-. c-. bes-.] }
    | \times 2/3 { [a-. g-. f-.] [es-. d-. c-.] } \tupletNum
    | bes4 f' ~
    | f f
    | bes,4 ~ \times 2/3 { [bes8( a )bes] }
    | c4( )bes
    | g'8 r f r
    | es r <c es> r

% 90
    | <bes4 d> r
    | R2
    | [bes'16-\f c d c] [bes a g f]
    | [es d c bes] [a g f es]
    | d8 f'4 f8 ~
    | f f4 a8
    | [bes16 c d c] [bes a g f]
    | [es d c bes] [a g f es]
    | d4 [d'16( es f )es]
    | [f8( )d] [bes bes]

% 100
    | bes bes4 bes8 ~
    | bes es4 es8
    | [d d d d]
    | [es es es es]
    | d4 f-\p--^#'(italic "ten.")
    | r bes,--
    | r bes--
    | r bes'--
    | r bes--
    | r es,--

% 110
    | d r
    | bes4(-\p [c8 d]
    | es4 [f8 )g]
    | a2 ~
    | a4( )bes8 r
    | bes,4( [c8 )d]
    | es4( [d8 )cis]
    | [d( bes c! )a]
    | bes4 r
    | bes( [c8 d]

% 120
    | es4 [f8 )g]
    | a2 ~
    | a4( )bes8 r
    | bes,4( [c8 )d]
    | es4( [d8 )cis]
    | [d( bes c! )a]
    | [bes8 f' f f]
    | [f f f f]
    | [f f f f]
    | [f f f( )es]

% 130
    | d4 r
    | R2
    | r4 f
    | R2
    | r4 f
    | R2
    | r4 [cis8( )d]
    | r4 [cis8( )d]
    | r4 [es8( )d]
    | < { R2 } \context Voice=x { s4 s4^\fermata } >

% 140
    | [g,8(-\p )bes] r4
    | [c,8( )es] r4
    | [d8( )bes' bes-. bes-.]
    | bes4 ~ bes8 r
    | [g8( )bes] r4
    | [c,8( )es] r4
    | [d8( )f as-. as-.]
    | as4( )g8 r
    | bes4-\f bes
    | bes4 r

% 150
    | R2*2
    | bes4-\f bes
    | bes r8 c
    | d4 [es8( d16 )c]
    | c4( )bes8 r
    | r4 \lowerDynamics [g8(-\p \restoreDynamics )bes]
    | [des( )c] [f,(-\fp )as]
    | [ces( )bes] r4
    | des2-\f

% 160
    | < { c ~ } \context Voice=x { s4 s8 s8-\decresc } > \noBreak
    | c2 ~
    | c4 f, ~
    | f-\p r
    | bes r
    | R2
    | \lowerDynamics [g8(-\p \restoreDynamics )bes] r4
    | [c,8( )es] r4
    | [d8( )bes' bes-. bes-.]
    | bes4 ~ bes8 r

% 170
    | bes4-\f bes
    | bes r8 es8 ~
    | es es4 [bes16( )as]
    | as4( )g8 r
    | es'4.-\f d8-\p
    | [des-. c-. bes-. as-.]
    | [g-. bes-. g-. bes-.]
    | [g-. bes-.] r4
    | bes4.-\f as8-\p
    | [bes-. as-. g-. f-.]

% 180
    | [e-. g-. e-. g-.]
    | [e-. g-.] r4
    | es'!4.-\f d8-\p
    | [c-. bes-. a-. g-.]
    | [fis-. a-. fis-. a-.]
    | [fis-. a-.] r4
    | [bes8-\f g'( bes )d]
    | [c c c c]
    | [c c c d,]
    | d'4.( [bes16 )g]
    | f4( )e
    | [bes'8 bes bes bes]
    | [bes bes bes c,]
    | c'4.( [as!16 )f]
    | e4( [)f8 c-.]
    | as4-\p r
    | bes r
    | bes r
    | bes r
    | r8 [as-\f as as]

% 200
    | [as( f' )es es-.]
    | f4 r8 d8(
    | )es es4( )c8
    | bes4 r8 d(
    | )es es4( )c8
    | bes4 [bes8-. bes-.]
    | bes4 r
    | bes2-\p ~
    | bes
    | [as8-.-\f as-.] \lowerDynamics as4-\p \restoreDynamics ~

% 210
    | as( )bes
    | f8 r g r
    | as r g r
    | [d-.-\f d-.] \lowerDynamics d4-\p \restoreDynamics ~
    | d [f8( )d]
    | es'2(
    | )d
    | [es8-.-\f es-.] es4-\p ~
    | es( )d
    | c8 r g' r

% 220
    | f r f r
    | es4 r
    | R2
    | es2
    | [d8( \times 2/3 { es16 d c }] [d8 )e]
    | [f8-.-\f f-.] f4-\p ~
    | f( )es!
    | c8 r bes r
    | as r g r
    | [d'8-.-\f d-.] d4-\p ~
    | d [f,8( )d]
    | \times 2/3 { r8 [es'' bes] } \times 2/3 { [g es bes] }
    | \noTupletNum \times 2/3 { [des bes as] [g es des] }
    | \times 2/3 { [c es as] [c f as] }
    | \times 2/3 { [a( )bes bes-.] [bes( )b b-.] } \tupletNum
    | \times 2/3 { r [c( )as!] } \times 2/3 { r [bes!( )g] }
    | \times 2/3 { r [c,( )as'] } \times 2/3 { r [bes,( )f'] }
    | es4 r
    | R2
    | [es16(-\f f g )f] [es d c bes]

% 240
    | [as g f es] [d( f as )f]
    | es8 bes'4 bes8 ~
    | bes bes4 [f'16( )d]
    | [es( f g )f] [es d c bes]
    | [as g f es] [d( f as )f]
    | es4 [es'16( f g as]
    | )bes8 es,4 bes8
    | as c4 c8 ~
    | c as4 as8
    | [g g g g]

% 250
    | [as as as as]
    | g4 g'-\p--^#'(italic "ten.")
    | r e--
    | r f--
    | r es'!--
    | r es--
    | r f,--
    | es r
    | es,4(-\p [f8 g]
    | as4 [bes8 )c]

% 260
    | d2 ~
    | d4( )es8 r
    | es,4( [f8 )g]
    | as4( [g8 )fis]
    | [g( es f! )d]
    | es4 r
    | es'4( [f8 g]
    | as4 [bes8 )c]
    | d2 ~
    | d4( )es8 r

% 270
    | es,4( [f8 )g]
    | as4( [g8 )fis]
    | [g( es f! )d]
    | [es bes' bes bes]
    | [bes bes bes bes]
    | [bes bes, bes bes]
    | [bes bes bes( )as]
    | g4 r
    | R2
    | r4 bes

% 280
    | R2
    | r4 bes
    | R2
    | r4 [fis'8( )g]
    | r4 [g8( )as!]
    | r4 [e8( )f!]
    | r4 [fis8( )g]
    | r4 a,
    | r bes
    | r es,

% 290
    | r d
    | r4_#'(italic "ral") [ges'8( )f_#'(italic "-")]
    | r4_#'(italic "len") [ges8( )f_#'(italic "-")]
    | < { R2 } \context Voice=x { s4 s4^\fermata } >
    | r4_#'(italic "tan") [es8( )d_#'(italic "-")]
    | r4_#'(italic "do") [es,8( )d]
    | < { R2 } \context Voice=x { s4 s4^\fermata } >
    | \lowerDynamics [g8(-\p \restoreDynamics )bes] r4
    | [c,8( )es] r4
    | [d8( )bes' bes-. bes-.]

% 300
    | bes4 ~ bes8 r
    | [g8( )bes] r4
    | [c,8( )es] r4
    | [d8( )f as-. as-.]
    | as4( )g8 r
    | [g'8( )es] r4
    | [c'8( )as] r4
    | [f8( )d d-. d-.]
    | d4( )g8 r
    | [g8( )es] r4
    | [c'8( )as] r4
    | [f8( )as, as-. as-.]
    | g4 r
    | [bes8( )des] r4
    | [c8( )es] r4
    | [d!8( )f as-. as-.]
    | as4( )g8 r
    | [bes,8( )des] r4
    | [c8( )es] r4
    | [d!8( )f as-. as-.]

% 320
    | g4 r
    | [bes,8( )g] r4
    | [c8( )as] r4
    | [f'8( )d! d-. d-.]
    | [g8.( as32 f] )es8 r
    | [bes( )g] r4
    | [c8( )as] r4
    | [d,8( )f as-. as-.]
    | g4 r
    | [d'8( )f as-. as-.]

% 330
    | g r r4
    | [d,8( )f as-. as-.]
    | g r r4
    | [as8( )f d-. d-.]
    | es r r4
    | R2*4
    | bes'8-\f r r4

% 340
    | es8 r r4
    | bes8 r r4
    | es,8 r r4
}
