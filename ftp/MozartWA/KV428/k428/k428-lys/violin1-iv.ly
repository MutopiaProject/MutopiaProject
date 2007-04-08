violinIFourthMov = \notes \relative bes' {
    \key es \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	[bes8(-\p )g] r4
	| [es'8( )c] r4
	| [as8( )f f-. f-.]
	| f4( )bes8 r
	| [bes8( )g] r4
	| [es'8( )c] r4
	| [as8( )f f-. f-.]
	| f4( )es8 r
	| [g,16(-\f )bes es-. es-.] [d( )f as-. as-.]

% 10
        | [g( )bes es-. es-.] [es( )d c-. bes-.]
	| [a(-\p )bes c-. bes-.] [bes( )as g-. f-.]
	| [as( )g f-. es-.] [es( )d c-. bes-.]
	| [g16(-\f )bes es-. es-.] [d( )f as-. as-.]
        | [g( )bes es-. es-.] [d( )es f-. g-.]
	| [g( )f es-. d-.] [d( )c bes-. a-.]
	| a4( )bes8 r
    }

    \repeat volta 2 {
        | [des8(-\p )bes] r4
	| [g8( )as!] [c(-\fp )as]
	| [f( )g] [bes(-\fp )g]

% 20
        | e2-\f
	| \slurDown \stemUp [g16( f as g] [bes as c )bes] \stemBoth
          \slurBoth
	| \lowerText [des8(_\decresc c bes as] \restoreText
	| [g f g )es]
	| [d(-\p )f f-. f-.]
	| [f( )bes bes-. bes-.]
	| [bes16( a c a] [bes a c )a]
	| [bes8( )g] r4
	| [es'8( )c] r4
	| [as8( )f f-. f-.]

% 30
	| f4( )bes8 r
	| [g,16(-\f )bes es-. es-.] [d( )f as-. as-.]
        | [g( )bes es-. es-.] [es( )d c-. bes-.]
	| [b( )c es-. c-.] [bes( )as g-. f-.]
	| f4( )es8 r
    }

    | <g,4.-\f es'> g'8-\p
    | [f-. es-. f-. g-.]
    | [as-. g-. as-. g-.]
    | [f-. es-.] r4
    | <bes4. g'> bes'8-\p

% 40
    | [as-. g-. as-. bes-.]
    | [c-. bes-. c-. bes-.]
    | [as-. g-.] r4
    | <es4.-\f c' g'> [es'16( )c]
    | c4( )b
    | d'4. [b16( )g]
    | f4( )es ~
    | [es8 fis16( )g] [f( )es d c]
    | [bes a c bes] [d c es d]
    | [f es d c] [bes a g f]

% 50
    | [es d f es] [g f as! g]
    | [bes as g f] [es d c bes]
    | \lowerDynamics [as8(-\f \restoreDynamics )g] g''4 ~
    | [g16( a g a] [)bes8 bes,]
    | [a16( )c f g] [f( )es c a]
    | [bes( )d f g] [f( )d c bes]
    | [a16( )c f g] [f( )es c a]
    | [bes( )d f g] [f( )d c bes]
    | [a8 f' <a,, f'> <a f'>]
    | <a4 f'> r

% 60
    | d'2-\p
    | [c8( \times 2/3 { d16 c bes }] [)c8 d]
    | [es-.-\f es] es4-\p ~
    | es( )d
    | [d8( )c16] r [c8( )bes16] r
    | [bes8( )a16] r [c8( )bes16] r
    | [c8-.-\f c-.] c4-\p ~
    | c( [a8 )f]
    | d'2
    | [c8( \times 2/3 { d16 c bes }] [)c8 d]

% 70
    | [es-.-\f es] es4-\p ~
    | es( )d
    | [d8( )c16] r [c8( )bes16] r
    | [d8( )c16] r [c8( )a16] r
    | [bes8( )f' f-. f-.]
    | [bes,( )bes' bes-. bes-.]
    | d2
    | [c8( \times 2/3 { d16 c bes }] [)c8 d]
    | [es8-.-\f es-.] es4-\p ~
    | es( )d

% 80
    | [d8( )c16] r [c8( )bes16] r
    | [bes8( )a16] r [c8( )bes16] r
    | [c8-.-\f c-.] c4-\p ~
    | c( [a8 )f]
    | d'2
    | [c8( \times 2/3 { d16 c bes }] [)c8 d]
    | [es-.-\f es] es4-\p ~
    | es( )d
    | [d8( )c16] r [c8( )bes16] r
    | [d8( )c16] r [c8( )a16] r

% 90
    | [bes-\f c d c] [bes a g f]
    | [es d c bes] [a g f es]
    | d8 f'4 f8 ~
    | f f4 a8
    | [bes16 c d c] [bes a g f]
    | [es d c bes] [a g f es]
    | d8 f'4 f8 ~
    | f f4 a8
    | bes4 r
    | R2

% 100
    | [g16( f es )f] [g a bes a]
    | [bes a g f] [es d c bes]
    | [f8 f'] \grace { \cue es16 } [d8 c16 bes]
    | < { c2^\trill } \context Voice=x { s4 s8. \grace { [bes32( )c] } } >
    | bes4 bes'-\tenuto^#'(italic "ten.")
    | r as,!-\tenuto
    | r g-\tenuto
    | r g'-\tenuto
    | r f-\tenuto
    | r c-\tenuto

% 110
    | bes r
    | [bes8(-\p bes' a )as] ~
    | [as( g f )e]
    | \grace { \cue f16 } [es!8( d16 es] [f8 )es]
    | cis4( )d8 r
    | [bes8(-\p bes' a )as] ~
    | [as( g f )e]
    | [f( d es! )c]
    | bes4 r
    | [bes8(-\p bes' a )as] ~

% 120
    | [as( g f )e]
    | \grace { \cue f16 } [es!8( d16 es] [f8 )es]
    | cis4( )d8 r
    | [bes8(-\p bes' a )as] ~
    | [as( g f )e]
    | [f( d es! )c]
    | bes4 r
    | [f'8( d es )c]
    | d4 r
    | [f8( d es )c]
    | bes4 r

% 130
    | [bes8( d c es]
    | [cis )d] r4
    | [d8( f es g]
    | [e )f] r4
    | [f8( as! g )bes]
    | [g( )as] r4
    | [g8( )as] r4
    | [g8( )as] r4
    | < { R2 } \context Voice=x { s4 s4^\fermata } >
    | [bes,8(-\p )g] r4

% 140
    | [es'8( )c] r4
    | [as8( )f f-. f-.]
    | f4( )bes8 r
    | [bes8( )g] r4
    | [es'8( )c] r4
    | [as8( )f f-. f-.]
    | f4( )es8 r
    | [g,16(-\f )bes es-. es-.] [d( )f as-. as-.]
    | [g( )bes es-. es-.] [es( )d c-. bes-.]
    | [a(-\p )bes c-. bes-.] [bes( )as g-. f-.]

% 150
    | [as( )g f-. es-.] [es( )d c-. bes-.]
    | [g16(-\f )bes es-. es-.] [d( )f as-. as-.]
    | [g( )bes es-. es-.] [d( )es f-. g-.]
    | [g( )f es-. d-.] [d( )c bes-. a-.]
    | a4( )bes8 r
    | [des8(-\p )bes] r4
    | [g8( )as! c(-\fp )as]
    | [f( )g bes(-\fp )g]
    | e2-\f
    | \slurDown \stemUp [g16( f as g] [bes as c_\decresc )bes] \stemBoth
      \slurBoth

% 160
    | [des8( c bes as]
    | [g f g )es]
    | [d(-\p )f f-. f-.]
    | [f( )bes bes-. bes-.]
    | [bes16( a c a] [bes a c )a]
    | [bes8( )g] r4
    | [es'8( )c] r4
    | [as8( )f f-. f-.]
    | f4( )bes8 r
    | [g,16(-\f )bes es-. es-.] [d( )f as-. as-.]

% 170
    | [g( )bes es-. es-.] [es( )d c-. bes-.]
    | [b( )c es-. c-.] [bes( as g )f]
    | f4( )es8 r
    | <g,4.-\f es'> f'8-\p
    | [g-. as-. bes-. c-.]
    | [des-. bes-. des-. bes-.]
    | [des-. bes-.] r4
    | <g,4.-\f e'> f'8
    | [g-. as-. bes-. c-.]

% 180
    | [des-. bes-. des-. bes-.]
    | [des-. bes-.] r4
    | <a,4.-\f fis'> g'8-\p
    | [a-. bes-. c-. d!-.]
    | [es-. c-. es-. c-.]
    | [es-. c-.] r4
    | d'4.(-\f [bes16 )g]
    | g4( )fis
    | a4.( [fis16 )d]
    | c4( )bes

% 190
    | des'4.( [bes16 )g]
    | f!4( )e
    | g4.( [e16 )c]
    | bes!4( )as!
    | [as8 b'16( )c] [bes as g f]
    | [es!-\p d f es] [g f as g]
    | [bes as g f] [es d c bes]
    | [as g bes as] [c bes des c]
    | [es des c bes] [as g f es]
    | [des8(-\f )c] c'4 ~

% 200
    | [c16( d c d] [)es8 es,-.]
    | [d16( bes' )bes' bes-.] [bes-. as-. g-. f-.]
    | [es-. d-. c-. bes-.] [as-. g-. f-. es-.]
    | [d( bes' )bes' bes-.] [bes-. as-. g-. f-.]
    | [es-. d-. c-. bes-.] [as-. g-. f-. es-.]
    | [d8 bes'' bes,,-. bes-.]
    | bes4 r
    | g'2-\p
    | [f8( \times 2/3 { g16 f es }] [f8 )g]
    | [as-.-\f as-.] as4-\p ~

% 210
    | as( )g
    | [g8( )f16] r [f8( )es16] r
    | [es8( )d16] r [f8( )es16] r
    | [f8-.-\f f-.] f4-\p ~
    | f( [d8 )bes]
    | g''2-\p
    | [f8( \times 2/3 { g16 f es }] [f8 )g]
    | [as-.-\f as-.] as4-\p ~
    | as( )g
    | [g8( )f16] r [f8( )es16] r

% 220
    | [g8( )f16] r [f8( )d16] r
    | [es8( )bes' bes-. bes-.]
    | [es,( )es'-. es-. es-.]
    | \times 2/3 { r8 [g,,, bes] } \times 2/3 { [es g a] }

    | \noTupletNum \times 2/3 { [bes d, f] [bes c des] }
    | \times 2/3 { [c( )f f-.] [f( )as as-.] }
    | \times 2/3 { [as( )c c-.] [c c c] } \tupletNum
    | \times 2/3 { r8 [c( )as] } \times 2/3 { r [bes( )g] }
    | \times 2/3 { r [as( )f] } \times 2/3 { r [g( )es] }
    | \noTupletNum \times 2/3 { [f-. bes( a] [as g )ges] }

% 230
    | \times 2/3 { [f e es] [d c bes] } \tupletNum
    | g'2
    | [f8( \times 2/3 { g16 f es }] [f8 )g]
    | [as-.-\f as-.] as4-\p ~
    | as4( )g
    | [g8( )f16] r [f8( )es16] r
    | [g8( )f16] r [f8( )d16] r
    | [es16(-\f f g )f] [es d c bes]
    | [as g f es] [d( f as )f]
    | es8 bes'4 bes8 ~

% 240
    | bes bes4 [f'16( )d]
    | [es16( f g )f] [es d c bes]
    | [as g f es] [d( f as )f]
    | es8 bes'4 bes8 ~
    | bes bes4( )d8
    | es4 r
    | r2
    | [c16( bes as g] [as bes c )d!]
    | [es d c bes] [as g f es]
    | [bes8 bes'] \grace { \cue as16 } [g8( f16 )es]

% 250
    | < { f2^\trill } \context Voice=x { s4 \grace { [es32( )f] } } >
    | es4 es'-\tenuto-\p^#'(italic "ten.")
    | r des-\tenuto
    | r c-\tenuto
    | r c'-\tenuto
    | r bes-\tenuto
    | r d,-\tenuto
    | es4 r
    | [es,8-\p es'( d des] ~
    | [des c bes )a]

% 260
    | \grace { \cue bes16 } [as!8( g16 as] [bes8 )as]
    | fis4( )g8 r
    | [es8-\p es'( d des] ~
    | [des c bes )a]
    | [bes8( g as! )f]
    | es4 r
    | [es'8-\p es'( d des] ~
    | [des c bes )a]
    | \grace { \cue bes16 } [as!8( g16 as] [bes8 )as]
    | fis4( )g8 r

% 270
    | [es8-\p es'( d des] ~
    | [des c bes )a]
    | [bes8( g as! )f]
    | es4 r
    | [bes'8( g as! )f]
    | g4 r
    | [bes,8( g as! )f]
    | es4 r
    | [es8( g f as]
    | [fis )g] r4

% 280
    | [g8( bes as c]
    | [a )bes] r4
    | [bes8( des c es]
    | [c )des] r4
    | [b8( )c] r4
    | [bes8( )ces] r4
    | [a8( )bes] r4
    | [es8( )a,] r4
    | [c8( )bes] r4
    | [ges'8( )a,] r4

% 290
    | [c8( )bes] r4
    | [a'8(_#'(italic "ral") )bes] r4_#'(italic "-")
    | [a8(_#'(italic "len") )bes] r4_#'(italic "-")
    | < { R2 } \context Voice=x { s4 s4^\fermata } >
    | [g8(_#'(italic "tan") )as!] r4_#'(italic "-")
    | [g,8(_#'(italic "do") )as!] r4_#'(italic "-")
    | < { R2 } \context Voice=x { s4 s4^\fermata } >
    | [bes8(-\p )g] r4
    | [es'8( )c] r4
    | [as8( )f f-. f-.]

% 300
    | f4( )bes8 r
    | [bes8( )g] r4
    | [es'8( )c] r4
    | [as8( )f f-. f-.]
    | f4( )es8 r
    | bes''4( )b
    | \grace { \cue d8 } c4 [as8.( )g16]
    | [f8( )bes! bes bes]
    | [bes8.( c32 )bes] es8 r
    | es,4.( )e8

% 310
    | f4.^\trill [g16 as]
    | bes,4.^\trill [c16 d]
    | es4  r
    | [des8( )bes] r4
    | [es8( )c] r4
    | [as'8( )f f-. f-.]
    | f4( )bes8 r
    | [des,8( )bes] r4
    | [es8( )c] r4
    | [as'8( )f f-. f-.]

% 320
    | es2 ~
    | es ~
    | es ~
    | es
    | es'2 ~
    | es ~
    | es ~
    | es ~
    | [es8( )g, g-. g-.]
    | R2

% 330
    | [es8( )bes g-. g-.]
    | R2
    | [es8( )bes g-. g-.]
    | R2*2
    | bes''8-\pp r r4
    | g8 r r4
    | f8 r r4
    | es8 r r4
    | <d,8-\f bes' bes'> r r4
    | <es8 bes' g'> r r4
    | <d8 bes' f'> r r4
    | <g,8 es' es'> r r4
}
