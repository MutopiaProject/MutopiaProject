violinIIThirdMov = \notes \relative es' {
    \key es \major
    \clef violin

    \noTupletBracket

    \once \property Voice.TextScript \override #'extra-offset =
      #'(-1.0 . -0.5) es4(-\parentP [)f8-\sf \rbcOne r16. es32-\p]
      \grace { \cue es16 } [d8-. es-.] r4
    | r2 g,4-\f bes
    | [es16.^\trill-\p f32 g8] r4 r8 e( )f4
    | r8 [d( es! )bes] c r as r

% 5
    | g4 r es''4( [)f8-\sf \rbcOne r16. es32]
    | \grace { \cue es16 } [d8-. es-.] r4 r2
    | r16 [es, es es] r [d d d] r [es( )g g] r [as( )d, d]
    | r [es( )g g] r [f f f] r [f( )es \lowerText es_\cresc]
      \restoreText ~ [es es( c )a]
    | r [d-\p d d] r [es( c )a'] r [bes bes bes] r [g g( )es]

% 10
    | r [d( )f f] r [c( )es es] r [des( )bes bes_\cresc] r [bes( )des
      des]
    | r [des des des] r [des'(-\f c )bes] a4( )bes
    | es( )des es,( )des
    | \lowerDynamics c(-\f )bes [a8 \rbcOne r16 bes(-\p]
      \restoreDynamics [)a8 \rbcOne r16 bes'(]
    | [)a8 \rbcOne r16 b(] )c8 r r4 \raiseSlur [f,16(-. f-. f-. )f-.]

% 15
    | [f(-. f-. f-. )f-.] [e(-. e-. e-. )e-.] [f(-. f-. f-. )f-.]
      [f(-. f-. es-. )es-.]
    | [es(-. es-. es-. )es-.] [d!(-. d-. d-. )d-.] \restoreSlur es8 r
      [c16.( d32 )es16] r
    | [d16.( es32 )f16] r es r es r [d d'(-. d-. d-.] [d-. d-. d-. )d-.]
    | \raiseSlur [des(-. des-. des-. )des-.] [c(-. c-. c-. )c-.]
      [c(-. c-. c-. )c-.] [c(-. c-. c-. )c-.]
    | [ces(-. ces-. ces-. )ces-.] [bes(-. bes-. bes-. )bes-.]
      [bes(-. bes-. bes-. )bes-.] \restoreSlur [es,16.( d32 )c!16] r32 c

% 20
    | [f16.( es32 )d16] r32 d g16 r es r d8 r [c'16.( bes32 )a16] r32 a
    | [d16.( c32 )bes16] r32 bes bes16 r es, r r32 [d( f d] [f d f )d]
      r \lowerDynamics [d(-\sf f d] [f d f )d]
    | r [es(-\p g es] [g es g )es] r [c( es c] [es c es )c] r [d( f d]
      [f d f )d] r [d(-\sf f d] [f d f )d]
    | r [es(-\p \restoreDynamics g es] [g es g )es] r [c( es c] [es c
      es )c] [d( f d )bes] a16 r [bes32( f' d )bes] a16 r
    | [bes32( a c bes] )d16 r [d32( c es d] )f16 r \LowerText
      bes,4(_\cresc \restoreText [c8 )d]

% 25
    | es4(-\p [)f8-\sf \rbcOne r16. es32-\p] \grace { \cue es16 }
      [d8-. es-.] r4
    | r2 g,4-\f bes
    | [es16.^\trill-\p f32 g8] r4 r r8 des'(
    | [bes_\cresc g e )des] [e'16.-\p^\trill f32 g8] r4
    | r16 [as, as as] r [g g g] r [as( )c c] r [bes( )g g]

% 30
    | r [as( )f f] r [g( )e e] r [e( f es_\cresc] [d as' f )d]
    | r [es-\p es es] r [d d d] r [es es es] r [c' c( )as]
    | r [g( )bes bes] r [f( )as as] r [a a a] r [bes_\cresc bes bes]
    | r [c( )bes bes] r [ges'(-\f f )es] d4(-\p )es
    | f( )es as,( )ges

% 35
    | f(-\f )es [d8 \rbcOne r16 es(-\p] [)d8 \rbcOne r16 es'(]
    | [)d8 \rbcOne r16 e(] )f8 r r4 \raiseSlur
      [bes,16(-. bes-. bes-. )bes-.]
    | [bes(-. bes-. bes-. )bes-.] [a(-. a-. a-. )a-.]
      [bes(-. bes-. bes-. )bes-.] [bes(-. bes-. as-. )as-.]
    | [as(-. as-. as-. )as-.] [g(-. g-. g-. )g-.] \restoreSlur as8 r
      [f16.( g32 )as16] r
    | [g16.( as32 )bes16] r as r as r \raiseSlur [g(-. g-. g-. )g-.]
      [g(-. g-. g-. )g-.]

% 40
    | [ges(-. ges-. ges-. )ges-.] [f(-. f-. f-. )f-.]
      [f(-. f-. f-. )f-.] [f(-. f-. f-. )f-.]
    | [fes(-. fes-. fes-. )fes-.]  [es(-.  es-.  es-. ) es-.]  [es(-.
      es-.  es-. ) es-.] \restoreSlur [as16.( g32 )f16] r32 f
    | [bes16.( as32 )g16] r32 g c16 r as r g8 r [f'16.( es32 )d16]
      r32 d
    | [g16.( f32 )es16] r32 es es16 r as, r r32 [g( bes g] [bes g bes
      )g] r [g(-\sf bes g] [bes g bes )g]
    | r [as(-\p c as] [c as c )as] r [f( as f] [as f as )f] r [es( g
      es] [g es g )es] r \lowerDynamics [bes(-\sf des bes] [des bes
      des )bes]

% 45
    | r [c(-\p \restoreDynamics f c] [f c f )c] r [d!( f d] [bes as bes
      )as] [g( es' g )es] d16 r [es32( g bes )es] d16 r
    | [es,32( d f es] )g16 r [g32( f as g] )bes16 r [bes32( as c bes]
      )des16 r r4
    | r8 e,8( )f4 r8 [d( es )bes]
    | c r as r g4 r
    | r16 [e'( f g] )as8 r r16 [bes( c )d] [es!8 bes]

% 50
    | c r as r g r16 bes( [es g f )d]
    | es8 r16 g,,( [es' g f )d] es4 r
    | g,4-\f bes [es16.-\p^\trill f32 g8] r4
    | \grace { \cue es16( } \lowerText \raiseBeam [)d8_#'(columns
      (dynamic "pp") (italic " staccato")) \grace { \cue es16( } )d8
      \grace { \cue es16( } )d8 d(] )es8 r r4
}
