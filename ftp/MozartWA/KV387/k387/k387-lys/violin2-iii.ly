violinIIThirdMov = \notes\relative c' {
    \property Voice.TupletBracket \set #'bracket-visibility = ##f

    r4
    | r8 <g4-\p e'> <g e'> <g8 e'>
    | r <g4-#'(italic "cresc.") e'> <g e'> <g8 e'>
    | r <g4 e'> <g( e'> )g'8
    | b4(-\f [)c8 g(-\p f )e]
    | [e8.( g32 f] [)e8 \raiseSlur c(-. c-. )c-.] \restoreSlur
    | [c8.( e32 d] [)c8 \raiseSlur c(-.-\p c-. )c-.] \restoreSlur
    | [c8.( e32 )d] c4 r
    | a4.( b8 )c4 ~
    | c [b8.( a16] [g8. )a16]
% 10
    | bes4( )a8 \raiseSlur [f''(-.-#'(italic "cresc.") f-. )f-.]
      \restoreSlur
    | [g16( f e )d] [c( b! a g] [a c b )d]
    | [c8(-\f )g] r [c,( e )c']
    | c8-\p r c r b r
    | c r r4 \times 4/6 { r16 [e, f] [g a b] }
    | c2.-\fp
    | d2.-\fp
    | c4 ~ [c16.( )b32 a16.( )g32] [fis8( )a]
    | a4( [)g8 b,( d )f!]
    | <g,8 e'> r r4 g'8-\p r
% 20
    | g r r4 g8 r
    | fis8 r c' r <fis, a> r
    | r [d(-\sf )g g-.-\p g-. g-.]
    | r [es(-\sf )g g-.-\p g-. g-.]
    | es r r4 c8 r
    | bes4 r8 \raiseSlur [d'8(-. d-. )d-.] \restoreSlur
    | \times 4/6 { [d16( cis a d cis a] } \times 4/6 { [d c a d c a] }
      \times 4/6 { [bes d c bes a )g] }
    | [fis8( )a] r fis [g8.( a32 )bes]
    | a8( fis4 d )d'8
    | \times 4/6 { [d16(-\f cis a d cis a] } \times 4/6 { [d c a d c a] }
      \times 4/6 { [bes d c bes a )g] }
% 30
    | [cis8.(-\trill )d16] d,4 r
    | r8 d4-\p d d8
    | r c4 c c8
    | r c4 e e8
    | r r4 \lowerText [d8(-#'(italic "cresc.") \restoreText fis )a]
    | r b r c r b
    | <d,2.-\fp c'>
    | r8 [d'8(-\p )c16] r [c8( )b16] r b8(
    | )a16 r r8 r4 r
    | [f!8(-. f-. es-. es-. d-. )d-.]
% 40
    | [cis(-. cis-. c-. c-. b-. )b-.]
    | r g' r g r d
    | [d-. fis16.( g64 a] )g8 [c16.( d64 e] )d8 r
    | r4 r8 [c,16.( d64 e] )f!4(
    | )e( )d8 [d'16.( e64 fis] )g4
    | e8 r d r c r
    | b r r [g'16.( fis64 e] )d4 ~
    | [d8 g16.( fis64 )e] d4 ~ \times 2/3 { [d16 c b] } \grace { \cue
      b16 \noCue } \times 2/3 { [a16 g a] }
    % In the Breitkopf & Haertel edition, the following three bars
    % end with a `r16. x16' rythm, which is obviously wrong.  I chose
    % the `r16. x32' rythm over the `r16 x16' because it seems me more
    % suitable to the context.  Also, this is the solution chosen by
    % the Quartetto Italiano in the Philips 8-CD set `Mozart String
    % Quartets'.
    | g8 r b-\p r r r16. d,32
    | d8 r d' r r r16. d,32
% 50
    | es8 r c' r r r16. g32
    | f!8 r f'! r r4
    | r8 <g,,4-\p e'> <g e'> <g8 e'>
    | r <g4-#'(italic "cresc.") e'> <g e'> <g8 e'>
    | r <g4 e'> <g( e'> )g'8
    | b4(-\f [)c8 g(-\p f )e]
    | [e8.( g32 f] [)e8 \raiseSlur c(-. c-. )c-.] \restoreSlur
    | [c8.( e32 d] [)c8 \raiseSlur c(-.-\p c-. )c-.] \restoreSlur
    | [c8.( e32 )d] c4 r
    | r4 r8 \raiseSlur [c(-. c-. )c-.] \restoreSlur
% 60
    | [c( )b] bes4 r
    | r r8 \raiseSlur [bes(-. bes-. )bes-.] \restoreSlur
    | [bes( )a] as4 r
    | f'2.
    | ges
    | f
    | ges ~
    | ges ~
    | ges(
    | )fis-#'(italic "cresc.")
% 70
    | g4.-\f [b,8(-\p d )f!]
    | es4(-\f [)g8 c-\p] [c,( )es]
    | d4.-\f [b8(-\p d )f]
    | es4(-\f [)g8 c-\p] [c,( )es]
    | d4 r8 \raiseSlur [g'8(-. g-. )g-.] \restoreSlur
    | [g8( )a,] [a \raiseSlur f'8(-. f-. )f-.] \restoreSlur
    | [f8( )g,] [g \raiseSlur e'8(-. e-. )e-.] \restoreSlur
    | [e8( )f,] [f d'8( f )d]
    | r8 [g,(-\sf )c \raiseSlur c(-.-\p c-. )c-.] \restoreSlur
    % Here it is a `forte' instead of a `sforzato', unlike the
    % previous bar and bar 23.
    | r8 [as(-\f )c \raiseSlur c(-.-\p c-. )c-.] \restoreSlur
% 80
    | as8 r r4 f8-\p r
    | es4 r8 \raiseSlur [g(-. g-. )g-.] \restoreSlur
    | \times 4/6 { [g16( fis d g fis d] } \times 4/6 { [g f d g f d] }
      \times 4/6 { [es g f es d )c] }
    | [b8( )d] r b [c8.( d32 )es]
    |
    \context Staff <
        \context Voice { \stemUp d2( )es4 \stemBoth }
	\context Voice=x { \stemDown b2( )c4 \stemBoth }
    >
    | \times 4/6 { [g16(-\f fis d g fis d] } \times 4/6 { [g f d g f
      d] } \times 4/6 { [es g f es d )c] }
    | [fis8.(-\trill )g16] g,4 r
    | r8 g4-\p g g8
    | r c4 c( )cis8
    | r d4( )a a8
% 90
    | r \lowerText g4(-#'(italic "cresc.") \restoreText b )d8
    | r e-\p r f r e
    | <g,2.-\sf f'>
    | r8 [g''(-\p )f16] r [f8( )e16] r e8(
    | )d16 r r8 r4 r
    | \raiseSlur [bes8(-. bes-. as-. as-. g-. )g-.]
    | [fis(-. fis-. f-. f-. e-. )e-.] \restoreSlur
    | r a! r e r f
    | e-. [b'16.( c64 d] [)c8 d16.( e64 f] )e8 r
    | r4 r8 [g,,16.( a64 b] )c4-\p ~
    | [c8 f( )e-#'(italic "cresc.") bes'(] )a r
    | d-\p r c r b! r
    | c r r [c16.(^\f b64 a] )g4 ~
    | [g8 c16.( b64 a] )g4 ~ \times 2/3 { [g16 f e] } \grace { \cue
      e16 \noCue } \times 2/3 { [d16 c d] } \property Voice.TupletBracket
      \set #'number-visibility = #'if-no-beam
    | \times 4/6 { [c16 e-\p f] [g a b] } \times 4/6 { \RaiseSlur [c(
      e d] [c-\trill b )c] \restoreSlur } \times 4/6 { [b( d f] [a g
      )f] }
    | \times 4/6 { [e-. g( f] [)e e( d] } \times 4/6 { [)c b-. a-.]
      [g-. f-. e-.] } d4-\pp
    | d4( )c8 r r4
}



