violinIISecondMov = \notes \relative a' {
    \key f \major
    \clef violin

    \noTupletBracket

    \lowerDynamics a4(-\p c,4. )e8
    | g4( [)f8 \LowerText f(-\cresc e )es]
    | d-\f f4( bes )d8
    | [c8(-\p \raiseScript bes16-\trill a32 )bes] a4 r
    | f( e! )es ~
    | es( [d8 e] )f4
    | d( c )e
    | < { [f8.( )g16] }
	\context Voice=x { s8 \raiseScript s8^\turn } >
      a4 r
    | c4.-\cresc \raiseSlur [c8(-. c-. )c-.]

% 10
    | c4-\f r8 bes4( )a8
    | [d8.( )bes16] a4.(-\p [bes16 )g]
    | [g( f e )f] c4-\p ~ [c16( cis d )bes]
    | [a8 a' a a a a]
    | g2.:8
    | [c8 c c c b b]
    | c2.:8
    | c2.:8
    | c2.:8
    | c,2.:8

% 20
    | [b8( d16 c] [e8 )d] r8 \LowerText [e16(-\cresc d] \noBreak
    | [f8 )e] r [f16( e] [g8 )f]
    | r8 \lowerDynamics [g16(-\f fis] [a8 g f )e]
    | d4 r r
    | [f8-\p f] f r r4
    | [f8 f] f r r4
    | R2.
    | g,2-\pp r4
    | c'4 \raiseSlur [c8(-. c-. c-. )c-.]
    | c4( )b r

% 30
    | bes!4.-\cresc \raiseSlur [e8(-. e-. )e-.]
    | <bes4-\f g'> <a f'> r
    | <a-\p c> \raiseSlur [<a8-. c(> <a-. c> <a-. c> <a-. )c>]
    | <as4 c> \raiseSlur [<as8-. c(> <as-. c> <as-. c> <as-. )c>]
    | d,4( e )f
    | e8-. \lowerDynamics [c(-\f cis d es )e]
    | [f c'-\p c c c c]
    | c( g'4-\cresc [fis8 f )e]
    | r [c-\p c c b b]
    | c2.

% 40
    | b-\cresc
    | bes!2( )a4 ~
    | a e2
    | \lowerDynamics f4(-\f a, )g
    | g2 r4
    | [a'16.(-\p )f32 a16.( )f32] c4.( )e8
    | g4( [)f8 \LowerText f(-\cresc e )es]
    | \slurStemToHead d(-\f f4 bes )d8 ~
    | [d16(-\p cis c )bes] a4 r
    | f( e )es ~

% 50
    | [es8( )d] e!4( )f
    | d( c )e
    | < { [f8.( )g16] }
	\context Voice=x { s8 \raiseScript s8^\turn } >
      a4 r
    | c4. \raiseSlur [c8(-.-\cresc c-. )c-.]
    | c4-\f r8 bes4( )a8
    | [d8.( )bes16] [a16 f'(-.-\p e-. d-.] [c-. bes-. a-. )g-.]
    | [g( f e )f] [c a'(-.-\p g-. f-.] [e-. d-. c-. )bes-.]
    | [a8-\f a a a f' f]
    | f2.:8-\p

% 60
    | f2.:8
    | fis2.:8-\f
    | g2.:8-\p
    | g2.:8
    | [f!8 f f a a a]
    | \lowerText [f8 f-\cresc f f f f]
    | [f( )g g g g g]
    | g2.:8
    | [g8 g g b-\f b b]
    | [c( )g] r8 \lowerDynamics [g16(-\p fis] [a8 )g]
    | [bes!( )a] r \lowerText [a16(-\cresc gis] [bes8 )a]

% 70
    | [c( )bes] r [bes16( a] [c8 )bes]
    | [d( c b \lowerDynamics bes-\f a )as]
    | g4 r r
    | [bes8-\p bes] bes r r4
    | [bes8 bes] bes r r4
    | R2.
    | c,2-\pp r4
    | f'4 \raiseSlur [f8(-. f-. f-. )f-.]
    | f4( )e r
    | es4. \raiseSlur [a8(-.-\cresc a-. )a-.]

% 80
    | <es4-\f c'> <d bes'> r
    | <d,-\p f> \raiseSlur [<d8-. f(> <d-. f> <d-. f> <d-. )f>]
    | <des4-\p f> \raiseSlur [<des8-. f(> <des-. f> <des-. f> <des-. )f>]
    | g,4( a )bes-\fp
    | a r r
    | R2.
    | bes4-\pp \raiseSlur [bes8(-. bes-. bes-. )bes-.]
    | bes4( )a r
    | c2 r4
    | c' \raiseSlur [c8(-.-\cresc c-. c-. )c-.]

% 90
    | c4-\f bes2 ~
    | bes4 as2 ~
    | as8 g4 \raiseSlur [g8(-. g-. )g-.]
    | g( )f4 \raiseSlur [f8(-. f-. )f-.]
    | g4-\p \raiseSlur [g8(-. g-. g-. )g-.]
    | g4-\sf \raiseSlur [g8(-.-\p )g-.] as4-\sf
    | \raiseSlur \lowerDynamics [as8(-.-\p )as-.] a4( \lowerDynamics
      )e-\fp
    | [f8-. \lowerDynamics f(-\f fis g as )a]
    | [bes f-\p f f f f]
    | \slurStemToStem f( c'4-\cresc [b8 bes )a]

% 100
    | r [f-\p f f e e]
    | [f \lowerDynamics c16(-\p b] [d8 )c] r c
    | r [c16( b] [d8 )c] r c
    | r [f16( e] [g8 )f] r f
    | r [c16( b] [d8 )c] r c
    | r [c16( b] [d8 )c] r c
    | r [c'16( b] [d8 )c] r c
    | r [f16(-\cresc e] [g8 )f] r f
    | r [c16( b] [d8 )c] r bes
    | a4:16 a4:16 a4:16

% 110
    | [bes16( )f f-. f-.] [f( )e e-. e-.] [f( )es es-. es-.]
    | d4:16 e!4:16 f4:16
    | des4:16 c4:16 bes4:16
    | a4:16-\pp a4:16 a4:16
    | a2 r4 \bar "|."
}
