celloThirdMov = \notes \relative es {
    \key es \major
    \clef bass

    \noTupletBracket

    \once \property Voice.TextScript \override #'extra-offset =
      #'(-1.0 . 0.0) es4(-\parentP [)d8-\sf \rbcOne r16. es32]
      [bes8-. es,-.] r4
    | r2 c'4-\f d
    | [es8-\p es,] r4 r8 bes'( )as4
    | r8 as( )g4 as8 r bes r

% 5
    | es,4 r es''( [)d8-\sf \rbcOne r16. es32]
    | [bes8-. es,-.] r4 r2
    | c8 r c r c r f r
    | g r g, r c4_\cresc f
    | bes,8-\p r bes r bes r es4(

% 10
    | f fis g_\cresc )f
    | [e8( f] )ges4-\f [f8.(-\p ges32 )f] [es( des c bes] [a bes des
      )bes]
    | a4( )bes [f'8.( e32 )f] [ges( f es des] [c bes des )bes]
    | a4(-\f )g f8 r r4
    | r4 r16 [f'(_\cresc g )a] \raiseSlur [bes16(-.-\p
      bes-. bes-. bes-.] [bes-. bes-. bes-. )bes-.]

% 15
    | [bes(-. bes-. bes-. )bes-.] [bes(-. bes-. bes-. )bes-.]
      [a(-. a-. a-. )a-.] [as(-. as-. as-. )as-.]
    | [as(-. as-. as-. )as-.] [as(-. as-. as-. )as-.] \restoreSlur g8 r r4
    | bes,8 r es16 r f r bes,4 r
    | g''4. [f32( e d )c] [c8( )f] r4
    | f4. [es!32( d c )bes] [bes8( )es16] r f,8 r

% 20
    | bes, r es16 r f r g8 r [c,32( d es e] )f16 r
    | [d32( es! f fis] )g16 r es r f r [bes bes bes bes] [g-\sf g g g]
    | [es-\p es es es] [f f f f] [bes, bes bes bes] [g-\sf g g g]
    | [es-\p es es es] [f f f f] bes r f r bes r f r
    | bes8 r bes r bes2_\cresc

% 25
    | es4(-\p [)d8-\sf \rbcOne r16. es32] [bes8-. es,-.] r4
    | r2 c'4-\f d
    | [es8-\p es,] r \slurStemToHead g( [bes es_\cresc g )bes]
    | \slurDefToDef [des-.-\p des,-.] r4 [c8-. c,-.] r4
    | f'8 r f r f r bes, r

% 30
    | c r c r f,4(_\cresc )bes
    | es,8-\p r es r es r as'4(
    | bes b c )bes_\cresc
    | [a8( bes] )ces4-\f [bes8.(-\p ces32 bes] [as ges f es] [d es ges
      )es]
    | d4( )es [bes'8.( a32 )bes] [ces( bes as ges] [f es ges )es]

% 35
    | d4(-\f )c [bes16-. bes-.-\p bes8] r4
    | r4 r16 [bes'(_\cresc c )d] \raiseSlur [es(-.-\p es-. es-. )es-.]
      [es(-. es-. es-. )es-.]
    | [es(-. es-. es-. )es-.] [es(-. es-. es-. )es-.]
      [d(-. d-. d-. )d-.] [des(-. des-. des-. )des-.]
    | [des(-. des-. des-. )des-.] [des(-. des-. des-. )des-.] c8 r bes r
    | es, r as16 r bes r es,4 r

% 40
    | c'4. [bes32( a g )f] [f8( )bes] r4
    | bes4. [as!32( g f )es] [es8( )as16] r bes,8 r
    | es, r as16 r bes r c8 r [f32( g as a] )bes16 r
    | [g32( as! bes b] )c16 r as r bes r [es, es es es] [c-\sf c c c]
    | [as-\p as as as] [bes bes bes( )b] [c c c c] [bes-\sf bes bes bes]

% 45
    | [as-\p as as as] [bes bes bes bes] es, r bes' r es r bes' r
    | es,8 r es r es r r4
    | r8 bes( )as4 r8 as( )g4
    | as8 r bes r c4 r
    | r2 r16 [bes'( a )as] g4

% 50
    | as8 r bes r es,4 r8 bes'
    | es4 r8 bes,8 es4 r
    | c,-\f d [es8-.-\p es'-.] r4
    | [bes8_#'(columns (dynamic "pp") (italic " staccato")) bes bes
      bes(] )es r8 r4
}
