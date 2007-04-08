celloFourthMov = \notes \relative es {
    \key es \major
    \clef bass

    \noTupletBracket

    \repeat volta 2 {
	[es8(-\p )g] r4
	| [as,8( )c] r4
	| [bes8( )as' as-. as-.]
	| as4( )g8 r
	| [es8( )g] r4
	| [as,8( )c] r4
	| [bes8-. bes-. bes-. bes-.]
	| bes4( )es,8 r
	| es'4-\f bes

% 10
	| es, r
	| R2*2
	| es4-\f bes'
	| es r8 es
	| [d g es f]
	| [bes f] bes, r
    }

    \repeat volta 2 {
        | r4 [e8(-\p )g]
	| [bes( )as!] [d,(-\fp )f]
	| [as( )g] r4

% 20
	| [g,8-\f g g g]
	| as2 ~
	| \lowerText as_\decresc \restoreText ~
	| as4( a
	| )bes-\p r
	| bes r
	| R2
	| [es8( )g] r4
	| [as,8( )c] r4
	| [bes8( )as' as-. as-.]

% 30
	| as4( )g8 r
	| es4-\f bes
	| es, r8 g'
	| [as as bes bes,]
	| [es bes es,] r
    }

    | [es-\f es'-\p es es]
    | [es es es es]
    | [c-. bes-. c-. bes-.]
    | [as-. g-.] r4
    | [es8-\f es'-\p es es]

% 40
    | [es es es es]
    | [as-. g-. as-. g-.]
    | [d-. es-.] r4
    | r8 [es(-\f )es' es-.]
    | [d d d d]
    | [g, g g g]
    | [c, c c c]
    | [es es es es]
    | f4-\p r
    | a, r

% 50
    | bes r
    | d r
    | r8 [es-\f es es]
    | [es( )f] g4
    | f r8 es(
    | [)d d bes d]
    | f4 r8 es(
    | [)d d bes d]
    | f4 [f,8 f]
    | f4 r

% 60
    | bes'2(-\p
    | )f
    | [g8-.\f g-.] g4-\p ~
    | g( )f
    | es8 r d r
    | c r bes r
    | [f'8-.-\f f-.] f4-\p ~
    | f2
    | bes,(
    | )f

% 70
    | [g8-.-\f g-.] g4-\p ~
    | g( )f
    | es8 r d r
    | es r f r
    | bes4 r
    | R2
    | bes'4 r
    | f r
    | g g,(
    | a )bes

% 80
    | es8 r d r
    | c r bes r
    | f'4 f,
    | R2
    | \times 2/3 { [bes8-. d-. f-.] } \times 2/3 { [bes-. d-. bes-.] }
    | \noTupletNum \times 2/3 { [a-. f-. g-.] [as-. bes-. as-.] }
    | \times 2/3 { [g-. f-. es-.] [d-. c-. bes-.] }
    | \times 2/3 { [a-. g-. f-.] [bes-. c-. d-.] }
    | \times 2/3 { [es( f )es] [d( es )d] }
    | \times 2/3 { [es( f es] [f g )f] } \tupletNum

% 90
    | bes4-\f r
    | f r
    | bes, r
    | f r
    | bes' r
    | f r
    | bes, r
    | f r
    | [bes8 bes bes bes]
    | [d d d d]

% 100
    | [es es es es]
    | [g g g g]
    | [f f f f]
    | [f f f f]
    | bes,4 r
    | d-\p--^#'(italic "ten.") r
    | es-- r
    | e-- r
    | f-- r
    | f,-- r

% 110
    | [bes8(-.-\p bes-. bes-. bes-.]
    | [bes-. bes-. bes-. )bes-.]
    | [bes8(-. bes-. bes-. bes-.]
    | [bes-. bes-. bes-. )bes-.]
    | [bes8(-. bes-. bes-. bes-.]
    | [bes-. bes-. bes-. )bes-.]
    | [es,-. es( f )g]
    | [f(-. f-. f-. )f-.]
    | [bes(-\sf d f )d]
    | [bes8(-.-\p bes-. bes-. bes-.]

% 120
    | [bes-. bes-. bes-. )bes-.]
    | [bes(-. bes-. bes-. bes-.]
    | [bes-. bes-. bes-. )bes-.]
    | [bes(-. bes-. bes-. )bes-.]
    | [es,-. es( f )g]
    | [f(-. f-. f-. )f-.]
    | bes4 r
    | r f'
    | bes bes,

% 130
    | r f'
    | bes, bes'
    | R2
    | r4 bes
    | R2
    | r4 bes
    | R2
    | r4 [a8( )bes]
    | r4 [a8( )bes]
    | r4 [ces8( )bes]
    | < { R2 } \context Voice=x { s4 s4^\fermata } >

% 140
    | [es,8(-\p )g] r4
    | [as,8( )c] r4
    | [bes8( )as' as-. as-.]
    | as4( )g8 r
    | [es8( )g] r4
    | [as,8( )c] r4
    | [bes8-. bes-. bes-. bes-.]
    | bes4( )es,8 r
    | es'4-\f bes
    | es, r

% 150
    | R2*2
    | es4-\f bes'
    | es r8 es
    | [d g es f]
    | [bes f] bes, r
    | r4 [e8(-\p )g]
    | [bes( )as! d,(-\fp )f]
    | [as( )g] r4
    | [g,8-\f g g g]

% 160
    | < { as2 ~ } \context Voice=x { s4 s8 \lowerText s8_\decresc } >
      \noBreak
    | as2 ~
    | as4( a
    | \lowerDynamics )bes-\p \restoreDynamics r
    | bes r
    | R2
    | [es8( )g] r4
    | [as,8( )c] r4
    | [bes8( )as' as-. as-.]
    | as4( )g8 r

% 170
    | es4-\f bes
    | es, r8 g'
    | [as as bes bes,]
    | [es bes es,] r
    | [es8-\f es'-\p es es]
    | [es es es es]
    | [es es es es]
    | [es es des des]
    | [c,-\f c'-\p c c]
    | [c c c c]

% 180
    | [c c c c]
    | [c c cis cis]
    | [d,-\f d'-\p d d]
    | [d d d d]
    | [d d d d]
    | [d d d d]
    | [g,-\f bes' bes bes]
    | [a a a a]
    | [d, d d d]
    | [g g g g]

% 190
    | [bes bes bes bes]
    | [c c c c]
    | [c, c c c]
    | [f f f f]
    | [as,! as as as]
    | bes4-\p r
    | d r
    | es r
    | g r
    | r8 [as,-\f as' as]

% 200
    | [as( )bes] c4
    | bes r8 as8(
    | [)g es-. c'-. as-.]
    | bes4 r8 as(
    | [)g es-. c'-. as-.]
    | bes4 [bes,8-. bes-.]
    | bes4 r
    | es2(-\p
    | )bes
    | [c8-.-\f c-.] c4-\p ~

% 210
    | c( )bes
    | as8 r g r
    | f r es r
    | [bes'-.-\f bes-.] bes4-\p ~
    | bes2
    | es'2(
    | )bes
    | [c8-.-\f c-.] c4-\p ~
    | c( )bes
    | as8 r g r

% 220
    | as r bes r
    | es,4 r
    | R2
    | es2(
    | )bes
    | f(
    | )c
    | as'8 r g r
    | f r es r
    | bes'2 ~

% 230
    | bes
    | es
    | bes4( )es,
    | as( f
    | d )es
    | as8 r g r
    | as r bes r
    | es4-\f r
    | bes r
    | es, r

% 240
    | bes' r
    | es r
    | bes r
    | es, r
    | bes' r
    | [es8 es es es]
    | [g g g g]
    | [as as as as]
    | [c, c c c]
    | [bes bes bes bes]

% 250
    | [bes bes bes bes]
    | es,4 r
    | g'-\p--^#'(italic "ten.") r
    | as-- r
    | a-- r
    | bes-- r
    | bes,-- r
    | [es8 es,(-.-\p es-. es-.]
    | [es-. es-. es-. )es-.]
    | [es(-. es-. es-. es-.]

% 260
    | [es-. es-. es-. )es-.]
    | [es(-. es-. es-. es-.]
    | [es-. es-. es-. )es-.]
    | [as-. as( bes )c]
    | [bes(-. bes-. bes-. )bes-.]
    | [es(-\sf g bes )g]
    | [es es'(-. es-. es-.]
    | [es-. es-. es-. )es-.]
    | [es(-. es-. es-. es-.]
    | [es-. es-. es-. )es-.]

% 270
    | [es(-. es-. es-. )es-.]
    | [as,-. as( bes )c]
    | [bes(-. bes-. bes-. )bes-.]
    | es,4 r
    | r bes'
    | es es,
    | r bes
    | es, es'
    | R2
    | r4 es

% 280
    | R2
    | r4 es
    | R2
    | r4 [dis'8( )e]
    | r4 [e8( )f]
    | r4 [cis8( )d]
    | r4 [d8( )es!]
    | r4 ces,
    | r bes
    | r ces

% 290
    | r bes
    | r4_#'(italic "ral") [a'8( )bes_#'(italic "-")]
    | r4_#'(italic "len") [a8( )bes_#'(italic "-")]
    | < { R2 } \context Voice=x { s4 s4^\fermata } >
    | r4_#'(italic "tan") [ces8( )bes_#'(italic "-")]
    | r4_#'(italic "do") [ces,8( )bes]
    | < { R2 } \context Voice=x { s4 s4^\fermata } >
    | [es8(-\p )g] r4
    | [as,8( )c] r4
    | [bes8( )as' as-. as-.]

% 300
    | as4( )g8 r
    | [es8( )g] r4
    | [as,8( )c] r4
    | [bes8-. bes-. bes-. bes-.]
    | bes4( )es,8 r
    | [es'8( )g] r4
    | [as,8( )c] r4
    | [bes8( )as' as-. as-.]
    | as4( )g8 r
    | [es8( )g] r4

% 310
    | [as,8( )c] r4
    | [bes8 bes bes bes]
    | [es, es' es es]
    | [es es es es]
    | [es es es es]
    | [es es es es]
    | [es es es es]
    | [es es es es]
    | [es es es es]
    | [es es es es]

% 320
    | [es es es es]
    | [es es es es]
    | [es es es es]
    | [es es es es]
    | [es es, es es]
    | [es es es es]
    | [es es es es]
    | [es es es es]
    | es4 r
    | bes''2(

% 330
    | )es8 r r4
    | bes,2(
    | )es8 r r4
    | [d,8( )f as-. as-.]
    | g r r4
    | R2*4
    | bes8-\f r r4

% 340
    | es8 r r4
    | bes8 r r4
    | es,8 r r4
}
