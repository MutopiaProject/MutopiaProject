violaThirdMov = \notes \relative bes {
    \key es \major
    \clef alto

    \noTupletBracket

    \once \property Voice.TextScript \override #'extra-offset =
      #'(-1.0 . 0.0) bes4-\parentP ~ bes8-\sf r \grace { \cue bes16 }
      [as8-.-\p g-.] r4
    | r2 es4-\f f
    | [bes8-.-\p es-.] r4 r8 g,( )as4
    | r8 [f( g )es] c r f r

% 5
    | es4 r bes''4 ~ bes8-\sf r
    | \grace { \cue bes16 } [as8-.-\p g-.] r4 r2
    | r16 [c, c c] r [b b b] r [c c c] r [as as as]
    | r [g( )c c] r [d( )b b] r [b( c \LowerText )bes_\cresc]
      \restoreText [a( c a )f]
    | r [bes-\p bes bes] r [a a( )c] r [d d d] r [es( )c c]

% 10
    | r [bes bes( )d] r [a a( )c] r [e e e_\cresc] r [f f f]
    | r [g( )f f] r [bes,(-\f a )bes] c4(-\p )des
    | c'( )bes a,( )bes
    | \lowerDynamics es,(-\f \restoreDynamics )e [f16 f'-\p f8.] [f16
      f8] ~
    | [f16 f] \lowerText f4(_\cresc \restoreText [e16 )es] \raiseSlur
      [d(-.-\p d-. d-. d-.] [d-. d-. d-. )d-.]

% 15
    | [des(-. des-. des-. )des-.] [c(-. c-. c-. )c-.]
      [c(-. c-. c-. )c-.] [c(-. c-. c-. )c-.]
    | [ces(-. ces-. ces-. )ces-.] [bes(-. bes-. bes-. )bes-.] bes8 r
      % The last note is probably `c', not `ces' (see also bar #38)
      \restoreSlur [a16.( bes32 )c16] r
    | [bes16.( c32 )d16] r c r c r \raiseSlur [bes bes'(-. bes-. bes-.]
      [bes-. bes-. bes-. )bes-.]
    | [bes(-. bes-. bes-. )bes-.] [bes(-. bes-. bes-. )bes-.]
      [bes(-. bes-. a-. )a-.] [as(-. as-. as-. )as-.] 
    | [as(-. as-. as-. )as-.] [as(-. as-. as-. )as-.]
      [as(-. as-. g-. )g-.] \restoreSlur [c,16.( bes32 )a16] r32 a

% 20
    | [d16.( c32 )bes16] r32 bes bes16 r a r bes8 r r [f'32( e f es]
    | )d16 r [g32( fis g f] )es16 r c r r32 \stemUp [bes32( d bes] [d
      bes d )bes] r \lowerDynamics [g(-\sf d' g,] [d' g, d' )g,]
    | r [g(-\p c g] [c g c )bes] r [a( c a] [c a c )f,] r [f( d' bes]
      [d bes d )bes] r [g(-\sf d' g,] [d' g, d' )g,]
    | r [g(-\p \restoreDynamics c g] [c g c )g] r [a( c a] [c a c )f,]
      [f( d f )d] \stemBoth es16 r [d32-. d( f )d] es16 r
    | [d32( c es d] )f16 r [bes32( a c bes] )d16 r d4(_\cresc [es8 )f]

% 25
    | bes,4-\p ~ bes8-\sf r \grace { \cue bes16 }
      [as8-.-\p g-.] r4
    | r2 es4-\f f
    | [bes8-.-\p es-.] r4 r r8 bes'(
    | \lowerText [g_\cresc e des )bes] \lowerDynamics
      [as(-\p \restoreDynamics )e] r4
    | r16 [f'16 f f] r [e e e] r [f f f] r [des des des]

% 30
    | r [c c c] r [bes bes bes] r [bes( )as_\cresc \restoreText as] ~
      [as( f d )f]
    | r [g-\p g g] r [f f f] r [g g g] r [as'( )f f]
    | r [es es( )g] r [d d( )f] r [ges ges ges] r [ges_\cresc ges ges]
    | r [ges ges ges] r [es(-\f d )es] f4(-\p )ges
    | as( )ges d( )es

% 35
    | as,-\f [a8( )c] f, r r16 [bes-\p bes8] ~
    | [bes16 bes'_\cresc] bes4( [a16 )as] \raiseSlur
      [g(-. g-. g-. )g-.] [g(-. g-. g-. )g-.]
    | [ges(-. ges-. ges-. )ges-.] [f(-. f-. f-. )f-.]
      [f(-. f-. f-. )f-.] [f(-. f-. f-. )f-.]
    | [fes(-. fes-. fes-. )fes-.] [es(-. es-. es-. )es-.] \restoreSlur
      es8 r [d16.( es32 )f16] r
    | [es16.( f32 )g!16] r f r f r \raiseSlur [es(-. es-. es-. )es-.]
      [es(-. es-. es-. )es-.]

% 40
    | [es-. es-. es-. es-.] % There is no slur here
      [es(-. es-. es-. )es-.] [es(-. es-. d-. )d-.]
      [des(-. des-. des-. )des-.]
    | [des(-. des-. des-. )des-.] [des(-. des-. des-. )des-.]
      [des(-. des-. c-. )c-.] \restoreSlur [f16.( es32 )d16] r32 d
    | [g16.( f32 )es16] r32 es es16 r d r es8 r r [bes'32( a bes as]
    | )g16 r [c32( b c bes] )as16 r f r r32 \stemDown [es( g es] [g es
      g )es] r [bes( g' bes,] [g' bes, g' )bes,]
    | r [c(-\p f c] [f c f )c] r [d( f d] [f d f )as,] r \stemUp [g(
      es' g,] [es' g, es' )g,] r \lowerDynamics [g(-\sf bes g] [bes g
      bes )g]

% 45
    | r [as(-\p \restoreDynamics c as] [c as c )as] r [f( as f] [d f
      as )f] \stemBoth [es( g bes )g] as16 r [g32( bes es )g] as16 r
    | [g,32( f as )g] bes16 r [es32( d f es] )g16 r [g32( f as g]
      )bes16 r r4
    | r8 g,8( )as4 r8 [f( g )es]
    | c r f r es4 r
    | r16 [c'16( d e] )f8 r r16 [d( es )f] [g8 es]

% 50
    | c r f r [es16(-\sf bes es )g] bes4 ~
    | [bes16-\sf bes( g )es] [bes8.( )as16] g4 r
    | es-\f f [bes8-.-\p es] r4
    | \grace { \cue bes16( } \lowerText \raiseBeam [)as8_#'(columns
      (dynamic "pp") (italic " staccato")) \grace { \cue bes16( } )as8
      \grace { \cue bes16( } )as8 as(] )g8 r r4
}
